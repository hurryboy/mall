package com.dbing.front.controller;

import com.dbing.common.pojo.HttpResult;
import com.dbing.common.pojo.TokenInfo;
import com.dbing.front.Cookies.CookieUtils;
import com.dbing.front.httpClient.HttpClientUtils;
import com.dbing.front.session.MySessionContext;
import com.dbing.manager.pojo.User;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private HttpClientUtils httpClientUtils;

    private static final ObjectMapper objectMapper = new ObjectMapper();


    /**
     * 跳转登录页面
     * @return
     */
    @RequestMapping("login")
    public ModelAndView toLogin(@RequestParam(value = "globalSessionId",required = false)String globalSessionId,
                                HttpSession session){
        session.setAttribute("globalSessionId",globalSessionId);
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }



    /**
     *user/dologin.html
     * 用户在子系统发起登陆请求
     */
    @RequestMapping(value = "user/dologin",method = RequestMethod.POST)
    public String dispatchLogin(@RequestParam("loginname") String username,
                              @RequestParam("nloginpwd") String nloginpwd,
                              HttpSession session, HttpServletRequest request,HttpServletResponse response){
        Map<String,Object> param = new HashMap<>();
        param.put("username",username);
        param.put("password",nloginpwd);
        param.put("globalSessionId",session.getAttribute("globalSessionId"));

        String token = httpClientUtils.doGetStr("http://www.sso.server/auth/login",param);
        if(token!=null){
            //登陆成功，返回令牌
            //校验令牌
            Map<String,Object> verifyParam = new HashMap<>();
            verifyParam.put("token",token);
            verifyParam.put("sysURL","http://www.dbing.front/");
            verifyParam.put("localSessionId",session.getId());
            HttpResult tokenResult = httpClientUtils.doGet("http://www.sso.server/auth/vertify",verifyParam);

            if(tokenResult.getContent()!=null){
                //令牌有效，设置本地会话为“登陆状态”
                session.setAttribute("isLogin","true");

                //---在子系统中设置Cookie保存令牌，以便购物车拿到用户信息，进行购物车的持久化
                String d = CookieUtils.getDomainName(request);
                CookieUtils.setCookie(request,response,"token",token);
                return "redirect:/index.html";
            }else {
                //令牌失效，重新登陆
                return "redirect:/login.html";
            }
        }
        //登陆失败
        return "redirect:/login.html?globalSessionId="+session.getAttribute("globalSessionId");
    }




    /**
     * 情景：
     *      ① 浏览器直接向子系统发起登出请求，
     *        销毁子系统局部会话，调用认证中心的登出接口，销毁全局会话，以及所有应用子系统的局部会话
     *      ② 认证中心向子系统发送登出请求，参数localSessionId,销毁本地会话
     * @return
     */
    @RequestMapping(value = "auth/logout",method = RequestMethod.GET)
    public String logout(@RequestParam(value = "localSessionId",required = false)String localSessionId,
                         HttpSession session,HttpServletRequest request,HttpServletResponse response){
        //销毁本地指定Session
        //Servlet2.1之后不支持SessionContext里面getSession(String id)方法
        //HttpSessionListener监听器和全局静态map自己实现一个SessionContext

        //有参数localSessionId,认证中心发起登出请求
        //否则，用户登出

        if(localSessionId==null) {

            HashMap<String, Object> param = new HashMap<>();
            param.put("globalSessionId", session.getAttribute("globalSessionId"));
            param.put("localSessionId",session.getId());

            httpClientUtils.doGet("http://www.sso.server/auth/logout", param);  //发起全局会话销毁
        } else {
            session = MySessionContext.getSession(localSessionId);  //局部会话销毁
        }
        session.removeAttribute("isLogin");    //局部会话改为“未登陆状态”

        //------删除保存在子系统中的令牌Cookie
        //该Cookie(Token)的值是redis缓存中的键，对应保存了登陆的用户信息
        //用于在登陆状态下操作购物车，获取UserId，持久化购物车
        CookieUtils.deleteCookie(request,response,"token");

        return "redirect:/login.html";
    }



    /**
     * 接受来自认证中心携带URL的重定向，
     * 向认证中心验证令牌有效性，
     * 建立局部会话
     * 重定向到受保护资源
     * @param returnURL
     * @param sysURL
     * @param token
     * @param session
     * @return
     */
    @RequestMapping("auth/check")
    public String checkToken(@RequestParam("returnURL") String returnURL,
                             @RequestParam("sysURL") String sysURL,
                             @RequestParam("token") String token,
                             HttpSession session,
                             HttpServletRequest request,
                             HttpServletResponse response,
                             String globalSessionId){
        try {
            //验证令牌有效性
            Map<String,Object> param = new HashMap<>();
            param.put("token",token);
            param.put("sysURL",sysURL);
            param.put("localSessionId",session.getId());
            HttpResult httpResult = httpClientUtils.doGet("http://www.sso.server/auth/vertify", param);
            String content = httpResult.getContent();

            //保存全局会话id，以便注销操作
            JavaType valueType = objectMapper.getTypeFactory().constructType(User.class);
            User userInfo = objectMapper.readValue(content,valueType);
            session.setAttribute("globalSessionId",globalSessionId);


            //令牌有效
            if(content!=null){
                //设置局部会话登陆状态
                session.setAttribute("isLogin","true");
                //保存令牌
                CookieUtils.setCookie(request,response,"token",token);
                //重定向到受保护资源
                return "redirect:"+returnURL;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //令牌无效，重定向到登陆页面
        return "redirect:/login.html";
    }


}

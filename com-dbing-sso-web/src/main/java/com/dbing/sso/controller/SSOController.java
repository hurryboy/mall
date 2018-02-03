package com.dbing.sso.controller;

import com.dbing.common.pojo.TokenInfo;
import com.dbing.manager.pojo.User;
import com.dbing.sso.service.RedisService;
import com.dbing.sso.service.TokenUtils;
import com.dbing.sso.service.UserService;
import com.dbing.sso.session.GlobalSessions;
import com.dbing.sso.utils.HttpClientUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class SSOController {

    @Autowired
    private TokenUtils tokenUtils;

    @Autowired
    private RedisService redisService;

    @Autowired
    private UserService userService;

    @Autowired
    private HttpClientUtils httpClientUtils;


    private static final ObjectMapper objectMapper = new ObjectMapper();


    /**
     * 主要接受来自应用系统的认证请求(sysURL有值)，
     * 也可以接受认证中心本身的认证请求(sysURL没有值)
     * @param sysURL  子系统地址
     * @param returnURL 访问受保护的子系统资源地址
     * @param session
     * @return
     */
    @RequestMapping(value = "/page/login")
    public String subSystemVerfiy(@RequestParam(value = "sysURL",required = false)String sysURL,
                                  @RequestParam(value = "returnURL",required = false) String returnURL,
                                  HttpSession session, HttpServletRequest request, HttpServletResponse response){

        try {
        if(session.getAttribute("isLogin")!=null){
            //检查用户和认证中心的会话状态
            if(StringUtils.equals(session.getAttribute("isLogin").toString(),"true")){
                //认证中心全局会话为"已登录"，重定向子系统，返回令牌

                return "redirect:"+sysURL+"/auth/check.html?sysURL="+sysURL+"&returnURL="+returnURL+"&token="+session.getAttribute("token")+"&globalSessionId="+session.getId();
                //request.getRequestDispatcher(sysURL+"/auth/check?returnURL="+returnURL+"&token="+session.getAttribute("token")).forward(request,response);
            }
        }

        //"未登陆",重定向子系统，登陆
        return "redirect:"+sysURL+"/login.html?globalSessionId="+session.getId();
            //request.getRequestDispatcher("redirect:"+sysURL+"login.html?globalSessionId="+session.getId()).forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "OK";
    }

    /**
     * 处理浏览器用户登录认证请求
     * @param username
     * @param password
     * @param sysURL
     * http://127.0.0.1:8084/auth/login
     * @return
     */
    @RequestMapping(value = "/auth/login",method = RequestMethod.GET)
    @ResponseBody
    public String ssoDoLogin(@RequestParam("username")String username,
                             @RequestParam("password")String password,
                             @RequestParam(value = "sysURL",required = false)String sysURL,
                             @RequestParam("globalSessionId")String globalSessionId){
        //用户和认证中心的会话
        HttpSession session = GlobalSessions.getSession(globalSessionId);

        try {
            User user = userService.getUser(username,password);
            //登陆成功
            if(user!=null){
                //创建令牌
                String token = UUID.randomUUID().toString();
                //设置全局会话状态为"已登陆"
                session.setAttribute("isLogin","true");
                session.setAttribute("token",token);

                //TokenInfo info = new TokenInfo(user.getId(),user.getUsername(),user.getPassword(),sysURL,session.getId());

                String jsonInfo = objectMapper.writeValueAsString(user);

                tokenUtils.setToken(token,jsonInfo);
                //返回令牌给子系统
                /*return "redirect:http://"+sysURL+"token="+token;*/
                return token;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //登陆失败,重新登陆
        return "redirect:"+sysURL+"login.html";
    }


    /**
     * 认证应用系统来的token是否有效，如有效，应用系统向认证中心注册，
     * 同时认证中心会返回该应用系统登录用户的相关信息，如ID,username等
     * @param token
     * @param systemURL
     * @return
     */
    @RequestMapping(value = "/auth/vertify",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<User> vertify(@RequestParam(value = "token")String token,
                                             @RequestParam(value = "sysURL")String systemURL,
                                             @RequestParam(value = "localSessionId")String localSessionId){

        String tokenInfoStr = tokenUtils.getToken(token);
        try {
            if(tokenInfoStr!=null){
                //令牌有效
                JavaType valueType = objectMapper.getTypeFactory().constructType(User.class);
                User userInfo = objectMapper.readValue(tokenInfoStr,valueType);

                //采用键值对形式保存子系统地址和局部SessionId,
                // 以便认证中心发送注销会话请求
                String urlKey = token+"_sysURL";

                redisService.hset(urlKey,localSessionId,systemURL,60*60);
                //返回令牌绑定的用户信息
                return ResponseEntity.status(HttpStatus.OK).body(userInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //异常
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    /**
     * 通知认证中心删除全局会话和其它已登录应用的本地会话
     * @return
     */
    @RequestMapping(value = "/auth/logout",method = RequestMethod.GET)
    @ResponseBody
    public String logout(@RequestParam(value = "globalSessionId") String globalSessionId,
                         @RequestParam(value = "localSessionId",required = false)String localSessionId){
        try {

            HttpSession session = GlobalSessions.getSession(globalSessionId);



            //发送删除本地会话
            String urlKey = session.getAttribute("token").toString()+"sysURL";

            if(localSessionId!=null){
                redisService.hdel(urlKey,localSessionId);
            }

            Map<String,String> urlMap = redisService.hget(urlKey);

            //删除全局会话
            session.removeAttribute("isLogin");
            //使用HttpClient注销所有子系统中的局部会话
            for (Map.Entry entry:urlMap.entrySet()){

                Map<String,Object> param = new HashMap<>();
                param.put("logout","true");
                param.put("localSessionId",entry.getKey());

                httpClientUtils.doGet("http://"+entry.getValue()+"/auth/logout",param);
            }

            return "success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "error";
    }


}

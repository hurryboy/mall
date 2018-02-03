package com.dbing.front.interceptor;

import com.dbing.front.httpClient.HttpClientUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登陆拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    private HttpClientUtils httpClientUtils;
    //String sysURL = "http://127.0.0.1:8082/";
    String sysURL = "http://www.dbing.front";


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String returnURI = request.getRequestURI();
        Object loginObj = session.getAttribute("isLogin");
        if (loginObj != null && loginObj.toString().equals("true")) {
            //局部会话状态，“已登陆”
            return true;
        }
        session.setAttribute("returnURL",sysURL + returnURI);
        //未登陆，重定向认证中心
        response.sendRedirect("http://www.sso.server/page/login?sysURL=" + sysURL + "&returnURL=" + sysURL + returnURI);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}

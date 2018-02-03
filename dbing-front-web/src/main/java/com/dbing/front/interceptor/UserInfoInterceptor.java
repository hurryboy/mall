package com.dbing.front.interceptor;

import com.dbing.front.Cookies.CookieUtils;
import com.dbing.front.Thread.UserThread;
import com.dbing.front.service.RedisServiceImpl;
import com.dbing.manager.pojo.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

public class UserInfoInterceptor implements HandlerInterceptor {

    @Autowired
    private RedisServiceImpl redisServiceImpl;

    private static final ObjectMapper objectMappper = new ObjectMapper();


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        User user = null;
        String tokenValue = CookieUtils.getCookieValue(request,"token",false);

        if(tokenValue!=null&&StringUtils.isNoneBlank(tokenValue)){
            //登陆状态，获取保存在缓存中的用户信息
            String jsonData = redisServiceImpl.get(tokenValue);
            user = objectMappper.readValue(jsonData,User.class);
        }else {
            //未登陆状态
            //保存购物车到缓存中，键保存在Cookie 中

            Boolean isFirst = true;
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies){
                if(StringUtils.equals(cookie.getName(),"cart")){
                    isFirst = false;
                    break;
                }
            }
            if(isFirst){
                //判断是否已经创建了cart的Cookie
                String cartKey = UUID.randomUUID().toString();
                CookieUtils.setCookie(request, response, "cart", cartKey);
            }

        }
        UserThread.setUser(user);

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}

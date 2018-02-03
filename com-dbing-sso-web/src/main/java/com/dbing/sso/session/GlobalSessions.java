package com.dbing.sso.session;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

public class GlobalSessions {
    //存放所有的全局Session
    private static HashMap<String,HttpSession> map = new HashMap<>();

    public static void addSession(String sessionId,HttpSession session){
        map.put(sessionId,session);
    }

    public static void deleteSession(String sessionId){
        map.remove(sessionId);
    }

    //获取指定全局Session
    public static HttpSession getSession(String sessionId){
        return map.get(sessionId);
    }


}

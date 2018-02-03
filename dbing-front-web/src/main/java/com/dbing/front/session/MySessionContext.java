package com.dbing.front.session;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

/**
 * 存取局部会话
 */
public class MySessionContext {

    private static HashMap<String,HttpSession> sessionMaps = new HashMap<>();

    public static synchronized void addSession(HttpSession session){
        if(session!=null){
            sessionMaps.put(session.getId(),session);
        }

    }

    public static synchronized void delSession(HttpSession session){
        if(session!=null){
            sessionMaps.remove(session.getId());
        }
    }

    public static synchronized HttpSession getSession(String sessionId){
        return sessionMaps.get(sessionId);
    }
}

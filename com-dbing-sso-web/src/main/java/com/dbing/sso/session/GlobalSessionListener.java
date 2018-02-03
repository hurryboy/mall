package com.dbing.sso.session;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 监听Session，实现SSO-Serve认证中心全局Session和SessionId的管理
 */
public class GlobalSessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

        String sessionId = httpSessionEvent.getSession().getId();
        HttpSession session = httpSessionEvent.getSession();

        GlobalSessions.addSession(sessionId,session);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        String sessionId = httpSessionEvent.getSession().getId();
        GlobalSessions.deleteSession(sessionId);
    }
}

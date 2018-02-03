package com.dbing.sso.utils;

import org.apache.http.conn.HttpClientConnectionManager;


/**
 * 清理连接池中无效连接
 */
public class IdleConnectionEvictor extends Thread{

    private final HttpClientConnectionManager connMgr;

    private volatile boolean shutdown;

    public IdleConnectionEvictor(HttpClientConnectionManager connMgr) {
        this.connMgr = connMgr;
    }

    @Override
    public void run() {
        try {
            //shutdown默认false,线程一直循环执行，直到bean执行Destroy-method
            while (!shutdown) {
                synchronized (this) {
                    wait(5000);
                    // 关闭失效的连接
                    connMgr.closeExpiredConnections();
                }
            }
        } catch (InterruptedException ex) {
            // 结束
        }
    }

    public void shutdown() {
        shutdown = true;
        synchronized (this) {
            notifyAll();
        }
    }
}

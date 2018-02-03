package com.dbing.common.pojo;


import java.io.Serializable;

//令牌对应Cache中的具体信息(key-value)
public class TokenInfo implements Serializable{

    private Long id;                  //登陆用户的id
    private String username;         //登陆用户名
    private String password;         //登陆用户密码
    private String ssoClient;       //向用户中心发送认证请求的应用系统
    private String globalSessionId; //本次登录成功用户和认证中心建立的全局会话Id

    public TokenInfo() {
    }

    public TokenInfo(Long id, String username, String password, String ssoClient, String globalSessionId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.ssoClient = ssoClient;
        this.globalSessionId = globalSessionId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSsoClient() {
        return ssoClient;
    }

    public void setSsoClient(String ssoClient) {
        this.ssoClient = ssoClient;
    }

    public String getGlobalSessionId() {
        return globalSessionId;
    }

    public void setGlobalSessionId(String globalSessionId) {
        this.globalSessionId = globalSessionId;
    }
}

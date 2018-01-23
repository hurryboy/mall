package com.dbing.common.pojo;

/**
 * HttpClient请求统一返回结果格式
 */
public class HttpResult {

    //响应状态码
    private Integer statusCode;
    //响应内容
    private String content;

    public HttpResult() {
    }

    public HttpResult(Integer statusCode, String content) {
        this.statusCode = statusCode;
        this.content = content;
    }

    public Integer getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}

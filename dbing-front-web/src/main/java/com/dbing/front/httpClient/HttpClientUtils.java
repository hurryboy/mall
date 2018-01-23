package com.dbing.front.httpClient;

import com.dbing.common.pojo.HttpResult;
import org.apache.http.HttpStatus;
import org.apache.http.ParseException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class HttpClientUtils {

    @Autowired
    private CloseableHttpClient httpClient;

    @Autowired
    private RequestConfig requestConfig;

    /**
     * 无参的get请求
     * @param url
     * @return
     * @throws Exception
     */
    public HttpResult doGet(String url)throws Exception{
        return doGet(url,null);
    }
    /**
     * 带参数的get请求
     * @param url
     * @param param
     * @return
     * @throws Exception
     */
    public HttpResult doGet(String url, Map<String,Object> param) throws Exception {
        //1.定义请求参数
        URIBuilder uriBuilder = new URIBuilder(url);
        if(param!=null){
            for (Map.Entry<String,Object> entry:param.entrySet()){
                uriBuilder.setParameter(entry.getKey(),entry.getValue().toString());
            }
        }
        URI uri = uriBuilder.build();
        //2.创建请求
        HttpGet doGet = new HttpGet(uri);
        //3.设置请求配置信息
        doGet.setConfig(requestConfig);
        //4.执行请求
        CloseableHttpResponse response = null;
        try {
            response = httpClient.execute(doGet);
            //判断响应返回状态码
            if(response.getStatusLine().getStatusCode()==200){
                return new HttpResult(response.getStatusLine().getStatusCode(),EntityUtils.toString(response.getEntity(),"UTF-8"));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(response!=null){
                response.close();
            }
        }
        return new HttpResult(HttpStatus.SC_INTERNAL_SERVER_ERROR,null);
    }
    /**
     * 不带参数的Post请求
     * @param url
     * @return
     * @throws Exception
     */
    public HttpResult doPost(String url) throws Exception {
        return doPost(url,null);
    }

    /**
     * 带参数的post请求
     * @param url
     * @param param
     * @return
     * @throws Exception
     */
    public HttpResult doPost(String url,Map<String,Object> param) throws Exception {
        //1.定义请求参数
        //相当于input
        List<BasicNameValuePair> list = new ArrayList<>();
        if(param!=null){
            for (Map.Entry<String,Object> entry:param.entrySet()){
                list.add(new BasicNameValuePair(entry.getKey(),entry.getValue().toString()));
            }
        }
        //构建form表单实体
        UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(list,"utf8");
        //2.创建post请求
        HttpPost doPost = new HttpPost();
        //设置请求参数实体
        doPost.setEntity(formEntity);
        //3.设置请求配置信息
        doPost.setConfig(requestConfig);

        //4.执行请求
        CloseableHttpResponse response = null;
        try {
            response = httpClient.execute(doPost);
            if(response!=null){
                return new HttpResult(response.getStatusLine().getStatusCode(),
                        EntityUtils.toString(response.getEntity(),"utf-8"));
            }
        } finally {
            if (response!=null){
                response.close();
            }
        }
        return new HttpResult(HttpStatus.SC_INTERNAL_SERVER_ERROR,null);
    }
}

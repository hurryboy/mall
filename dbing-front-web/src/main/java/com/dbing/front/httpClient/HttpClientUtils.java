package com.dbing.front.httpClient;


//cc47   a212
import com.dbing.common.pojo.HttpResult;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.*;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
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

//--8625
//bbd9
//--8b83

@Service
public class HttpClientUtils {

    @Autowired
    private CloseableHttpClient httpClient;

    @Autowired
    private RequestConfig requestConfig;

    /**
     * 无参的get请求
     *
     * @param url
     * @return
     * @throws Exception
     */
    public HttpResult doGet(String url) throws Exception {
        return doGet(url, null);
    }

    /**
     * 带参数的get请求
     *
     * @param url
     * @param param
     * @return
     * @throws Exception
     */
    public HttpResult doGet(String url, Map<String, Object> param) {
        CloseableHttpResponse response = null;
        try {
            //1.定义请求参数
            URIBuilder uriBuilder = new URIBuilder(url);
            if (param != null) {
                for (Map.Entry<String, Object> entry : param.entrySet()) {
                    uriBuilder.setParameter(entry.getKey(), entry.getValue().toString());
                }
            }
            URI uri = uriBuilder.build();
            //2.创建请求
            HttpGet doGet = new HttpGet(uri);
            //3.设置请求配置信息
            doGet.setConfig(requestConfig);
            //4.执行请求


            response = httpClient.execute(doGet);
            //判断响应返回状态码
            if (response.getStatusLine().getStatusCode() == 200) {
                return new HttpResult(response.getStatusLine().getStatusCode(), EntityUtils.toString(response.getEntity(), "UTF-8"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (response != null) {
                try {
                    response.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return new HttpResult(HttpStatus.SC_INTERNAL_SERVER_ERROR, null);
    }

    /**
     * 没有参数的dopost
     */
    public HttpResult doPost(String url) throws Exception{
        return doPost(url, null);
    }


    /**
     * 有参数的doPost
     * @throws Exception
     */
    public HttpResult doPost(String url,Map<String, Object> param) throws Exception{
        // 创建http POST请求
        HttpPost httpPost = new HttpPost(url);

        // 设置2个post参数，一个是scope、一个是q
        List<NameValuePair> parameters = new ArrayList<NameValuePair>(0);
        if (param!=null) {
            for (Map.Entry<String, Object> entry : param.entrySet()) {
                parameters.add(new BasicNameValuePair(entry.getKey(),entry.getValue().toString()));
            }
        }
        // 构造一个form表单式的实体
        UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(parameters,"UTF-8");
        // 将请求实体设置到httpPost对象中
        httpPost.setEntity(formEntity);

        //设置请求参数配置
        httpPost.setConfig(requestConfig);

        CloseableHttpResponse response = null;
        try {
            // 执行请求
            response = httpClient.execute(httpPost);
            // 判断返回状态是否为200
            if (response.getStatusLine().getStatusCode() == 200) {
                String content = EntityUtils.toString(response.getEntity(), "UTF-8");
                return new HttpResult(response.getStatusLine().getStatusCode(), content);
            }
        } finally {
            if (response != null) {
                response.close();
            }
            //httpclient.close();
        }
        return new HttpResult(response.getStatusLine().getStatusCode(), null);

    }

    public HttpResult doPostJson(String url, String json) throws IOException {
        // 创建http POST请求
        HttpPost httpPost = new HttpPost(url);
        httpPost.setConfig(this.requestConfig);
        if (json != null) {
            // 构造一个字符串的实体
            StringEntity stringEntity = new StringEntity(json, ContentType.APPLICATION_JSON);
            // 将请求实体设置到httpPost对象中
            httpPost.setEntity(stringEntity);
        }

        CloseableHttpResponse response = null;
        try {
            // 执行请求
            response = httpClient.execute(httpPost);
            if (response.getEntity() != null) {
                return new HttpResult(response.getStatusLine().getStatusCode(), EntityUtils.toString(
                        response.getEntity(), "UTF-8"));
            }
            return new HttpResult(response.getStatusLine().getStatusCode(), null);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }


    public String doGetStr(String url, Map<String, Object> param) {
        CloseableHttpResponse response = null;
        try {
            //1.定义请求参数
            URIBuilder uriBuilder = new URIBuilder(url);
            if (param != null) {
                for (Map.Entry<String, Object> entry : param.entrySet()) {
                    uriBuilder.setParameter(entry.getKey(), entry.getValue().toString());
                }
            }
            URI uri = uriBuilder.build();
            //2.创建请求
            HttpGet doGet = new HttpGet(uri);
            //3.设置请求配置信息
            doGet.setConfig(requestConfig);
            //4.执行请求


            response = httpClient.execute(doGet);
            //判断响应返回状态码
            if (response.getStatusLine().getStatusCode() == 200) {
                return EntityUtils.toString(response.getEntity(), "UTF-8");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (response != null) {
                try {
                    response.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }


    /**
     * 执行PUT请求
     *
     * @param url
     * @param param 请求参数
     * @return 状态码和请求的body
     * @throws IOException
     */
    public HttpResult doPut(String url, Map<String, Object> param) throws IOException {
        // 创建http POST请求
        HttpPut httpPut = new HttpPut(url);
        httpPut.setConfig(requestConfig);
        if (param != null) {
            // 设置post参数
            List<NameValuePair> parameters = new ArrayList<NameValuePair>(0);
            for (Map.Entry<String, Object> entry : param.entrySet()) {
                parameters.add(new BasicNameValuePair(entry.getKey(), entry.getValue().toString()));
            }
            // 构造一个form表单式的实体,并且指定参数的编码为UTF-8
            UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(parameters, "UTF-8");
            // 将请求实体设置到httpPost对象中
            httpPut.setEntity(formEntity);
        }

        CloseableHttpResponse response = null;
        try {
            // 执行请求
            response = httpClient.execute(httpPut);
            if (response.getEntity() != null) {
                return new HttpResult(response.getStatusLine().getStatusCode(), EntityUtils.toString(
                        response.getEntity(), "UTF-8"));
            }
            return new HttpResult(response.getStatusLine().getStatusCode(), null);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }

    /**
     * 执行PUT请求
     *
     * @param url
     * @return 状态码和请求的body
     * @throws IOException
     */
    public HttpResult doPut(String url) throws IOException {
        return this.doPut(url, null);
    }

    /**
     * 执行DELETE请求,通过POST提交，_method指定真正的请求方法
     *
     * @param url
     * @param param 请求参数
     * @return 状态码和请求的body
     * @throws IOException
     */
    public HttpResult doDelete(String url, Map<String, Object> param) throws Exception {
        param.put("_method", "DELETE");
        return this.doPost(url, param);
    }

    /**
     * 执行DELETE请求(真正的DELETE请求)
     *
     * @param url
     * @return 状态码和请求的body
     * @throws IOException
     */
    public HttpResult doDelete(String url) throws Exception {
        // 创建http DELETE请求
        HttpDelete httpDelete = new HttpDelete(url);
        httpDelete.setConfig(this.requestConfig);
        CloseableHttpResponse response = null;
        try {
            // 执行请求
            response = httpClient.execute(httpDelete);
            if (response.getEntity() != null) {
                return new HttpResult(response.getStatusLine().getStatusCode(), EntityUtils.toString(
                        response.getEntity(), "UTF-8"));
            }
            return new HttpResult(response.getStatusLine().getStatusCode(), null);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }


}

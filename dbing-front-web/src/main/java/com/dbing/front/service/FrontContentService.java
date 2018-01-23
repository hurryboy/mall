package com.dbing.front.service;

import com.dbing.common.pojo.HttpResult;
import com.dbing.front.httpClient.HttpClientUtils;
import com.dbing.manager.pojo.Content;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FrontContentService {

    @Autowired
    private HttpClientUtils httpClientUtils;

    private ObjectMapper objectMapper = new ObjectMapper();

    public List<Content> getContentsByCategoryId(String url) {

        try {
            //发送请求
            HttpResult httpResult = httpClientUtils.doGet(url);
            if(httpResult.getStatusCode()==200){
                //处理的返回JSON字符串
                JavaType valueType = objectMapper.getTypeFactory().
                        constructCollectionType(List.class,Content.class);
                List<Content> list = objectMapper.readValue(httpResult.getContent(),valueType);

                return list;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}

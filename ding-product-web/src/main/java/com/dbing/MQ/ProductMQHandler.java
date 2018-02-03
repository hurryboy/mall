package com.dbing.MQ;

import com.dbing.redis.RedisServiceImpl;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;

public class ProductMQHandler {

    @Autowired
    RedisServiceImpl redisService;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    public void deleteRedis(String msg){

        try {
            if(msg!=null){
                JsonNode jsonNode = objectMapper.readTree(msg);
                if(jsonNode!=null){
                    String type = jsonNode.get("type").asText();
                    if(StringUtils.equals(type,"delete")){
                        //删除缓存
                        Long id = jsonNode.get("id").asLong();
                        redisService.del("product"+id);
                        System.out.println("删除缓存"+id);
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

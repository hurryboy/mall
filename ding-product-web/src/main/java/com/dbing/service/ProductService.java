package com.dbing.service;

import com.dbing.httpClients.HttpClientUtils;
import com.dbing.pojo.Product;
import com.dbing.redis.RedisServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Value("${dbing_manager}")
    private String apiURL;

    @Autowired
    private RedisServiceImpl redisService;

    @Autowired
    private HttpClientUtils httpClientUtils;

    private static final ObjectMapper objectMapper = new ObjectMapper();



    public Product getProductById(long id) {

        //从缓存中获取
        try {
            String proJSON = redisService.get("product_"+id);
            if(proJSON!=null){
                Product product = objectMapper.readValue(proJSON,Product.class);
                return product;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //调用远程接口，从数据库中获取
        try {
            String proJSON = httpClientUtils.doGet(apiURL+"restful/api/products/"+id).getContent();
            System.out.println(proJSON);
            if(proJSON!=null){
                Product product = objectMapper.readValue(proJSON,Product.class);
                redisService.set("product_"+id,proJSON);
                return product;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}

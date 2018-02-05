package com.dbing.front.service;

import com.dbing.common.pojo.HttpResult;
import com.dbing.front.Thread.UserThread;
import com.dbing.front.httpClient.HttpClientUtils;
import com.dbing.manager.pojo.Cart;
import com.dbing.manager.pojo.Product;
import com.dbing.manager.pojo.User;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CartService {

    @Autowired
    private HttpClientUtils httpClientUtils;

    @Autowired
    private RedisServiceImpl redisService;


    @Value("${dbing.cartURL}")
    private String cartURL;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    public List<Cart> queryCarts(User user) throws Exception {
            //登陆状态，从数据库中获取购物车
            String url = cartURL+"restful/cart/"+user.getId();
            String jsonData = httpClientUtils.doGet(url).getContent();

            if(StringUtils.isNoneBlank(jsonData)){
                JavaType valueType = objectMapper.getTypeFactory().constructCollectionType(List.class,Cart.class);
                List<Cart> carts = objectMapper.readValue(jsonData,valueType);
                return carts;
            }

        return null;
    }

    public void deleteCartById(Long productId) throws Exception{
        User user = UserThread.getUser();
        Long userId = user.getId();
        String url = cartURL+"restful/cart/"+userId+"/"+productId;
        //String url = cartURL+"restful/cart/"+userId+"/"+productId;

        HttpResult httpResult = httpClientUtils.doDelete(url);
        Integer code = httpResult.getStatusCode();

    }

    public void updateCart(Long productId,Integer num) throws Exception {

        //http://cart.atguigu.com/restful/cart/{userId}/{productId}/{num}
        Long userId = UserThread.getUser().getId();
        String url = cartURL+"restful/cart/"+userId+"/"+productId+"/"+num;

        httpClientUtils.doPut(url,null);
    }

    public void addProductToCart(Long productId, Integer num) throws Exception {

        Long userId = UserThread.getUser().getId();

        Map<String,Object> param = new HashMap<>();

        String url = "http://127.0.0.1:8081/restful/cart/"+userId+"/"+productId+".html";

        String jsonData = httpClientUtils.doGet("http://127.0.0.1:8081/restful/api/products/"+productId).getContent();

        if(jsonData!=null){
            Product product = objectMapper.readValue(jsonData,Product.class);
            param.put("UserId",userId);
            param.put("productId",product.getId());
            param.put("productTitle",product.getTitle());
            param.put("productImage",product.getImage());
            param.put("productPrice",product.getPrice());
            param.put("num",num);
        }

        String addUrl = cartURL+"restful/cart/";
        httpClientUtils.doPost(addUrl,param);
        //http://cart.atguigu.com/restful/cart
    }


    /**
     * 登陆状态合并缓存中的购物车到Mysql数据库
     * @param cartKey
     */
    public void MergeCart(String cartKey,String token) throws Exception{
        Map<String,String> jsonCarts = redisService.hget(cartKey);
        if(jsonCarts!=null){
            JavaType valueType = objectMapper.getTypeFactory().constructMapType(HashMap.class,String.class,Cart.class);

            List<Cart> carts = new ArrayList<>();

            String jsonUser = redisService.get(token);
            User user = objectMapper.readValue(jsonUser,User.class);
            Long userId = user.getId();

            for (String key:jsonCarts.keySet()){
                Cart cart = objectMapper.readValue(jsonCarts.get(key),Cart.class);

                String jsonProduct = httpClientUtils.doGet("http://127.0.0.1:8081/restful/api/products/"+cart.getProductId()).getContent();

                if(StringUtils.isNoneBlank(jsonProduct)){
                    Product product = objectMapper.readValue(jsonProduct,Product.class);

                    if(product!=null){
                        cart.setProductPrice(product.getPrice());
                        cart.setProductImage(product.getImage());
                        cart.setProductTitle(product.getTitle());
                    }
                }

                cart.setUserId(userId);
                carts.add(cart);
            }


            String mergeUrl = cartURL+"restful/cart/merge";
            Map<String,Object> param = new HashMap<>();
            String jsonCartsData = objectMapper.writeValueAsString(carts);

            param.put("carts",jsonCartsData);
            httpClientUtils.doPost(mergeUrl,param);
            //httpClientUtils.doPost(mergeUrl);

        }
    }
}

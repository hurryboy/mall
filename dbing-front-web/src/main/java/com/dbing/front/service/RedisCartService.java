package com.dbing.front.service;


import com.dbing.front.httpClient.HttpClientUtils;
import com.dbing.manager.pojo.Cart;
import com.dbing.manager.pojo.Product;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class RedisCartService {

    @Autowired
    private RedisServiceImpl redisService;

    @Autowired
    private HttpClientUtils httpClientUtils;

    private static ObjectMapper objectMapper = new ObjectMapper();

    /**
     * 通过保存在Cookie中的键值获取到保存在Redis中的购物车数据
     * @param cartKey
     * @return
     * @throws Exception
     */
    public List<Cart> queryCarts(String cartKey) throws Exception{
        Map<String, String> stringMap = redisService.hget(cartKey);
        List<Cart> carts = new ArrayList<>();

        for (String key:stringMap.keySet()){
            String jsonData = stringMap.get(key);
            Cart cart = objectMapper.readValue(jsonData,Cart.class);
            carts.add(cart);
        }
        return carts;
    }

    /**
     * 新增商品到缓存中的购物车
     * @param productId
     * @param num
     */
    public void addProductToCart(String cartKey,Long productId, Integer num) throws Exception{

        Cart cart = new Cart();
        Cart temp = null;

        String jsonCart = redisService.hget(cartKey,"cart_"+productId);
        if(jsonCart!=null){
           temp = objectMapper.readValue(jsonCart,Cart.class);
           cart = temp;
        }

        //获取Product数据
        String jsonData = httpClientUtils.doGet("http://127.0.0.1:8081/restful/api/products/"+productId).getContent();
        if(jsonData!=null){
            Product product = objectMapper.readValue(jsonData,Product.class);
            cart.setUserId(null);
            cart.setProductId(productId);
            cart.setProductTitle(product.getTitle());
            cart.setProductImage(product.getImage());
            cart.setProductPrice(product.getPrice());

            if(temp!=null){
                cart.setNum(cart.getNum()+num);
            }
            cart.setNum(1);
        }

        //在Redis中以Hashes类型存储，Cartkey代表整个购物车，商品Id代表购物车中每一项
        redisService.hset(cartKey,"cart_"+productId,objectMapper.writeValueAsString(cart),60*60*24);

    }

    /**
     * 修改该缓存中指定购物车的指定商品项数量
     * @param cartKey
     * @param productId
     * @param num
     */
    public void updateCart(String cartKey,Long productId, Integer num) throws Exception {

        Cart cart = null;
        String jsonData = redisService.hget(cartKey,"cart_"+productId);
        if(jsonData!=null){
            cart = objectMapper.readValue(jsonData,Cart.class);
            //修改购物车商品数量
            cart.setNum(num);
        }

        if(cart!=null){
            redisService.hset(cartKey,"cart_"+productId,objectMapper.writeValueAsString(cart),60*60*24);
        }


    }

    /**
     * 删除缓存中的指定购物车的指定商品项
     * @param productId
     */
    public void deleteCartById(String cartKey,Long productId) {
        redisService.hdel(cartKey,"cart_"+productId);
    }
}

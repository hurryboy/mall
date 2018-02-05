package com.dbing.cart.service.impl;

import com.dbing.cart.interfaces.CartService;
import com.dbing.cart.mapper.CartMapper;
import com.dbing.manager.pojo.Cart;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.abel533.entity.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Override
    public Boolean addProductToCart(Cart cart) {
        int row = 0;
        cart.setCreated(new Date());
        cart.setUpdated(new Date());

        row = cartMapper.insertSelective(cart);


        return row>0?true:false;
    }

    @Override
    public List<Cart> queryCartListById(Long userId) {

        Example example = new Example(Cart.class);
        example.createCriteria().andEqualTo("userId",userId);
        List<Cart> list = cartMapper.selectByExample(example);

        return list;
    }

    @Override
    public Boolean updateCart(Long userId, Long productId, Integer num) {

        Cart cart = new Cart();
        cart.setProductId(productId);
        cart.setUserId(userId);

        int row = 0;
        if((cartMapper.selectOne(cart))!=null){
            cart = cartMapper.selectOne(cart);
            cart.setNum(num);
            row = cartMapper.updateByPrimaryKeySelective(cart);
        }else {
            addProductToCart(cart);
        }


        return row>0?true:false;
    }

    @Override
    public Boolean deleteCart(Long userId, Long productId) {

        Cart cart = new Cart();
        cart.setProductId(productId);
        cart.setUserId(userId);

        Cart cart1 = cartMapper.selectOne(cart);
        List<Cart> list = cartMapper.select(cart);

        int row = cartMapper.delete(cart1);
        /*if(list!=null&&list.size()>0){
            row = cartMapper.delete(list.get(0));
        }*/

        return row>0?true:false;
    }

    @Override
    public void mergeCart(String carts) throws Exception {

        ObjectMapper objectMapper = new ObjectMapper();

        JavaType javaType = objectMapper.getTypeFactory().constructCollectionType(List.class,Cart.class);
        List<Cart> cartList = objectMapper.readValue(carts,javaType);

        for (Cart cart:cartList){
            //updateCart(Long userId, Long productId, Integer num)
            if(cart!=null){
                updateCart(cart);
            }

        }
    }

    public Boolean updateCart(Cart cart1) {
        int row = 0;
        Integer num = cart1.getNum();
        cart1.setNum(null);
        Cart temp = cartMapper.selectOne(cart1);
        if(temp!=null){
            Cart cart = cartMapper.selectOne(cart1);
            cart.setNum(cart.getNum()+num);
            row = cartMapper.updateByPrimaryKeySelective(cart);
        }else {
            cart1.setNum(num);
            addProductToCart(cart1);
        }


        return row>0?true:false;
    }
}

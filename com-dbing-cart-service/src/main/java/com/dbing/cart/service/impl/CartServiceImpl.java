package com.dbing.cart.service.impl;

import com.dbing.cart.interfaces.CartService;
import com.dbing.cart.mapper.CartMapper;
import com.dbing.manager.pojo.Cart;
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

        Cart param = new Cart();
        param.setProductId(cart.getProductId());
        param.setUserId(cart.getUserId());
        Cart temp = cartMapper.selectOne(param);

        if(temp!=null){
            cart = temp;
            cart.setNum(cart.getNum()+1);
            row = cartMapper.updateByPrimaryKeySelective(cart);
        }else{
            row = cartMapper.insertSelective(cart);
        }


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

        cart = cartMapper.selectOne(cart);
        cart.setNum(num);

        int row = cartMapper.updateByPrimaryKeySelective(cart);

        return row>0?true:false;
    }

    @Override
    public Boolean deleteCart(Long userId, Long productId) {

        Cart cart = new Cart();
        cart.setProductId(productId);
        cart.setUserId(userId);

        cart = cartMapper.selectOne(cart);

        int row = cartMapper.delete(cart);

        return row>0?true:false;
    }
}

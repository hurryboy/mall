package com.dbing.cart.interfaces;


import com.dbing.manager.pojo.Cart;

import java.util.List;

public interface CartService {
    public Boolean addProductToCart(Cart cart);

    public List<Cart> queryCartListById(Long userId);

    public Boolean updateCart(Long userId, Long productId, Integer num);

    public Boolean deleteCart(Long userId, Long productId);

    public void mergeCart(String carts) throws Exception;
}

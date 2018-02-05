package com.dbing.cart.api.controller;

import com.dbing.cart.interfaces.CartService;
import com.dbing.manager.pojo.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("cart")
public class CartController {

    @Autowired
    private CartService cartService;

    /**
     * 保存购物车数据
     * @param cart
     * @return
     */
    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<Void> addProductToCart(Cart cart){

        try {
            boolean row = cartService.addProductToCart(cart);

            if(row){
                return ResponseEntity.status(HttpStatus.CREATED).build();
            }else{
                return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }


    /**
     * 根据用户id查询购物车数据
     * @param userId
     * @return
     */
    @RequestMapping(value = "{userid}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Cart>> queryCartListById(@PathVariable("userid")Long userId){
        try {
            List<Cart> carts = cartService.queryCartListById(userId);
            return ResponseEntity.ok(carts);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    /**
     * 更新购物车商品数量
     * @param userId
     * @param productId
     * @param num
     * @return
     */
    @RequestMapping(value = "{userId}/{productId}/{num}",method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<Void> updateCart(@PathVariable("userId")Long userId,
                                           @PathVariable("productId")Long productId,
                                           @PathVariable("num")Integer num){
        try {
            Boolean bool = cartService.updateCart(userId,productId,num);

            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();

    }


    //http://cart.atguigu.com/restful/cart/{userId}/{productId}

    /**
     * 删除指定购物车
     * @param userId
     * @param productId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "{userId}/{productId}",method = RequestMethod.DELETE)
    public ResponseEntity<Void> deleteCart(@PathVariable("userId")Long userId,
                                           @PathVariable("productId")Long productId){
        try {
            Boolean bool = cartService.deleteCart(userId,productId);

            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();

    }

    /**
     * 合并缓存和数据库中的购物车
     * @param carts
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "merge",method = RequestMethod.POST)
   // public ResponseEntity<Void> mergeCart(@RequestParam(value = "carts",required = false) List<Cart> carts){
    public ResponseEntity<Void> mergeCart(@RequestParam("carts") String carts){

        try {
            cartService.mergeCart(carts);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }





}

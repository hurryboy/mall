package com.dbing.front.controller;

import com.dbing.front.Cookies.CookieUtils;
import com.dbing.front.Thread.UserThread;
import com.dbing.front.service.CartService;
import com.dbing.front.service.RedisCartService;
import com.dbing.manager.pojo.Cart;
import com.dbing.manager.pojo.User;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

@RequestMapping("cart")
@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private RedisCartService redisCartService;


    /**
     * 查看购物车
     *
     * @return
     */
    @RequestMapping("showCart")
    @ResponseBody
    public ModelAndView showCart(HttpServletRequest request, HttpServletResponse response) {
        User user = UserThread.getUser();
        ModelAndView mv = new ModelAndView("cart");

        try {
            if (user != null) {
                //登陆
                List<Cart> carts = cartService.queryCarts(user);
                mv.addObject("cartList", carts);
            } else {
                String cartKey = CookieUtils.getCookieValue(request,"cart");
                List<Cart> carts = redisCartService.queryCarts(cartKey);
                mv.addObject("cartList", carts);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    /**
     * 新增
     * @param productId
     * @param num
     * @param request
     * @return
     */
    @RequestMapping("{productId}/{num}")
    public String addProductToCart(@PathVariable("productId") Long productId,
                                   @PathVariable("num") Integer num,
                                   HttpServletRequest request) {
        try {

            if (UserThread.getUser() != null) {
                //登陆状态
                cartService.addProductToCart(productId, num);
            } else {
                //未登陆状态
                String cartKey = CookieUtils.getCookieValue(request,"cart");
                redisCartService.addProductToCart(cartKey,productId, num);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/cart/showCart.html";
    }

    /**
     * 更新指定购物车
     *
     * @param productId
     * @return
     */
    @RequestMapping(value = "update/num/{productId}/{num}")
    @ResponseBody
    public ResponseEntity<Void> updateCart(@PathVariable("productId") Long productId,
                                           @PathVariable("num") Integer num,
                                           HttpServletRequest request) {

        try {
            if (UserThread.getUser() != null) {
                //登陆状态
                cartService.updateCart(productId, num);
            } else {
                //未登陆状态
                String cartKey = CookieUtils.getCookieValue(request,"cart");
                redisCartService.updateCart(cartKey,productId, num);
            }
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();

    }

    //http://www.dbing.front/cart/delete/1473155171.html

    /**
     * 删除指定购物车商品
     *
     * @param productId
     * @return
     */
    @RequestMapping(value = "delete/{productId}", method = RequestMethod.GET)
    public String deleteCartById(@PathVariable("productId") Long productId,HttpServletRequest request) {

        try {
            if (UserThread.getUser() != null) {
                //登陆状态
                cartService.deleteCartById(productId);
            } else {
                //未登陆状态
                String cartKey = CookieUtils.getCookieValue(request,"cart");
                redisCartService.deleteCartById(cartKey,productId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/cart/showCart.html";

    }


}

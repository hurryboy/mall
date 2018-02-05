package com.dbing.order.controller;

import com.dbing.order.bean.TtguiguResult;
import com.dbing.order.pojo.Order;
import com.dbing.order.pojo.PageResult;
import com.dbing.order.pojo.ResultMsg;
import com.dbing.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * create by chengbingzhuang
 * 2018年 02月 05日 15:07
 **/

/**
 * 提供Order操作接口
 */
@Controller
@RequestMapping("order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 创建订单
     * @param json
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "create" , method = RequestMethod.POST)
    public TtguiguResult createOrder(@RequestBody String json) {
        return orderService.createOrder(json);
    }


    /**
     * 根据订单ID查询订单
     * @param orderId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/query/{orderId}" ,method = RequestMethod.GET)
    public Order queryOrderById(@PathVariable("orderId") String orderId) {
        return orderService.queryOrderById(orderId);
    }

    /**
     * 根据用户名分页查询订单
     * @param buyerNick
     * @param page
     * @param count
     * @return
     */
    @ResponseBody
    @RequestMapping("/query/{buyerNick}/{page}/{count}")
    public PageResult<Order> queryOrderByUserNameAndPage(@PathVariable("buyerNick") String buyerNick, @PathVariable("page") Integer page, @PathVariable("count") Integer count) {
        return orderService.queryOrderByUserNameAndPage(buyerNick, page, count);
    }


    /**
     * 修改订单状态
     * @param json
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/changeOrderStatus",method = RequestMethod.POST)
    public ResultMsg changeOrderStatus(@RequestBody String json) {
        return orderService.changeOrderStatus(json);
    }
}
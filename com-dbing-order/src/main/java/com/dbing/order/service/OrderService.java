package com.dbing.order.service;

import com.dbing.order.bean.TtguiguResult;
import com.dbing.order.dao.IOrder;
import com.dbing.order.pojo.Order;
import com.dbing.order.pojo.PageResult;
import com.dbing.order.pojo.ResultMsg;
import com.dbing.order.utils.ValidateUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * create by chengbingzhuang
 * 2018年 02月 05日 15:07
 **/

@Service
public class OrderService {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    @Autowired
    private IOrder orderDao;

//    @Autowired
//    private RabbitTemplate rabbitTemplate;

    public TtguiguResult createOrder(String json) {
        Order order = null;
        try {
            order = objectMapper.readValue(json, Order.class);
            // 校验Order对象
            ValidateUtil.validate(order);
        } catch (Exception e) {
            return TtguiguResult.build(400, "请求参数有误!");
        }

        try {
            // 生成订单ID，规则为：userid+当前时间戳
            String orderId = order.getUserId() + "" + System.currentTimeMillis();
            order.setOrderId(orderId);

            // 设置订单的初始状态为未付款
            order.setStatus(1);

            // 设置订单的创建时间
            order.setCreateTime(new Date());
            order.setUpdateTime(order.getCreateTime());

            // 设置买家评价状态，初始为未评价
            order.setBuyerRate(0);

            // 持久化order对象
            orderDao.createOrder(order);

            //发送消息到RabbitMQ
//            Map<String, Object> msg = new HashMap<String, Object>(3);
//            msg.put("userId", order.getUserId());
//            msg.put("orderId", order.getOrderId());
//            List<Long> productIds = new ArrayList<Long>(order.getOrderProducts().size());
//            for (OrderProduct orderProduct : order.getOrderProducts()) {
//                productIds.add(orderProduct.getProductId());
//            }
//            msg.put("productIds", productIds);
//            this.rabbitTemplate.convertAndSend(objectMapper.writeValueAsString(msg));

            return TtguiguResult.ok(orderId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return TtguiguResult.build(400, "保存订单失败!");
    }

    public Order queryOrderById(String orderId) {
        Order order = orderDao.queryOrderById(orderId);
        return order;
    }

    public PageResult<Order> queryOrderByUserNameAndPage(String buyerNick, int page, int count) {
        return orderDao.queryOrderByUserNameAndPage(buyerNick, page, count);
    }

    public ResultMsg changeOrderStatus(String json) {
        Order order = null;
        try {
            order = objectMapper.readValue(json, Order.class);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultMsg("400", "请求参数有误!");
        }
        return this.orderDao.changeOrderStatus(order);
    }

}

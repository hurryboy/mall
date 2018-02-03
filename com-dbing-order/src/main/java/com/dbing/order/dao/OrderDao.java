package com.dbing.order.dao;


import com.dbing.order.bean.Where;
import com.dbing.order.mapper.OrderMapper;
import com.dbing.order.pojo.Order;
import com.dbing.order.pojo.PageResult;
import com.dbing.order.pojo.ResultMsg;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * Mysql版  实现Order订单操作
 */
public class OrderDao implements IOrder {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void createOrder(Order order) {
        orderMapper.save(order);
    }

    @Override
    public Order queryOrderById(String orderId) {
        return orderMapper.queryById(orderId);
    }

    @Override
    public PageResult<Order> queryOrderByUserNameAndPage(String buyerNick, Integer page, Integer count) {

        //目前mybatis最好的物理分页插件
        PageBounds bounds = new PageBounds();
        bounds.setContainsTotalCount(true);     //是否查询总记录数
        bounds.setLimit(count);                 //每页显示记录数
        bounds.setPage(page);                   //查询第几页
        bounds.setOrders(com.github.miemiedev.mybatis.paginator.domain.Order.
                formString("createTime.desc"));  //设置排序
        PageList<Order> orders = this.orderMapper.queryListByWhere(bounds, Where.build("buyerNick", buyerNick));

        return new PageResult<Order>(orders.getPaginator().getTotalCount(),orders);
    }

    @Override
    public ResultMsg changeOrderStatus(Order order) {
        try {
            order.setUpdateTime(new Date());
            this.orderMapper.update(order);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultMsg("500", "更新订单出错!");
        }
        return new ResultMsg("200", "更新成功!");
    }
}

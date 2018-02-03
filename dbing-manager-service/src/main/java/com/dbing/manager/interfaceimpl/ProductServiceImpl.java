package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Product;
import com.dbing.manager.pojo.ProductDesc;
import com.dbing.manager.services.ProductService;
import com.dbing.mappers.ProductMapper;
import com.dbing.mappers.ProductdescMapper;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.amqp.AmqpException;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.support.ObjectNameManager;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl extends BaseServiceImpl<Product> implements ProductService {

    @Autowired
    private ProductMapper productMapper;
    @Autowired
    private ProductdescMapper productdescMapper;

    @Autowired
    private RabbitTemplate template;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    //统一使用AOP声明式事务
    @Override
    public void save(Product product, String productDesc) {
        productMapper.insertSelective(product);

        ProductDesc proDesc = new ProductDesc();
        proDesc.setId(product.getId());
        proDesc.setProductdesc(productDesc);

        productdescMapper.insertSelective(proDesc);
    }


    //重写Base方法
    //删除数据库中记录，同步数据到索引库和缓存
    @Override
    public void deleteBatch(List<Object> ids) {
        System.out.println("1121212");
        //交换机发送消息
        for (Object obj:ids){
            long id = Long.parseLong(obj.toString());
            sendMQ("delete",id);
        }

        super.deleteBatch(ids);
    }


    public void sendMQ(String type,long id){
        HashMap<String,Object> map = new HashMap<>();
        map.put("type",type);
        map.put("id",id);

        try {
            template.convertAndSend("product."+type,objectMapper.writeValueAsString(map));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

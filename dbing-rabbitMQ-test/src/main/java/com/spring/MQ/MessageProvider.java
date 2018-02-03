package com.spring.MQ;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MessageProvider {

    public static void main(String[] args)throws Exception{
        AbstractApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:spring-rabbitMQ.xml");

        //MQ模板
        RabbitTemplate template = ctx.getBean(RabbitTemplate.class);

        //模板发送消息
        template.convertAndSend("123");

        Thread.sleep(1000);

        ctx.destroy();
    }
}

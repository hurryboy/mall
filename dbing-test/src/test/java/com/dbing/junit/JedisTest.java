package com.dbing.junit;

import org.junit.Test;
import redis.clients.jedis.*;

import java.util.ArrayList;
import java.util.List;

public class JedisTest {

    /**
     * 简单的Jedis
     */
    @Test
    public void simpleJedis(){
        //1.创建Jedis对象
        String host = "127.0.0.1";
        int port = 6379;
        Jedis jedis = new Jedis(host,port);

        //2.jedis操作Redis数据库
        jedis.set("test","value01");

        //3.关闭连接
    }

    /**
     * 简单的连接池
     */
    @Test
    public void poolJedis(){
        //1.连接池配置
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        //设置最大连接数
        jedisPoolConfig.setMaxTotal(20);

        //2.创建连接池
        String host = "127.0.0.1";
        int port = 6000;
        JedisPool jedisPool = new JedisPool(jedisPoolConfig,host,port);


        //3.从连接池中获取连接
        Jedis jedis = jedisPool.getResource();

        //4.操作Redis
        jedis.set("jedispool","1231");

        //5.释放连接
        jedisPool.returnResourceObject(jedis);

        //6.关闭连接池
        jedisPool.close();

    }

    /**
     * redis集群式的连接池
     */
    @Test
    public void sharedJedisPool(){
        //1.连接池配置
        JedisPoolConfig poolConfig = new JedisPoolConfig();
        //设置最大连接数
        poolConfig.setMaxTotal(30);

        //2.配置集群信息
        List<JedisShardInfo> list = new ArrayList<>();
        JedisShardInfo info = new JedisShardInfo("192.168.233.101",6000);
        info.setPassword("cbzroot");
        JedisShardInfo info2 = new JedisShardInfo("192.168.233.101",6001);
        info2.setPassword("cbzroot");
        list.add(info);
        list.add(info2);

        //3.创建连接池
        ShardedJedisPool pool = new ShardedJedisPool(poolConfig,list);

        ShardedJedis jedis = pool.getResource();
        jedis.set("sdfs","513");

    }

}

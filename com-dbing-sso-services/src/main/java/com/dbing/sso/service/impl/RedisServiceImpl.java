package com.dbing.sso.service.impl;

import com.dbing.sso.service.JedisExc;
import com.dbing.sso.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

import java.util.List;
import java.util.Map;

@Service
public class RedisServiceImpl implements RedisService {

    //false -- 使用时注入
    @Autowired(required = false)
    private ShardedJedisPool shardedJedisPool;


    public <T> T exec(JedisExc<ShardedJedis ,T> jedisExc){
        ShardedJedis jedis = null;
        try {

            //从数据池中获取连接
            jedis = shardedJedisPool.getResource();
            return jedisExc.callBack(jedis);

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if(jedis!=null){
                // 关闭，检测连接是否有效，有效则放回到连接池中，无效则重置状态
                jedis.close();
            }else {
                shardedJedisPool.returnResource(jedis);
            }
        }

        //关闭连接池
       // shardedJedisPool.close();
        return null;
    }



    @Override
    public String set(final String key, final String value) {

        //利用匿名内部类（new JedisExc）动态实现不同方法的实现,
        //exec 统一从连接池中获取Jedis连接
        //二者结合，减少冗余代码
        return this.exec(new JedisExc<ShardedJedis, String>() {
            @Override
            public String callBack(ShardedJedis shardedJedis) {
                return shardedJedis.set(key,value);
            }
        });
    }


    @Override
    public String get(final String key) {
        return this.exec(new JedisExc<ShardedJedis, String>() {
            @Override
            public String callBack(ShardedJedis shardedJedis) {
                return shardedJedis.get(key);
            }
        });
    }

    @Override
    public Long del(final String key) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                return shardedJedis.del(key);
            }
        });
    }

    @Override
    public Long expire(final String key,final String value,final Integer seconds) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                shardedJedis.set(key,value);
                return shardedJedis.expire(key,seconds);
            }
        });
    }

    @Override
    public Long expire(final String key, final Integer seconds) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                return shardedJedis.expire(key,seconds);
            }
        });
    }

    @Override
    public Long incr(final String key) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                return shardedJedis.incr(key);
            }
        });
    }

    @Override
    public Long hset(final String hashKey,final String key,final String value,final Integer seconds) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                shardedJedis.hset(hashKey,key,value);
                return expire(hashKey,seconds);
            }
        });
    }

    @Override
    public Map<String, String> hget(final String hashKey) {
        return this.exec(new JedisExc<ShardedJedis, Map<String, String>>() {
            @Override
            public Map<String, String> callBack(ShardedJedis shardedJedis) {
                return shardedJedis.hgetAll(hashKey);
            }
        });
    }

    @Override
    public Long hdel(final String hashKey, final String key) {
        return this.exec(new JedisExc<ShardedJedis, Long>() {
            @Override
            public Long callBack(ShardedJedis shardedJedis) {
                return shardedJedis.hdel(hashKey,key);
            }
        });
    }
}

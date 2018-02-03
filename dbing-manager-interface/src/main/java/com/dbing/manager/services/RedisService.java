package com.dbing.manager.services;

/**
 * 操作Redis数据库接口
 */
public interface RedisService {

    public String set(final String key,final String value);

    public String get(final String key);

    public Long del(final String key);

    //设置一个有生命周期的键值对
    public Long expire(final String key,final String value,final Integer seconds);

    //设置一个键的生命周期
    public Long expire(final String key,final Integer seconds);

    public Long incr(final String key);

}

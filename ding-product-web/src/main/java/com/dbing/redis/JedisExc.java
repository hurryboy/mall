package com.dbing.redis;

public interface JedisExc<E,T> {
    public T callBack(E e);
}

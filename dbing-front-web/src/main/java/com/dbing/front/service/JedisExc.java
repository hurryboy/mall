package com.dbing.front.service;

public interface JedisExc<E,T> {
    public T callBack(E e);
}

package com.dbing.sso.service;

public interface JedisExc<E,T> {
    public T callBack(E e);
}

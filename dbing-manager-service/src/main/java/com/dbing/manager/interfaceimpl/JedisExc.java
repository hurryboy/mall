package com.dbing.manager.interfaceimpl;

public interface JedisExc<E,T> {
    public T callBack(E e);
}

package com.dbing.manager.services;

import com.github.abel533.mapper.Mapper;

import java.util.List;

public interface BaseService<T> {

    //根据id查纪录
    public T getById(Integer id);

    //查询一条记录
    public T getOne(T t);

    //查所有记录
    public List<T> getAll();

    //根据查询条件查
    public List<T> getByCondition(T t);

    //页面查询
    public List<T> getPage(Integer page,Integer pageSize);

    //查询记录数
    public Integer getCount(T t);

    //保存记录
    public void save(T t);

    //可选保存记录
    public void saveSelective(T t);

    //更新记录
    public void update(T t);

    //可选更新记录
    public void updateSelective(T t);

    //根据id删除记录
    public void deleteById(Long id);

    //批量删除记录
    public void deleteBatch(List<Object> ids);



}

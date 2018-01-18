package com.dbing.manager.interfaceimpl;

import com.dbing.manager.services.BaseService;
import com.github.abel533.entity.Example;
import com.github.abel533.mapper.Mapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;


public class BaseServiceImpl<T> implements BaseService<T> {


    @Autowired
    Mapper<T> mapper;

    //泛型类型
    Class<T> clazz;


    public BaseServiceImpl() {
        //通过反射获取
        Type type = this.getClass().getGenericSuperclass();
        ParameterizedType pty = (ParameterizedType)type;
        clazz = (Class<T>) pty.getActualTypeArguments()[0];
    }

    @Override
    public T getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public T getOne(T t) {
        return mapper.selectOne(t);
    }

    @Override
    public List<T> getAll() {
        return mapper.select(null);
    }

    @Override
    public List<T> getByCondition(T t) {
        return mapper.select(t);
    }

    @Override
    public List<T> getPage(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return mapper.select(null);
    }

    @Override
    public Integer getCount(T t) {
        return mapper.selectCount(t);
    }

    @Override
    public void save(T t) {
        mapper.insert(t);
    }

    @Override
    public void saveSelective(T t) {
        mapper.insertSelective(t);
    }

    @Override
    public void update(T t) {
        mapper.updateByPrimaryKey(t);
    }

    @Override
    public void updateSelective(T t) {
        mapper.updateByPrimaryKeySelective(t);
    }

    @Override
    public void deleteById(Long id) {
        mapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteBatch(List<Object> ids) {
        Example example = new Example(clazz);
        example.createCriteria().andIn("id",ids);
        mapper.deleteByExample(example);
    }
}

package com.dbing.manager.datasource;

/**
 * create by chengbingzhuang
 * 2018年 02月 04日 15:51
 **/

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * 继承路由Sring数据源,根据数据源key动态切换数据源
 * 由于DynamicDataSource是单例的，线程不安全，利用Threadlocal保证线程安全
 *
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        //保证线程安全，获取当前线程中保存的数据源key
        return DynamicDataSourceHolder.getDataSourceKey();
    }
}

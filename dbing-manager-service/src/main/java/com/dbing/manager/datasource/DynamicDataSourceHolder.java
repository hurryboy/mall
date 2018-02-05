package com.dbing.manager.datasource;

/**
 * create by chengbingzhuang
 * 2018年 02月 04日 15:52
 **/


/**
 * 利用ThreadLocal记录当前线程中的数据源key
 */
public class DynamicDataSourceHolder {

    private static final String MASTER = "master";
    private static final String SLAVER = "slaver";

    private static final ThreadLocal<String> threadLocal = new ThreadLocal<>();

    /**
     * 设置数据源key
     * @param key
     */
    public static void putDataSourceKey(String key){
        threadLocal.set(key);
    }

    /**
     * 获取数据源key
     * @return
     */
    public static String getDataSourceKey(){
        return threadLocal.get();
    }

    /**
     * 标记主库
     */
    public static void markMaster(){
        putDataSourceKey(MASTER);
    }

    /**
     * 标记从库
     */
    public static void markSlaver(){
        putDataSourceKey(SLAVER);
    }

}

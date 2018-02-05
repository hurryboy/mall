package com.dbing.manager.datasource;

import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;

/**
 * create by chengbingzhuang
 * 2018年 02月 04日 16:01
 **/

/**
 * 定义Service数据源AOP切面，根据Service方法名判断走读\写库
 */
public class DataSouceApsect {

    public void before(JoinPoint joinPoint){
        String methodName = joinPoint.getSignature().getName();
        //根据方法名判断走读\写库
        if(isSlave(methodName)){
            DynamicDataSourceHolder.markSlaver();
        }else {
            DynamicDataSourceHolder.markMaster();
        }
    }

    /**
     * 判断是否读库
     * @param methodName
     * @return
     */
    private boolean isSlave(String methodName) {
        return StringUtils.startsWithAny(methodName,"get","query","find");

    }
}

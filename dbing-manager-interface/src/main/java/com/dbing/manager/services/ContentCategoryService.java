package com.dbing.manager.services;

import com.dbing.manager.pojo.Contentcategory;

public interface ContentCategoryService extends BaseService<Contentcategory> {

    //删除分类及其子分类
    public void deleteAll(Contentcategory contentcategory);

}

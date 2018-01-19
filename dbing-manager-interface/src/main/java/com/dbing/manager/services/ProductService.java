package com.dbing.manager.services;

import com.dbing.manager.pojo.Product;

public interface ProductService extends BaseService<Product>{
    public void save(Product product,String productDesc);
}

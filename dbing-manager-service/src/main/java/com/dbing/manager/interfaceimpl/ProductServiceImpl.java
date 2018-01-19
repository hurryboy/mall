package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Product;
import com.dbing.manager.pojo.ProductDesc;
import com.dbing.manager.services.ProductService;
import com.dbing.mappers.ProductMapper;
import com.dbing.mappers.ProductdescMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl extends BaseServiceImpl<Product> implements ProductService {

    @Autowired
    ProductMapper productMapper;
    @Autowired
    ProductdescMapper productdescMapper;

    //统一使用AOP声明式事务
    @Override
    public void save(Product product, String productDesc) {
        productMapper.insertSelective(product);

        ProductDesc proDesc = new ProductDesc();
        proDesc.setId(product.getId());
        proDesc.setProductdesc(productDesc);

        productdescMapper.insertSelective(proDesc);
    }
}

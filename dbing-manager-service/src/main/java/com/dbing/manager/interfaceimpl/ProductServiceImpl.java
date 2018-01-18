package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Product;
import com.dbing.manager.services.ProductService;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl extends BaseServiceImpl<Product> implements ProductService {
}

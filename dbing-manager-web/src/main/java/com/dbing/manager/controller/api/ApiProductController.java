package com.dbing.manager.controller.api;


import com.dbing.manager.pojo.Product;
import com.dbing.manager.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("api")
public class ApiProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("products")
    @ResponseBody
    public ResponseEntity<List<Product>> getProducts(){
        List<Product> products = productService.getAll();
        return ResponseEntity.status(HttpStatus.OK).body(products);
    }


    @RequestMapping("products/{pid}")
    @ResponseBody
    public ResponseEntity<Product> getProductById(@PathVariable("pid")Long pid){
        Product product = productService.getById(pid);

        return ResponseEntity.ok(product);

    }


}

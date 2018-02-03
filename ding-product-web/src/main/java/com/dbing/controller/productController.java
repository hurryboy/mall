package com.dbing.controller;

import com.dbing.pojo.Product;
import com.dbing.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class productController {

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "{id}",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getProductById(@PathVariable("id")long id){
        Product product = productService.getProductById(id);
        ModelAndView mv = new ModelAndView("product");
        mv.addObject("product",product);

        return mv;
    }

}

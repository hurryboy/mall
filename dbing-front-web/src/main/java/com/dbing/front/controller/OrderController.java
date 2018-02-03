package com.dbing.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("order")
@Controller
public class OrderController {

    @RequestMapping(value = "orderinfo",method = RequestMethod.GET)
    public ModelAndView toOrderPage(){
        ModelAndView mv = new ModelAndView("order");
        return mv;
    }



}

package com.dbing.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 通用后台页面跳转
 */
@RequestMapping("page")
@Controller
public class PageController {

    @RequestMapping(value = "{pageName}")
    public ModelAndView goPage(@PathVariable("pageName")String pageName){
        ModelAndView mv = new ModelAndView(pageName);
        return mv;
    }


}

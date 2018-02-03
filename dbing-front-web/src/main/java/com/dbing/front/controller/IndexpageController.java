package com.dbing.front.controller;


import com.dbing.front.service.FrontContentService;
import com.dbing.manager.pojo.Content;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class IndexpageController {

    @Autowired
    FrontContentService contentService;


    @Value("${content.bigAdlist}")
    private String bigAdUrl;
    @Value("${content.smallAdlist}")
    private String smallAdUrl;


    @RequestMapping(value = "index",method = RequestMethod.GET)
    public ModelAndView toIndexPage(){
        System.out.println(bigAdUrl);

        //大广告位内容
        List<Content> bigContent = contentService.getContentsByCategoryId(bigAdUrl);

        //小广告位内容
        List<Content> smallContent = contentService.getContentsByCategoryId(smallAdUrl);

        ModelAndView mv = new ModelAndView("index");
        mv.addObject("bigADList",bigContent);
        mv.addObject("smallADList",smallContent);
        return mv;
    }

}

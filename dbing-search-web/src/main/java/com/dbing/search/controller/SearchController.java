package com.dbing.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dbing.search.pojo.SolrResult;
import com.dbing.search.service.SearchService;

@Controller
public class SearchController {

    @Autowired
    private SearchService searchService;

    @RequestMapping(value = "search")
    public ModelAndView search(Model model, String queryString, String cid, String price, Integer page,
                               String sort) {
        ModelAndView mv = new ModelAndView("search");

        SolrResult solrResult;
        try {
            solrResult = this.searchService.search(queryString,cid,price,page,sort);
            model.addAttribute("cid", cid);
            model.addAttribute("price", price);
            model.addAttribute("page", page);
            model.addAttribute("sort", sort);
            model.addAttribute("queryString", queryString);
            model.addAttribute("result", solrResult);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return mv;
    }
}

package com.dbing.manager.controller.api;


import com.dbing.manager.pojo.Content;
import com.dbing.manager.services.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * 作为公共开放平台 提供接口服务  实现工程依赖的解耦
 */
@RequestMapping("api")
@Controller
public class ApiContentController {


    @Autowired
    ContentService contentService;

    /**
     *
     * @param categoryId
     * @return 返回指定分类的内容list
     */
    @RequestMapping(value = "content/{categoryId}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Content>> getAllContentByCategoryId(@PathVariable("categoryId")Long categoryId){

        try {
            Content content = new Content();
            content.setCategoryid(categoryId);
            List<Content> contents = contentService.getByCondition(content);

            return ResponseEntity.status(HttpStatus.OK).body(contents);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);

    }



}

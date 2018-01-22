package com.dbing.manager.controller;

import com.dbing.manager.pojo.Contentcategory;
import com.dbing.manager.services.ContentCategoryService;
import com.dbing.manager.services.RedisService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.org.apache.regexp.internal.RE;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@RequestMapping("page")
@Controller
public class ContentCategoryController {

    @Autowired
    ContentCategoryService contentCategoryService;
    @Autowired
    RedisService redisService;

    private static String contentCategoryTreeky = "ContentCategory_Tree_key";
    private static ObjectMapper objectMapper = new ObjectMapper();

    /**
     * 获取所有内容类，显示在树形菜单
     * @return
     */
    @RequestMapping(value = "contentcategory",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Contentcategory>> getContentcategory(){

   /*     try {
            //1.从redi缓存中尝试命中数据
            String contentCategoryValue = redisService.get(contentCategoryTreeky);

            if(contentCategoryValue!=null){
                //命中
                //转换String为指定ContentCategory元素类型的list
                JavaType valueType = objectMapper.getTypeFactory().constructCollectionType(List.class,Contentcategory.class);
                List<Contentcategory> list = objectMapper.readValue(contentCategoryValue,valueType);

                return ResponseEntity.status(HttpStatus.OK).body(list);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }*/

        try {
            //2.没有命中，从数据库中获取
            List<Contentcategory> list = contentCategoryService.getAll();
            String contentCategoryValue = objectMapper.writeValueAsString(list);
            redisService.expire(contentCategoryTreeky,contentCategoryValue,60*60*24);

            return ResponseEntity.status(HttpStatus.OK).body(list);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        //查询失败
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    /**
     * 新增内容分类
     * @param contentcategory
     * @return
     */
    @RequestMapping(value = "contentcategory",method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<Boolean> AddContentCategory(Contentcategory contentcategory){
        try {
            contentCategoryService.saveSelective(contentcategory);
            return ResponseEntity.status(HttpStatus.CREATED).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }

    /**
     * 删除指定分类及其子分类
     * @param contentcategory
     * @return
     */
    @RequestMapping(value = "contentcategory",method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<Boolean> deleteContentCategory(Contentcategory contentcategory){
        try {
            //删除分类
            contentCategoryService.deleteAll(contentcategory);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }

    /**
     * 修改指定内容分类
     * @param contentcategory
     * @return
     */
    @RequestMapping(value = "contentcategory",method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<Boolean> updateContentCategory(Contentcategory contentcategory){
        try {
            contentCategoryService.updateSelective(contentcategory);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }
}

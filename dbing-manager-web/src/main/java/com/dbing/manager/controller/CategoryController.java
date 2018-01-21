package com.dbing.manager.controller;

import com.dbing.manager.pojo.Category;
import com.dbing.manager.services.CategoryService;
import com.dbing.manager.services.RedisService;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
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
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private RedisService redisService;

    private static String categoryTreeKy = "dbing_manager_category_tree_key";
    private static ObjectMapper objectMapper = new ObjectMapper();

    /**
     * 获取所有分类记录
     * （使用Redis提升性能）
     *   ①先尝试从Redis中获取
     *   ②Redis缓存中没有，则从mysql中获取；获取结果，加入到Redis中
     *
     * @return
     */
    @RequestMapping(value = "category",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Category>> getCategorys(){
        try {
            //1.尝试在Redis中命中数据
            String categorys = redisService.get(categoryTreeKy);
            if(categorys!=null){
                //缓存命中
                //将字符串转换为List
                JavaType valueType = objectMapper.getTypeFactory().constructCollectionType(List.class,
                        Category.class);
                List<Category> list = objectMapper.readValue(categorys,valueType);

                return ResponseEntity.status(HttpStatus.OK).body(list);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


        try {
            //2.缓存没有命中,从数据库中获取
            List<Category> listMysql = categoryService.getAll();

            //3.插入数据到缓存中
            //将list转为String
            redisService.expire(categoryTreeKy,objectMapper.writeValueAsString(listMysql),
                    60*60*24);
            return ResponseEntity.status(HttpStatus.OK).body(listMysql);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

}

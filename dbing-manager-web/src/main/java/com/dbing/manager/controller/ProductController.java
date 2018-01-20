package com.dbing.manager.controller;

import com.dbing.common.pojo.DataTableJSONResponse;
import com.dbing.manager.pojo.Product;
import com.dbing.manager.services.ProductService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@RequestMapping("page")
@Controller
public class ProductController {

    @Autowired
    ProductService productService;


    //新增商品（表product、productDesc）
    @RequestMapping(value = "product", method = RequestMethod.POST)
    public ResponseEntity<Boolean> addProduct(Product product, String editorValue) {
        try {
            productService.save(product, editorValue);
            return ResponseEntity.status(HttpStatus.CREATED).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }


    //商品列表
    //配合端分页插件-Jquery DataTabls
    //不使用mybatis 分页插件pageHelper,是因为数据是从redis缓存中直接一次性获取出来的
    @RequestMapping(value = "product", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<DataTableJSONResponse> getProducts(@RequestParam(value = "aodata", required = false) String aodata,
                                                             @RequestParam(value = "cid", required = false) Long cid) {


        try {
            DataTableJSONResponse dataTableJSONResponse = new DataTableJSONResponse();

            //1.默认的DataTables插件基本参数值
            Integer sEcho = 0;  //访问的记录数
            Integer iDisplayLength = 10;  //每页显示的记录数
            Integer iDisplayStart = 0;  //开始显示的记录

            //2.转换JSON数组字符串为JSON数组---aodata
            if (aodata != null) {
                JSONArray jsonArray = new JSONArray(aodata);
                //3.取出JSON数组中基本插件参数
                for (Object object : jsonArray) {
                    JSONObject jsonObject = (JSONObject) object;
                    //sEcho  记录数
                    if (jsonObject.get("name").equals("sEcho")) {
                        sEcho = Integer.parseInt(jsonObject.get("value").toString());
                    }

                    //iDisplayLength  页面记录数
                    if (jsonObject.get("name").equals("iDisplayLength")) {
                        iDisplayLength = Integer.parseInt(jsonObject.get("value").toString());
                    }

                    //iDisplayStart  页面开始记录
                    if (jsonObject.get("name").equals("iDisplayStart")) {
                        iDisplayStart = Integer.parseInt(jsonObject.get("value").toString());
                    }
                }

                //4.手动分页
                Product product = new Product();
                if (cid != null) {
                    product.setCid(cid);
                }

                //获取查询的总记录数
                Integer queryCount = productService.getCount(product);
                //获取所有记录
                List<Product> list = productService.getByCondition(product);

                //分页
                if (queryCount > iDisplayLength) {
                    //需要分页
                    if((queryCount-iDisplayStart)>iDisplayLength){
                        //103条记录  每页10  当前页第90记录开始  90，100
                        list = list.subList(iDisplayStart, iDisplayStart+iDisplayLength);
                    }else{
                        //103条记录  每页10  当前页第100记录开始  100，103
                        list = list.subList(iDisplayStart,queryCount);
                    }

                }

                 /*
                     * Object sEcho;   //访问记录数
                     Object iTotalRecords; // 查询的记录数
                     Object iTotalDisplayRecords; // 过滤后的记录数
                     List<?> aaData;         //显示数据
                * */
                dataTableJSONResponse.setAaData(list);
                dataTableJSONResponse.setiTotalRecords(queryCount);
                dataTableJSONResponse.setiTotalDisplayRecords(queryCount);
                dataTableJSONResponse.setsEcho(sEcho);
            }

            return ResponseEntity.status(HttpStatus.OK).body(dataTableJSONResponse);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }


    //批量删除
    @RequestMapping(value = "product",method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<Boolean> deleteBatch(String ids){

        try {
            List<Object> list = new ArrayList<>();
            for(Object str:ids.split(",")){
                list.add(str);
            }

            productService.deleteBatch(list);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }

}

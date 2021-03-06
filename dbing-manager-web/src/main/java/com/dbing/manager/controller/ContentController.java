package com.dbing.manager.controller;


import com.dbing.common.pojo.DataTableJSONResponse;
import com.dbing.manager.pojo.Content;
import com.dbing.manager.services.ContentService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "page")
public class ContentController {

    @Autowired
    ContentService contentService;


    /**
     * 新增内容
     * @param content
     * @return
     */
    @RequestMapping(value = "content",method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<Boolean> addContent(Content content){
        try {
            contentService.saveSelective(content);
            return ResponseEntity.status(HttpStatus.CREATED).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }

        /*
        * [
     {
        "name": "sEcho",
        "value": 1
    },
    {
        "name": "iColumns",
        "value": 4
    },.......

        * */

    /**
     *显示内容列表
     * @param aodata
     * @param categoryid
     * @return
     */
    @RequestMapping(value = "content",method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<DataTableJSONResponse> getAllContent(String aodata,Long categoryid){
        try {
            //1.默认的DataTables插件基本参数值
            Integer sEcho = 0; //访问的记录数
            Integer iDisplayLength = 10; //每页显示的记录数
            Integer iDisplayStart = 0; //开始显示的记录


            //2.转换JSON数组字符串为JSON数组,
            //3.获取dataTables前端分页插件需要的基本参数
            JSONArray jsonArray = new JSONArray(aodata);
            for (Object object : jsonArray){
                JSONObject jsonObject = (JSONObject)object;
                if(((JSONObject) jsonObject).get("name").equals("sEcho")){
                    sEcho = Integer.parseInt(jsonObject.get("value")+"");
                }

                if(((JSONObject) jsonObject).get("name").equals("iDisplayLength")){
                    iDisplayLength = Integer.parseInt(jsonObject.get("value")+"");
                }

                if(((JSONObject) jsonObject).get("name").equals("iDisplayStart")){
                    iDisplayStart = Integer.parseInt(jsonObject.get("value")+"");
                }
            }

            //4.获取所有的记录，手动分页
            Content content = new Content();
            content.setCategoryid(categoryid);
            List<Content> list = contentService.getByCondition(content);
            int count = contentService.getCount(content);

            if(count>iDisplayLength){
                if((count-iDisplayStart)>iDisplayLength){
                    list = list.subList(iDisplayStart,iDisplayLength);
                }else {
                    list = list.subList(iDisplayStart,count);
                }
            }

            DataTableJSONResponse dataTableJSONResponse = new DataTableJSONResponse();
            dataTableJSONResponse.setsEcho(sEcho);
            dataTableJSONResponse.setiTotalRecords(count);
            dataTableJSONResponse.setiTotalDisplayRecords(count);
            dataTableJSONResponse.setAaData(list);

            return ResponseEntity.status(HttpStatus.OK).body(dataTableJSONResponse);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    @RequestMapping(value = "content",method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<Boolean> deleteByIds(String ids){
        try {
            String[] idsArr = StringUtils.split(ids,",");
            List<Object> idsList = new ArrayList<>();
            for (String str:idsArr){
                idsList.add(str);
            }

            contentService.deleteBatch(idsList);

            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body(false);

    }
}

package com.dbing.manager.controller;


import com.dbing.common.utils.FastDFSUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("file")
@Controller
public class FileUploadController {

    @Value("${fdfs_address}")
    private String baseFdfsUrl;


    //文件上传
    /*
      state : 上传的状态  SUCCESS:上传成功  or Error: 上传失败
      url : 上传后图片的地址
      size : 文件大小
      original: 文件的后缀名
      type : 文件类型
    * */
    @RequestMapping(value = "upload", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> uploadFile(MultipartFile file) {
        System.out.println("访问文件服务器地址");
        String orignalName = file.getOriginalFilename();
        HashMap<String, Object> map = new HashMap<>();
        String orignal = StringUtils.substringAfterLast(orignalName, ".");

        try {
            map.put("state", "SUCCESS"); //文件上传状态
            map.put("original", orignal);  //文件拓展名
            map.put("size", file.getSize()); //文件大小
            map.put("type", file.getContentType());  //文件类型


            byte[] bytes = file.getBytes();
            String[] strr = FastDFSUtils.doUpload(bytes, orignalName);

            for (String str : strr) {
                baseFdfsUrl = baseFdfsUrl + "/" + str;
            }

            map.put("url", baseFdfsUrl); //访问文件服务器地址
            System.out.println("访问文件服务器地址"+baseFdfsUrl);


        } catch (Exception e) {
            e.printStackTrace();
            map.put("state", "ERROR");
        }
        return map;
    }
}

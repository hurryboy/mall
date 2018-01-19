package com.dbing.common.utils;

import org.csource.common.MyException;
import org.csource.fastdfs.*;

import java.io.IOException;
import java.net.URL;

public class FastDFSUtils {

    public static StorageClient storageClient;

    static {
        try {
            //1.tracker.conf文件的绝对路径，动态从类路径下查找
            String trackerPath = "/properties/tracker.properties";
            URL url = FastDFSUtils.class.getResource(trackerPath);
            String absolutePath = url.getPath();
            System.out.print("111111"+absolutePath);

            //2.使用tracker.conf配置文件对FastDFS客户端进行初始化
            ClientGlobal.init(absolutePath);

            //3.创建四个对象
            TrackerClient trackerClient = new TrackerClient();
            TrackerServer trackerServer = trackerClient.getConnection();
            StorageServer storageServer = null;

            //4.最终就是为了获取StorageClient，上传文件操作
            storageClient = new StorageClient(trackerServer,null);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }
    }

    /**
     * 封装FastDFS客户端，执行file删除操作
     * @param groupName
     * @param remoteFileName
     * @return
     */
    public static int doDelete(String groupName,String remoteFileName){
        try {
            return storageClient.delete_file(groupName,remoteFileName);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
    }

    public static String[] doUpload(byte[] bytes,String originalFileName){
        //1.上传文件的拓展名
        String extName = "";
        //2.从原始文件名中获取拓展名
        if(originalFileName!=null){
            if(originalFileName.contains(".")){
                int indexOf = originalFileName.lastIndexOf(".");
                extName = originalFileName.substring(indexOf);
            }
        }
       /* extName = StringUtils.substringAfterLast("originalFileName",".");*/

        //3.执行文件上传
        try {
            return storageClient.upload_file(bytes,extName,null);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }

    }

}

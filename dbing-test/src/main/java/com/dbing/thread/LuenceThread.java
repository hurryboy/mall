package com.dbing.thread;

import com.dbing.pojo.Product;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.*;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public class LuenceThread implements Runnable {

    private static CopyOnWriteArrayList<Product> pros;
    private static IndexWriter indexWriter;
    //获取接口数据插入到索引库
    private static Directory directory;

    private static Analyzer analyzer = new IKAnalyzer();

    private static IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_4_10_2,analyzer);


    static {

        try {
            directory = FSDirectory.open(new File("dbing-test/productsAll"));
            indexWriter = new IndexWriter(directory,indexWriterConfig);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //创建HttpClient客户端
        CloseableHttpClient httpClient = HttpClients.createDefault();

        //创建请求
        HttpGet httpGet = new HttpGet("http://127.0.0.1:8081/restful/api/products");

        //执行请求
        CloseableHttpResponse response = null;
        String content = null;

        try {
            response = httpClient.execute(httpGet);
            content = EntityUtils.toString(response.getEntity(), "utf-8");

        if (content != null) {
            ObjectMapper objectMapper = new ObjectMapper();
            JavaType valueType = objectMapper.getTypeFactory().constructCollectionType(CopyOnWriteArrayList.class, Product.class);
            pros = objectMapper.readValue(content, valueType);
        }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        try {
            System.out.println("-----------");
            addPros();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addPros() throws Exception {


        //写入文档
        for (Product p:pros){
            System.out.println(Thread.currentThread().getName());
            Document document = new Document();
            document.add(new LongField("id",p.getId(), Field.Store.YES));
            document.add(new TextField("title",p.getTitle(), Field.Store.YES));
            document.add(new StringField("sellpoint",p.getSellpoint(), Field.Store.YES));

            indexWriter.addDocument(document);

            pros.remove(p);
        }

        indexWriter.commit();
        indexWriter.close();
    }

}

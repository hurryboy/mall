package com.dbing.junit;

import com.dbing.pojo.Product;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.LongField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.*;
import org.apache.lucene.search.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.junit.Test;
import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class LucenceAddPros {

    /**
     * 访问接口得到JSON数据，插入到索引库中
     * @throws Exception
     */
    @Test
    public void addProducts() throws Exception{

        //创建HttpClient客户端
        CloseableHttpClient httpClient = HttpClients.createDefault();

        //创建请求
        HttpGet httpGet = new HttpGet("http://127.0.0.1:8081/restful/api/products");

        //执行请求
        CloseableHttpResponse response = null;
        String content = null;
        List<Product> list = null;
        try {
            response = httpClient.execute(httpGet);
            if(response.getStatusLine().getStatusCode()==200){
                content= EntityUtils.toString(response.getEntity(),"utf-8");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        if(content!=null){

            ObjectMapper objectMapper = new ObjectMapper();
            JavaType valueType = objectMapper.getTypeFactory().constructCollectionType(List.class, Product.class);

             list = objectMapper.readValue(content,valueType);
        }

        //System.out.println(list);

        //将通过api接口获取的数据加入到索引库
        //创建索引库
        Directory directory = FSDirectory.open(new File("products"));

        Analyzer analyzer = new IKAnalyzer();

        //创建IndexWriter
        IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_4_10_2,analyzer);
        IndexWriter indexWriter = new IndexWriter(directory,indexWriterConfig);

        for(Product product:list){
            Document document = new Document();
            document.add(new LongField("id",product.getId(), Field.Store.YES));
            document.add(new TextField("title",product.getTitle(), Field.Store.YES));
            document.add(new TextField("sellpoint",product.getSellpoint(), Field.Store.YES));
            document.add(new LongField("price",product.getPrice(), Field.Store.YES));

            indexWriter.addDocument(document);
        }

        indexWriter.commit();
        indexWriter.close();

    }


    @Test
    public void searchPros() throws Exception{
        //1.匹配所有搜索
        MatchAllDocsQuery matchAllDocsQuery = new MatchAllDocsQuery();
        query(matchAllDocsQuery);
        System.out.println("-------------------分割线--------------------------");

        //2.基于词条查询
        Query query = new TermQuery(new Term("title","英寸"));
        query(query);

        System.out.println("-------------------分割线--------------------------");
        //3.模糊搜索
        WildcardQuery wildcardQuery = new WildcardQuery(new Term("title","手机"));
        query(wildcardQuery);

        System.out.println("-------------------分割线--------------------------");

        //4.相似度搜索
        //FuzzyQuery 相似度搜索，距离编辑算法
        //maxEdits 取值0-2
        FuzzyQuery fuzzyQuery = new FuzzyQuery(new Term("title","移动"),2);
        query(fuzzyQuery);

        System.out.println("----------------相似度搜索---分割线--------------------------");

        //5.基于范围查询
        NumericRangeQuery numericRangeQuery = NumericRangeQuery.newLongRange("price",0L,306000L,true,true);
        query(numericRangeQuery);

        System.out.println("---------------组合查询----分割线--------------------------");

        //6.组合查询（BooleanQuery）
        BooleanQuery booleanQuery = new BooleanQuery();

        Query query1 = new TermQuery(new Term("title","三星"));
        booleanQuery.add(query1, BooleanClause.Occur.MUST);

        NumericRangeQuery numericRangeQuery1 = NumericRangeQuery.newLongRange("price",0L,306000L,true,true);
        booleanQuery.add(numericRangeQuery1, BooleanClause.Occur.MUST);

        query(booleanQuery);
    }


    //封装搜索方法
    public void query(Query query) throws Exception{
        //创建查询对象
        Directory directory = FSDirectory.open(new File("products"));
        IndexReader indexReader = DirectoryReader.open(directory);

        IndexSearcher indexSearcher = new IndexSearcher(indexReader);

        //查询
        TopDocs topDocs = indexSearcher.search(query,4);

        System.out.println("命中数："+topDocs.totalHits);

        //获取查询结果中文档数组
        ScoreDoc[] scoreDocs = topDocs.scoreDocs;

        //遍历文档
        for (ScoreDoc scoreDoc:scoreDocs){
            System.out.println("文档ID:"+scoreDoc.doc);

            Document document = indexSearcher.doc(scoreDoc.doc);
            System.out.println("文档title:"+document.get("title"));
            System.out.println("price:"+document.get("price"));
            System.out.println("文档sellpoint:"+document.get("sellpoint"));
        }
    }

}

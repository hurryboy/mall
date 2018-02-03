package com.dbing.junit;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.*;
import org.apache.lucene.index.*;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.junit.Test;

import javax.print.Doc;
import java.io.File;

public class LuenceTest {

    /**
     * Luence创建索引库
     * @throws Exception
     */
    @Test
    public void testLuenceCreate() throws Exception{
        //1.定义文档
        Document document = new Document();
        //添加字段
        document.add(new LongField("id",123123L, Field.Store.YES));
        document.add(new TextField("title","三星 B9120 钛灰色 联通3G手机 双卡双待双通", Field.Store.YES));
        document.add(new StringField("sellpoint","下单即送10400毫安移动电源！再赠手机魔法盒！", Field.Store.YES));

        //2.定义目录
        Directory directory = FSDirectory.open(new File("index"));

        //3.定义分词器
        Analyzer analyzer = new StandardAnalyzer();

        //4.定义配置信息
        IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_4_10_2,analyzer);

        //5.定义IndexWriter对象
        IndexWriter indexWriter = new IndexWriter(directory,indexWriterConfig);

        //6.写入文档到索引库
        indexWriter.addDocument(document);

        //7.提交关闭
        indexWriter.commit();
        indexWriter.close();
    }


    /**
     * Luence查询文档
     * @throws Exception
     */
    @Test
    public void testLuenceQuery() throws Exception{
        //1.打开索引库位置
        DirectoryReader reader = DirectoryReader.open(FSDirectory.open(new File("index")));

        //2.创建搜索器对象
        IndexSearcher searcher = new IndexSearcher(reader);

        //3.创建解析器对象
        QueryParser queryParser = new QueryParser("title",new StandardAnalyzer());

        //4.解析关键字
        Query query = queryParser.parse("三");

        //5.执行搜索
        TopDocs docs = searcher.search(query,10);

        //6.查看搜索结果
        ScoreDoc[] scoreDocs = docs.scoreDocs;

        for (ScoreDoc doc:scoreDocs){
            //文档id
            int docId = doc.doc;
            System.out.println(docId);

            //获取文档内容
            Document document = searcher.doc(docId);
            System.out.println(document.get("title"));
        }
    }


    /**
     * Luence搜索文档
     */
    @Test
    public void searchLuence() throws Exception{

        //1.指定索引库，索引阅读器
        Directory directory = FSDirectory.open(new File("index"));
        IndexReader indexReader =  DirectoryReader.open(directory);

        //2.建立搜索查询对象
        IndexSearcher indexSearcher = new IndexSearcher(indexReader);

        //3.指定搜索字段和搜索类型---搜索条件
        //最小字段搜索
        Query query = new TermQuery(new Term("title","手"));

        //4.执行搜索----搜索条件，搜索记录数
        TopDocs docs = indexSearcher.search(query,10);

        //命中记录数
        System.out.println("命中记录数："+docs.totalHits);

        //获取文档
        ScoreDoc[] scoreDocs = docs.scoreDocs;

        //遍历文档内容
        for(ScoreDoc doc:scoreDocs){
            System.out.println("文档id:"+doc.doc);


            Document document = indexSearcher.doc(doc.doc);
            System.out.println("文档标题："+document.get("title"));
            System.out.println("文档卖点："+document.get("sellpoint"));
        }


    }



}

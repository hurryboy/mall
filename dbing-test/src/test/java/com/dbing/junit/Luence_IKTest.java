package com.dbing.junit;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.*;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.junit.Test;
import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.File;


public class Luence_IKTest {

    @Test
    public void IKTest() throws Exception{
        //1.创建IK分词器
        Analyzer analyzer = new IKAnalyzer();


        //2.创建文档
        Document document = new Document();
        document.add(new LongField("id",13123L, Field.Store.YES));
        document.add(new TextField("songlyric","我的小时候 吵闹任性的时候\n" +
                "我的外婆 总会唱歌哄我\n" +
                "夏天的午后 姥姥的歌安慰我\n" +
                "那首歌好像这样唱的\n" +
                "天黑黑 欲落雨", Field.Store.YES));
        document.add(new TextField("singer","孙燕姿", Field.Store.YES));

        //3.定义索引库
        Directory directory = FSDirectory.open(new File("IK"));

        //4.定义IndexWriter 写入文档
        IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_4_10_2,analyzer);
        IndexWriter indexWriter = new IndexWriter(directory,indexWriterConfig);

        //5.写入文档
        indexWriter.addDocument(document);

        indexWriter.commit();
        indexWriter.close();
    }

}

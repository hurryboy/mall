package com.dbing.search.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrQuery.ORDER;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbing.search.pojo.Product;
import com.dbing.search.pojo.SolrResult;

@Service
public class SearchService {

    @Autowired
    private HttpSolrServer httpSolrServer;

    public SolrResult search(String queryString, String cid, String price, Integer page, String sort) throws Exception {

        SolrQuery query = new SolrQuery();
        if (StringUtils.isNoneBlank(queryString)) {
            query.setQuery(queryString);
        }else{
            query.setQuery("*:*");
        }

        if (StringUtils.isNoneBlank(cid)) {
            //设置过滤条件
            query.setFilterQueries("cid:"+cid);
        }

        if (StringUtils.isNoneBlank(price)) {//0-9
            String[] split = price.split("-");
            query.setFilterQueries("price:["+split[0]+" TO "+split[1]+"]");
        }

        if (StringUtils.isNoneBlank(sort)) {
            if ("1".equals(sort)) {
                //设置排序条件
                query.setSort("id", ORDER.desc);
            }else{
                query.setSort("id", ORDER.asc);
            }
        }

        if (page == null) {
            page = 1;
        }
        //设置分页
        query.setStart((page-1)*20);
        query.setRows(20);


        //设置高亮显示
        query.setHighlight(true);
        query.addHighlightField("title");
        query.setHighlightSimplePre("<font style='color:red'>");
        query.setHighlightSimplePost("</font>");

        QueryResponse queryResponse = this.httpSolrServer.query(query);

        //获取结果
        SolrDocumentList results = queryResponse.getResults();
        //获取总条数
        long numFound = results.getNumFound();

        //获取高亮信息
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();

        List<Product> productList = new ArrayList<Product>();

        for (SolrDocument solrDocument : results) {
            Product product = new Product();
            product.setId(Long.parseLong(solrDocument.get("id").toString()));
            product.setCid(Long.parseLong(solrDocument.get("cid").toString()));
            product.setImage(solrDocument.get("image").toString());
            product.setPrice(Long.parseLong(solrDocument.get("price").toString()));
            product.setSellpoint(solrDocument.get("sellPoint").toString());
            product.setTitle((solrDocument.get("title").toString()));
            String statusStr = solrDocument.get("status").toString();
            Boolean stat = false;
            if ("1".equals(statusStr)) {
                stat = true;
            }
            product.setStatus(stat);

            List<String> list = highlighting.get(solrDocument.get("id")).get("title");

            //存在高亮
            if (list!=null && list.size()>0) {
                product.setTitle(list.get(0));
            }else{
                product.setTitle(solrDocument.get("title").toString());
            }

            productList.add(product);

        }

        Integer pageCount = (int)(numFound+20-1)/20;

        SolrResult solrResult = new SolrResult(page, pageCount, (int)numFound, productList);

        return solrResult;
    }


}
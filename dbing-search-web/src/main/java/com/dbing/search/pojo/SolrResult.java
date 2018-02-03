package com.dbing.search.pojo;

import java.io.Serializable;
import java.util.List;

public class SolrResult implements Serializable{

    //当前页
    private Integer curPage;

    //总页数
    private Integer pageCount;

    //总条数
    private Integer recordCount;

    //商品集合
    private List<?> productList;



    public SolrResult() {
        super();
    }

    public SolrResult(Integer curPage, Integer pageCount, Integer recordCount, List<?> productList) {
        super();
        this.curPage = curPage;
        this.pageCount = pageCount;
        this.recordCount = recordCount;
        this.productList = productList;
    }

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(Integer recordCount) {
        this.recordCount = recordCount;
    }

    public List<?> getProductList() {
        return productList;
    }

    public void setProductList(List<?> productList) {
        this.productList = productList;
    }

    @Override
    public String toString() {
        return "SolrResult [curPage=" + curPage + ", pageCount=" + pageCount + ", recordCount=" + recordCount
                + ", productList=" + productList + "]";
    }
}
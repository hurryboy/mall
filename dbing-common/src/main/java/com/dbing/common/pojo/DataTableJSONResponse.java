package com.dbing.common.pojo;

import java.util.List;

public class DataTableJSONResponse {
    Object sEcho;   //访问记录数
    Object iTotalRecords; // 查询的记录数
    Object iTotalDisplayRecords; // 过滤后的记录数
    List<?> aaData;         //显示数据

    public DataTableJSONResponse() {
        super();
    }

    public DataTableJSONResponse(List<?> aaData) {
        super();
        this.aaData = aaData;
    }

    public DataTableJSONResponse(Object sEcho, Object iTotalRecords,
                                 Object iTotalDisplayRecords, List<?> aaData) {
        super();
        this.sEcho = sEcho;
        this.iTotalRecords = iTotalRecords;
        this.iTotalDisplayRecords = iTotalDisplayRecords;
        this.aaData = aaData;
    }

    public Object getsEcho() {
        return sEcho;
    }

    public void setsEcho(Object sEcho) {
        this.sEcho = sEcho;
    }

    public Object getiTotalRecords() {
        return iTotalRecords;
    }

    public void setiTotalRecords(Object iTotalRecords) {
        this.iTotalRecords = iTotalRecords;
    }

    public Object getiTotalDisplayRecords() {
        return iTotalDisplayRecords;
    }

    public void setiTotalDisplayRecords(Object iTotalDisplayRecords) {
        this.iTotalDisplayRecords = iTotalDisplayRecords;
    }

    public List<?> getAaData() {
        return aaData;
    }

    public void setAaData(List<?> aaData) {
        this.aaData = aaData;
    }

    @Override
    public String toString() {
        return "DataTableJSONResponse [sEcho=" + sEcho + ", iTotalRecords="
                + iTotalRecords + ", iTotalDisplayRecords="
                + iTotalDisplayRecords + ", aaData=" + aaData + "]";
    }
}
package com.dbing.manager.pojo;

import javax.persistence.*;
import java.io.Serializable;

public class Content implements Serializable {
    @Id
    private Long id;

    /**
     * 内容类目ID
     */
    private Long categoryid;

    /**
     * 内容标题
     */
    private String title;

    /**
     * 子标题
     */
    private String subtitle;

    /**
     * 标题描述
     */
    private String titledesc;

    /**
     * 链接
     */
    private String url;

    /**
     * 图片绝对路径
     */
    private String pic;

    /**
     * 图片2
     */
    private String pic2;

    /**
     * 内容
     */
    private String content;

    /**
     * @return id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取内容类目ID
     *
     * @return categoryid - 内容类目ID
     */
    public Long getCategoryid() {
        return categoryid;
    }

    /**
     * 设置内容类目ID
     *
     * @param categoryid 内容类目ID
     */
    public void setCategoryid(Long categoryid) {
        this.categoryid = categoryid;
    }

    /**
     * 获取内容标题
     *
     * @return title - 内容标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置内容标题
     *
     * @param title 内容标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取子标题
     *
     * @return subtitle - 子标题
     */
    public String getSubtitle() {
        return subtitle;
    }

    /**
     * 设置子标题
     *
     * @param subtitle 子标题
     */
    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    /**
     * 获取标题描述
     *
     * @return titledesc - 标题描述
     */
    public String getTitledesc() {
        return titledesc;
    }

    /**
     * 设置标题描述
     *
     * @param titledesc 标题描述
     */
    public void setTitledesc(String titledesc) {
        this.titledesc = titledesc;
    }

    /**
     * 获取链接
     *
     * @return url - 链接
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置链接
     *
     * @param url 链接
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取图片绝对路径
     *
     * @return pic - 图片绝对路径
     */
    public String getPic() {
        return pic;
    }

    /**
     * 设置图片绝对路径
     *
     * @param pic 图片绝对路径
     */
    public void setPic(String pic) {
        this.pic = pic;
    }

    /**
     * 获取图片2
     *
     * @return pic2 - 图片2
     */
    public String getPic2() {
        return pic2;
    }

    /**
     * 设置图片2
     *
     * @param pic2 图片2
     */
    public void setPic2(String pic2) {
        this.pic2 = pic2;
    }

    /**
     * 获取内容
     *
     * @return content - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
    }
}
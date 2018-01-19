package com.dbing.manager.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "contentCategory")
public class Contentcategory implements Serializable {
    /**
     * 类目ID
     */
    @Id
    private Long id;

    /**
     * 父类目ID=0时，代表的是一级的类目
     */
    private Long parentid;

    /**
     * 分类名称
     */
    private String name;

    /**
     * 状态。可选值:1(正常),2(删除)
     */
    private Integer status;

    /**
     * 获取类目ID
     *
     * @return id - 类目ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置类目ID
     *
     * @param id 类目ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取父类目ID=0时，代表的是一级的类目
     *
     * @return parentid - 父类目ID=0时，代表的是一级的类目
     */
    public Long getParentid() {
        return parentid;
    }

    /**
     * 设置父类目ID=0时，代表的是一级的类目
     *
     * @param parentid 父类目ID=0时，代表的是一级的类目
     */
    public void setParentid(Long parentid) {
        this.parentid = parentid;
    }

    /**
     * 获取分类名称
     *
     * @return name - 分类名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置分类名称
     *
     * @param name 分类名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取状态。可选值:1(正常),2(删除)
     *
     * @return status - 状态。可选值:1(正常),2(删除)
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置状态。可选值:1(正常),2(删除)
     *
     * @param status 状态。可选值:1(正常),2(删除)
     */
    public void setStatus(Integer status) {
        this.status = status;
    }
}
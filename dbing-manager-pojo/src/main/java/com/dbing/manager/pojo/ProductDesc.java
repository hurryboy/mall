package com.dbing.manager.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "productdesc")
public class ProductDesc implements Serializable {
    /**
     * 商品ID
     */
    private Long id;

    /**
     * 商品描述
     */
    private String productdesc;

    /**
     * 获取商品ID
     *
     * @return id - 商品ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置商品ID
     *
     * @param id 商品ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取商品描述
     *
     * @return productdesc - 商品描述
     */
    public String getProductdesc() {
        return productdesc;
    }

    /**
     * 设置商品描述
     *
     * @param productdesc 商品描述
     */
    public void setProductdesc(String productdesc) {
        this.productdesc = productdesc;
    }
}
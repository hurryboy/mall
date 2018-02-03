package com.dbing.manager.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

public class Cart implements Serializable{
    /**
     * 自增ID
     */
    @Id
    private Long id;

    /**
     * 用户ID
     */
    @Column(name = "userId")
    private Long userId;

    /**
     * 商品ID
     */
    @Column(name = "productId")
    private Long productId;

    /**
     * 商品标题
     */
    @Column(name = "productTitle")
    private String productTitle;

    /**
     * 商品主图
     */
    @Column(name = "productImage")
    private String productImage;

    /**
     * 商品价格，单位为：分
     */
    @Column(name = "productPrice")
    private Long productPrice;

    /**
     * 购买数量
     */
    private Integer num;

    private Date created;

    private Date updated;

    /**
     * 获取自增ID
     *
     * @return id - 自增ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置自增ID
     *
     * @param id 自增ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取用户ID
     *
     * @return userId - 用户ID
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 设置用户ID
     *
     * @param userid 用户ID
     */
    public void setUserId(Long userid) {
        this.userId = userid;
    }

    /**
     * 获取商品ID
     *
     * @return productId - 商品ID
     */
    public Long getProductId() {
        return productId;
    }

    /**
     * 设置商品ID
     *
     * @param productid 商品ID
     */
    public void setProductId(Long productid) {
        this.productId = productid;
    }

    /**
     * 获取商品标题
     *
     * @return productTitle - 商品标题
     */
    public String getProductTitle() {
        return productTitle;
    }

    /**
     * 设置商品标题
     *
     * @param producttitle 商品标题
     */
    public void setProductTitle(String producttitle) {
        this.productTitle = producttitle;
    }

    /**
     * 获取商品主图
     *
     * @return productImage - 商品主图
     */
    public String getProductImage() {
        return productImage;
    }

    /**
     * 设置商品主图
     *
     * @param productimage 商品主图
     */
    public void setProductImage(String productimage) {
        this.productImage = productimage;
    }

    /**
     * 获取商品价格，单位为：分
     *
     * @return productPrice - 商品价格，单位为：分
     */
    public Long getProductPrice() {
        return productPrice;
    }

    /**
     * 设置商品价格，单位为：分
     *
     * @param productprice 商品价格，单位为：分
     */
    public void setProductPrice(Long productprice) {
        this.productPrice = productprice;
    }

    /**
     * 获取购买数量
     *
     * @return num - 购买数量
     */
    public Integer getNum() {
        return num;
    }

    /**
     * 设置购买数量
     *
     * @param num 购买数量
     */
    public void setNum(Integer num) {
        this.num = num;
    }

    /**
     * @return created
     */
    public Date getCreated() {
        return created;
    }

    /**
     * @param created
     */
    public void setCreated(Date created) {
        this.created = created;
    }

    /**
     * @return updated
     */
    public Date getUpdated() {
        return updated;
    }

    /**
     * @param updated
     */
    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}


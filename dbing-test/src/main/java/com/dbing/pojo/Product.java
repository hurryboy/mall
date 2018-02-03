package com.dbing.pojo;

import java.io.Serializable;

public class Product implements Serializable {

    private Long id;
    private String title;
    private String sellpoint;
    private Long price;
    private Integer num;
    private String image;
    private Long cid;
    private Byte status;

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", sellpoint='" + sellpoint + '\'' +
                ", price=" + price +
                ", num=" + num +
                ", image='" + image + '\'' +
                ", cid=" + cid +
                ", status=" + status +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getSellpoint() {
        return sellpoint;
    }


    public void setSellpoint(String sellpoint) {
        this.sellpoint = sellpoint;
    }

    /**
     * 获取商品价格，单位为：分
     *
     * @return price - 商品价格，单位为：分
     */
    public Long getPrice() {
        return price;
    }

    /**
     * 设置商品价格，单位为：分
     *
     * @param price 商品价格，单位为：分
     */
    public void setPrice(Long price) {
        this.price = price;
    }

    /**
     * 获取库存数量
     *
     * @return num - 库存数量
     */
    public Integer getNum() {
        return num;
    }

    /**
     * 设置库存数量
     *
     * @param num 库存数量
     */
    public void setNum(Integer num) {
        this.num = num;
    }

    /**
     * 获取商品图片
     *
     * @return image - 商品图片
     */
    public String getImage() {
        return image;
    }

    /**
     * 设置商品图片
     *
     * @param image 商品图片
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * 获取所属类目，叶子类目
     *
     * @return cid - 所属类目，叶子类目
     */
    public Long getCid() {
        return cid;
    }

    /**
     * 设置所属类目，叶子类目
     *
     * @param cid 所属类目，叶子类目
     */
    public void setCid(Long cid) {
        this.cid = cid;
    }

    /**
     * 获取商品状态，1-正常，2-下架，3-删除
     *
     * @return status - 商品状态，1-正常，2-下架，3-删除
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置商品状态，1-正常，2-下架，3-删除
     *
     * @param status 商品状态，1-正常，2-下架，3-删除
     */
    public void setStatus(Byte status) {
        this.status = status;
    }
}
package com.dbing.order.pojo;

public class Orderproduct {
	
	private Long productId;//商品id
	private String orderId;//订单id
	private Integer num;//商品购买数量
	private String title;//商品标题
	private Long price;//商品单价
	private Long totalFee;//商品总价
	private String imagePath;//图片路径
	
	public Long getproductId() {
		return productId;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public void setproductId(Long productId) {
		this.productId = productId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public double getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(Long totalFee) {
		this.totalFee = totalFee;
	}
	public Integer getNum() {
		return num;
	}
	
}

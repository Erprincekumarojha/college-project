package com.dts.pro.bean;

public class OrderShipModel {

	private String ordertype;
	private int custid;
	private int productid;
	private int quantity;
	private int hotelid;
	private String orderdate;
	public String getOrdertype() {
		return ordertype;
	}
	public void setOrdertype(String ordertype) {
		this.ordertype = ordertype;
	}
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getHotelid() {
		return hotelid;
	}
	public void setHotelid(int hotelid) {
		this.hotelid = hotelid;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	
}
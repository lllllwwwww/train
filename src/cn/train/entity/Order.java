package cn.train.entity;

public class Order {
    private int orderId;
    private String orderUserName;
    private String orderTrainNo;
    private String orderStartDate;
    
	public Order() {
		super();
	}
	public Order(int orderId, String orderUserName, String orderTrainNo, String orderStartDate) {
		super();
		this.orderId = orderId;
		this.orderUserName = orderUserName;
		this.orderTrainNo = orderTrainNo;
		this.orderStartDate = orderStartDate;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderUserName() {
		return orderUserName;
	}
	public void setOrderUserName(String orderUserName) {
		this.orderUserName = orderUserName;
	}
	public String getOrderTrainNo() {
		return orderTrainNo;
	}
	public void setOrderTrainNo(String orderTrainNo) {
		this.orderTrainNo = orderTrainNo;
	}
	public String getOrderStartDate() {
		return orderStartDate;
	}
	public void setOrderStartDate(String orderStartDate) {
		this.orderStartDate = orderStartDate;
	}
    
}

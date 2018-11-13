package cn.train.entity;

public class ShowOrder {
    private String orderStartDate;
    private String startDate;
    private String trainNo;
    private String start;
    private String arrive;
    private String name;
    private String price;
	public ShowOrder() {
		super();
	}
	public ShowOrder(String orderStartDate, String startDate, String trainNo, String start, String arrive,
			String name, String price) {
		super();
		this.orderStartDate = orderStartDate;
		this.startDate = startDate;
		this.trainNo = trainNo;
		this.start = start;
		this.arrive = arrive;
		this.name = name;
		this.price = price;
	}

	public String getOrderStartDate() {
		return orderStartDate;
	}

	public void setOrderStartDate(String orderStartDate) {
		this.orderStartDate = orderStartDate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getTrainNo() {
		return trainNo;
	}

	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getArrive() {
		return arrive;
	}

	public void setArrive(String arrive) {
		this.arrive = arrive;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
}

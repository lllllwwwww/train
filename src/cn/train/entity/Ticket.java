package cn.train.entity;

public class Ticket {
    private String trainNo;
    private String start;
    private String arrive;
    private String startDate;
    private String arriveDate;
    private String time;
    private int num;
    private double price;
    
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ticket(String trainNo, String start, String arrive, String startDate, String arriveDate, String time,
			int num, double price) {
		super();
		this.trainNo = trainNo;
		this.start = start;
		this.arrive = arrive;
		this.startDate = startDate;
		this.arriveDate = arriveDate;
		this.time = time;
		this.num = num;
		this.price = price;
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
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getArriveDate() {
		return arriveDate;
	}
	public void setArriveDate(String arriveDate) {
		this.arriveDate = arriveDate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Ticket [trainNo=" + trainNo + ", start=" + start + ", arrive=" + arrive + ", startDate=" + startDate
				+ ", arriveDate=" + arriveDate + ", time=" + time + ", num=" + num + ", price=" + price + "]";
	}
    
}

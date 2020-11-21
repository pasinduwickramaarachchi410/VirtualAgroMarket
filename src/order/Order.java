package order;

import java.util.Date;

public class Order {
	private String orderID;
	private String buyerID;
	private Date oderDate;
	private int cropQuantity;
	private String cropName;
	private String cropType;
	private double totalAmount;
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getBuyerID() {
		return buyerID;
	}
	public void setBuyerID(String buyerID) {
		this.buyerID = buyerID;
	}
	public Date getOderDate() {
		return oderDate;
	}
	public void setOderDate(Date oderDate) {
		this.oderDate = oderDate;
	}
	public int getCropQuantity() {
		return cropQuantity;
	}
	public void setCropQuantity(int cropQuantity) {
		this.cropQuantity = cropQuantity;
	}
	public String getCropName() {
		return cropName;
	}
	public void setCropName(String cropName) {
		this.cropName = cropName;
	}
	public String getCropType() {
		return cropType;
	}
	public void setCropType(String cropType) {
		this.cropType = cropType;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	

}

package crop;

import java.util.Date;

public class Crop {
	private String cropID;
	private String farmerID;
	private String cropName;
	private String cropType;
	private String farmerAddr;
	private int qty;
	private double unitPrice;
	private Date harvestDate;
	public String getCropID() {
		return cropID;
	}
	public void setCropID(String cropID) {
		this.cropID = cropID;
	}
	public String getFarmerID() {
		return farmerID;
	}
	public void setFarmerID(String farmerID) {
		this.farmerID = farmerID;
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
	public String getFarmerAddr() {
		return farmerAddr;
	}
	public void setFarmerAddr(String farmerAddr) {
		this.farmerAddr = farmerAddr;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Date getHarvestDate() {
		return harvestDate;
	}
	public void setHarvestDate(Date harvestDate) {
		this.harvestDate = harvestDate;
	}
	
	

}

package com.landers.airline.dto;



public class ManagerDto {

    private String month;
    private long totalPrice;

    
    public ManagerDto() {
	}

	public ManagerDto(String month, long totalPrice) {
		super();
		this.month = month;
		this.totalPrice = totalPrice;
	}
	


	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "ManagerDto [month=" + month + ", totalPrice=" + totalPrice + "]";
	}
    
    
	
}

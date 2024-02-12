package com.landers.airline.dto;

public class QnaChartDto {

	private String category;
	
	public QnaChartDto() {
			}

	public QnaChartDto(String category) {
		super();
		this.category = category;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "QnaChartDto [category=" + category + "]";
	}
	
	
}

package com.landers.airline.dto;

public class cityChartDto {

	private String cityName;
	private int value;
	
	public cityChartDto() {
			}

	public cityChartDto(String cityName, int value) {
		super();
		this.cityName = cityName;
		this.value = value;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "cityChartDto [cityName=" + cityName + ", value=" + value + "]";
	}

	
}

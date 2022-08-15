package com.dts.aoc.dto;

public class VegMarketPriceDTO {
	private int vmpID;
	private int marketID;
	private int vegID;
	private String vegCost;
	private String vegCostPer;
	private String vegCostStatus;
	private String vegAvailable;
	private String vegCostDate;
	private String vegCostTime;
	private String loginID;

	public int getVmpID() {
		return vmpID;
	}

	public void setVmpID(int vmpID) {
		this.vmpID = vmpID;
	}

	public int getMarketID() {
		return marketID;
	}

	public void setMarketID(int marketID) {
		this.marketID = marketID;
	}

	public int getVegID() {
		return vegID;
	}

	public void setVegID(int vegID) {
		this.vegID = vegID;
	}

	public String getVegCost() {
		return vegCost;
	}

	public void setVegCost(String vegCost) {
		this.vegCost = vegCost;
	}

	public String getVegCostPer() {
		return vegCostPer;
	}

	public void setVegCostPer(String vegCostPer) {
		this.vegCostPer = vegCostPer;
	}

	public String getVegCostStatus() {
		return vegCostStatus;
	}

	public void setVegCostStatus(String vegCostStatus) {
		this.vegCostStatus = vegCostStatus;
	}

	public String getVegAvailable() {
		return vegAvailable;
	}

	public void setVegAvailable(String vegAvailable) {
		this.vegAvailable = vegAvailable;
	}

	public String getVegCostDate() {
		return vegCostDate;
	}

	public void setVegCostDate(String vegCostDate) {
		this.vegCostDate = vegCostDate;
	}

	public String getVegCostTime() {
		return vegCostTime;
	}

	public void setVegCostTime(String vegCostTime) {
		this.vegCostTime = vegCostTime;
	}

	public String getLoginID() {
		return loginID;
	}

	public void setLoginID(String loginID) {
		this.loginID = loginID;
	}

}

package com.techelevator.model;

public class Brewery {

	private int id;
	private String name;
	private String daysOfOperation;
	private String hrsOfOperation;
	private String historyBio;
	private int addressId;
	
	public Brewery() {
		
	}
	
	public Brewery(int id, String name, String daysOfOperation, String hrsOfOperation, String historyBio, int addressId) {
		this.id = id;
		this.name = name;
		this.daysOfOperation = daysOfOperation;
		this.hrsOfOperation = hrsOfOperation;
		this.historyBio = historyBio;
		this.setAddressId(addressId);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDaysOfOperation() {
		return daysOfOperation;
	}

	public void setDaysOfOperation(String daysOfOperation) {
		this.daysOfOperation = daysOfOperation;
	}

	public String getHrsOfOperation() {
		return hrsOfOperation;
	}

	public void setHrsOfOperation(String hrsOfOperation) {
		this.hrsOfOperation = hrsOfOperation;
	}

	public String getHistoryBio() {
		return historyBio;
	}

	public void setHistoryBio(String historyBio) {
		this.historyBio = historyBio;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
	
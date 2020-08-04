package com.techelevator.model;

public class Brewery {

	private String name;
	private String daysOfOperation;
	private String hrsOfOperation;
	private String historyBio;
	private Address address;
	
	public Brewery(String name, String daysOfOperation, String hrsOfOperation, String historyBio, Address address) {
		this.name = name;
		this.daysOfOperation = daysOfOperation;
		this.hrsOfOperation = hrsOfOperation;
		this.historyBio = historyBio;
		this.setAddress(address);
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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
}
	
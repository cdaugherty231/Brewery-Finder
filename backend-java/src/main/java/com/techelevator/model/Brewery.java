package com.techelevator.model;

public class Brewery {

	private int brewery_id;
	private String name;
	private String brewer_username;
	private String days_operation;
	private String hours_operation;
	private String history;
	private String address_street;
	private String address_city;
	private String address_state;
	private int address_zip;
	private String phone_number;
	private boolean isactive;
	
	public Brewery() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getdays_operation() {
		return days_operation;
	}

	public void setdays_operation(String days_operation) {
		this.days_operation = days_operation;
	}

	public String gethours_operation() {
		return hours_operation;
	}

	public void sethours_operation(String hours_operation) {
		this.hours_operation = hours_operation;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String historyBio) {
		this.history = historyBio;
	}

	public int getBrewery_id() {
		return brewery_id;
	}

	public void setBrewery_id(int id) {
		this.brewery_id = id;
	}

	public String getAddress_street() {
		return address_street;
	}

	public void setAddress_street(String address_street) {
		this.address_street = address_street;
	}

	public String getAddress_city() {
		return address_city;
	}

	public void setAddress_city(String address_city) {
		this.address_city = address_city;
	}

	public String getAddress_state() {
		return address_state;
	}

	public void setAddress_state(String address_state) {
		this.address_state = address_state;
	}

	public int getAddress_zip() {
		return address_zip;
	}

	public void setAddress_zip(int address_zip) {
		this.address_zip = address_zip;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getBrewer_username() {
		return brewer_username;
	}

	public void setBrewer_username(String brewer_username) {
		this.brewer_username = brewer_username;
	}

	public boolean getIsactive() {
		return isactive;
	}

	public void setIsactive(boolean isactive) {
		this.isactive = isactive;
	}
}
	
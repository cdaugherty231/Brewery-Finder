package com.techelevator.model;

public class Address {
	private int id;
	private String streetAddress;
	private String city;
	private String state;
	private int zipcode;
	private String phoneNumber;
	
	public Address() {
		
	}
	
	public Address(int id,String streetAddress, String city, String state, int zipcode, String phoneNumber) {
		this.setId(id);
		this.setStreetAddress(streetAddress);
		this.setCity(city);
		this.setState(state);
		this.setZipcode(zipcode);
		this.setPhoneNumber(phoneNumber);
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

}
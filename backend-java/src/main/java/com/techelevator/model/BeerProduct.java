package com.techelevator.model;

public class BeerProduct {
	private int beer_id;
	private boolean isactive;
	private String beer_name;
	private String beer_description;
	private String abv;
	private String beer_type;
	
	public BeerProduct() {
		
	}
	
	public int getBeer_id() {
		return beer_id;
	}

	public void setBeer_id(int beer_id) {
		this.beer_id = beer_id;
	}

	public String getBeer_name() {
		return beer_name;
	}

	public void setBeer_name(String beer_name) {
		this.beer_name = beer_name;
	}

	public String getBeer_description() {
		return beer_description;
	}

	public void setBeer_description(String beer_description) {
		this.beer_description = beer_description;
	}

	public String getAbv() {
		return abv;
	}

	public void setAbv(String abv) {
		this.abv = abv;
	}

	public String getBeer_type() {
		return beer_type;
	}

	public void setBeer_type(String beer_type) {
		this.beer_type = beer_type;
	}

	public boolean getIsactive() {
		return isactive;
	}

	public void setIsactive(boolean isactive) {
		this.isactive = isactive;
	}

}

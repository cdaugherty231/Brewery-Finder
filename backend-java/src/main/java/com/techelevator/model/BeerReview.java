package com.techelevator.model;

public class BeerReview {
	
	private int review_id;
	private String beer_name;
	private String beer_rating;
	private String beer_review;
	
	public BeerReview() {
		
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public String getBeer_name() {
		return beer_name;
	}

	public void setBeer_name(String beer_name) {
		this.beer_name = beer_name;
	}

	public String getBeer_rating() {
		return beer_rating;
	}

	public void setBeer_rating(String beer_rating) {
		this.beer_rating = beer_rating;
	}

	public String getBeer_review() {
		return beer_review;
	}

	public void setBeer_review(String beer_review) {
		this.beer_review = beer_review;
	}
}

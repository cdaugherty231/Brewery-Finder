package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.BeerReview;

public interface BeerReviewDAO {

	// Get all beerReviews list
	public List<BeerReview> getAll();
	
	// Create beerReview
	public BeerReview createBeerReview(BeerReview reviewToAdd);
	
	// get by id
	public BeerReview getById(int review_id);
	
	// Delete beerReview
	
}

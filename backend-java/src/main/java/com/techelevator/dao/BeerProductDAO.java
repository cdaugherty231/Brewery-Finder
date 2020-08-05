package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.BeerProduct;


public interface BeerProductDAO {
	
	// Get all beers list
	public List<BeerProduct> getAll();
	
	// Find brewery by name
	
	// Create beer
	public BeerProduct createBeerProduct(BeerProduct beerProductToAdd);
}

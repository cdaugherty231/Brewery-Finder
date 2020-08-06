package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.BeerProduct;


public interface BeerProductDAO {
	
	// Get all beers list
	public List<BeerProduct> getAll();
	
	public BeerProduct getById(int beer_id);
	
	public List<BeerProduct> getBreweryBeerList(String name);
	
	// Find brewery by name
	
	// Create beer
	public BeerProduct createBeerProduct(BeerProduct beerProductToAdd);
}

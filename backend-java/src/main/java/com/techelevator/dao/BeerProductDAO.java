package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.BeerProduct;


public interface BeerProductDAO {
	
	// Get all beers list
	public List<BeerProduct> getAll();
	
	public BeerProduct getById(int beer_id);
	
	public List<BeerProduct> getBreweryBeerList(String name);

	public void deleteBeer(int beer_id);
	
	public BeerProduct updateBeerProduct(BeerProduct updated);
	
	// Create beer
	public BeerProduct createBeerProduct(BeerProduct beerProductToAdd);
	
	public BeerProduct toggleActiveStatus(int beer_id);
	
}

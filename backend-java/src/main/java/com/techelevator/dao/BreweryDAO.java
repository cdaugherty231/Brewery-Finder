package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.Brewery;

public interface BreweryDAO {
	
	// Get all breweries list
	public List<Brewery> getAll();
	
	// Find brewery by name
	public Brewery getByName();
	
	// Create brewery
	public Brewery createBrewery(Brewery breweryToAdd);


}

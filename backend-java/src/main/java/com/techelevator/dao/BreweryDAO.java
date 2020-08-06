package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.Brewery;

public interface BreweryDAO {
	
	// Get all breweries list
	public List<Brewery> getAll();
	
	// Find brewery by name
	public Brewery getByName(String name);
	
	// Create brewery
	public Brewery createBrewery(Brewery breweryToAdd);
	
	// Update Brewery info
	public Brewery updateBrewery(Brewery updatedBrewery);
	
	// Delete Brewery

	public Brewery getById(int id);

}

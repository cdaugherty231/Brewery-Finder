package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.dao.BeerProductDAO;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.BeerProduct;
import com.techelevator.model.Brewery;

@RestController
@CrossOrigin
public class BreweryController {
	
	private BreweryDAO breweryDAO;
	private BeerProductDAO beerProductDAO;
	
	public BreweryController(BreweryDAO breweryDAO, BeerProductDAO beerProductDAO) {
		this.breweryDAO = breweryDAO;
		this.beerProductDAO = beerProductDAO;
	}
	
	@RequestMapping(path = "/breweries", method = RequestMethod.GET)
	public List<Brewery> getBreweryList(){	
		return breweryDAO.getAll();
	}
	
	@RequestMapping(path = "/breweries/{brewery_id}", method = RequestMethod.GET)
	public Brewery getBreweryById(@PathVariable int brewery_id){	
		return breweryDAO.getById(brewery_id);
	}
	
	@RequestMapping(path = "/breweries", method = RequestMethod.POST)
	public Brewery getBreweryList(@RequestBody Brewery breweryToAdd){	
		return breweryDAO.createBrewery(breweryToAdd);
	}
	
	@RequestMapping(path = "/breweries", method = RequestMethod.PUT)
	public Brewery updateBrewery(@RequestBody Brewery breweryToUpdate) {
		return breweryDAO.updateBrewery(breweryToUpdate);
	}
	
	@RequestMapping(path = "/breweries/beers/{name}", method = RequestMethod.GET)
	public List<BeerProduct> getBreweryBeers(@PathVariable String name){
		return beerProductDAO.getBreweryBeerList(name);
		
	}

}


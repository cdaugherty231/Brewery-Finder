package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.dao.BeerProductDAO;
import com.techelevator.model.BeerProduct;

@RestController
@CrossOrigin
public class BeerProductController {
	
	private BeerProductDAO beerProductDao;
	
	public BeerProductController(BeerProductDAO beerProductDao) {
		this.beerProductDao = beerProductDao;
	}
	
	@RequestMapping(path = "/beerproduct/{beer_id}", method = RequestMethod.GET)
	public BeerProduct getBreweryById(@PathVariable int beer_id){	
		return beerProductDao.getById(beer_id);
	}

	@RequestMapping(path = "/beerproduct", method = RequestMethod.GET)
	public List<BeerProduct> getBeers(){
		return beerProductDao.getAll();
	}
	
	@RequestMapping(path = "/beerproduct", method = RequestMethod.POST)
	public BeerProduct createBeer(@RequestBody BeerProduct beerProductToAdd){
		return beerProductDao.createBeerProduct(beerProductToAdd);
	}
}

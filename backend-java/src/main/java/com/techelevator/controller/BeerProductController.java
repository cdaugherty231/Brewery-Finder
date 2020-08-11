package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public BeerProduct getBeerById(@PathVariable int beer_id){	
		return beerProductDao.getById(beer_id);
	}

	@RequestMapping(path = "/beerproduct", method = RequestMethod.GET)
	public List<BeerProduct> getBeers(){
		return beerProductDao.getAll();
	}
	
	@RequestMapping(path = "/beerproduct", method = RequestMethod.POST)
	public BeerProduct createBeer(@RequestBody BeerProduct beerProductToAdd, @RequestParam String breweryName){
		return beerProductDao.createBeerProduct(beerProductToAdd, breweryName);
	}
	
	@RequestMapping(path = "/beerproduct/{beer_id}", method = RequestMethod.DELETE)
	public void deleteBeer(@PathVariable int beer_id){	
		beerProductDao.deleteBeer(beer_id); 
	}
	
	@RequestMapping(path = "beerproduct/togglestatus/{beer_id}", method = RequestMethod.PUT)
	public BeerProduct toggleActiveStatus(int beer_id) {
		return beerProductDao.toggleActiveStatus(beer_id);
	}
	
	@RequestMapping(path = "beerproduct/{beer_id}", method = RequestMethod.PUT)
	public BeerProduct updateBeerProduct(BeerProduct updatedBeer) {
		return beerProductDao.updateBeerProduct(updatedBeer);
	}
	
	
	
}

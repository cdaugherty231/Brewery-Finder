package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;

@RestController
@CrossOrigin
public class BreweryController {
	
	private BreweryDAO breweryDAO;
	
	public BreweryController(BreweryDAO breweryDAO) {
		this.breweryDAO = breweryDAO;
		// TODO Auto-generated constructor stub
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
	
	@RequestMapping(path = "/breweries/find", method = RequestMethod.GET)
	public List<Brewery> getBreweryList(@RequestParam String breweryName){	
		return breweryDAO.getAll();
	}
	
	@RequestMapping(path = "/breweries", method = RequestMethod.PUT)
	public Brewery updateBrewery(@RequestBody Brewery breweryToUpdate) {
		return breweryDAO.updateBrewery(breweryToUpdate);
	}

}


package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
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
	
	//@ResponseStatus(HttpStatus.)
	@RequestMapping(path = "/breweries", method = RequestMethod.GET)
	public List<Brewery> getBreweryList(){	
		return breweryDAO.getAll();
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
		return null;
	}

}


//@ResponseStatus(HttpStatus.CREATED)
//@RequestMapping(value = "/register", method = RequestMethod.POST)
//public void register(@Valid @RequestBody RegisterUserDTO newUser) {
//    if (userDAO.usernameExists(newUser.getUsername())) {
//        throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "User Already Exists.");
//    } else {
//        userDAO.create(newUser.getUsername(),newUser.getPassword(), newUser.getRole());
//    }
//}
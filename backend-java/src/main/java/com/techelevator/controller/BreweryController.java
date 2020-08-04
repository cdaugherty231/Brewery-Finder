package com.techelevator.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.model.Brewery;

@RestController
public class BreweryController {
	
	//@ResponseStatus(HttpStatus.)
	@RequestMapping(value = "/getBrewery")
	public List<Brewery> getBreweryList(){
		List<Brewery> breweryList = new ArrayList<>();
		
		return breweryList;
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
package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
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

	@RequestMapping(path = "/beerproduct", method = RequestMethod.GET)
	public List<BeerProduct> getBeers(@RequestParam String role){
		return beerProductDao.getAll();
	}
}

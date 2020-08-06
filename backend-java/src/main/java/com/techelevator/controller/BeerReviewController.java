package com.techelevator.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.dao.BeerReviewDAO;
import com.techelevator.model.BeerReview;

@RestController
@CrossOrigin
public class BeerReviewController {
	
	private BeerReviewDAO beerReviewDAO;
	
	public BeerReviewController(BeerReviewDAO beerReviewDAO) {
		this.beerReviewDAO = beerReviewDAO;
	}

	@RequestMapping(path = "/beerreview", method = RequestMethod.GET)
	public List<BeerReview> getReviews(){
		return beerReviewDAO.getAll();
	}
	
	@RequestMapping(path = "/beerreviewt", method = RequestMethod.POST)
	public BeerReview createBeer(@RequestBody BeerReview beerReviewToAdd){
		return beerReviewDAO.createBeerReview(beerReviewToAdd);
	}
	
}

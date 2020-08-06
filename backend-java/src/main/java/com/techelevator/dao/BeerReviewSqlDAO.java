package com.techelevator.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;
import com.techelevator.model.BeerReview;

@Service
public class BeerReviewSqlDAO implements BeerReviewDAO{
	
	private JdbcTemplate jdbcTemplate;
	
	public BeerReviewSqlDAO(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<BeerReview> getAll() {
		List<BeerReview> reviewsList = new ArrayList<>();
		String sql = "SELECT"
				+ " review_id,"
				+ " beer_name,"
				+ " beer_rating,"
				+ " beer_review"
				+ " FROM beerreview;";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		
		while(rs.next()) {
			reviewsList.add(mapRowToBeerList(rs));
		}
		
		return reviewsList;
	}

	@Override
	public BeerReview createBeerReview(BeerReview reviewToAdd) {
		String sql = "INSERT INTO beerreview ("
				+ " beer_name,"
				+ " beer_rating,"
				+ " beer_review)"
				+ " VALUES(?, ?, ?)"
				+ " RETURNING review_id;";
		
		int resultID = jdbcTemplate.queryForObject(sql, Integer.class,
				reviewToAdd.getBeer_name(),
				reviewToAdd.getBeer_rating(),
				reviewToAdd.getBeer_review());
		
		reviewToAdd.setReview_id(resultID);
		return reviewToAdd;
	}
	
	private BeerReview mapRowToBeerList(SqlRowSet rs) {
		BeerReview review = new BeerReview();
		
		review.setReview_id(rs.getInt("review_id"));
		review.setBeer_name(rs.getString("beer_name"));
		review.setBeer_rating(rs.getString("beer_rating"));
		review.setBeer_review(rs.getString("beer_review"));
		
		return review;
	}

}

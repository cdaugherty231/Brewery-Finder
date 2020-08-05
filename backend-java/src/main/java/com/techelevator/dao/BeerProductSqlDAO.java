package com.techelevator.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.techelevator.model.BeerProduct;

public class BeerProductSqlDAO implements BeerProductDAO{
	private JdbcTemplate jdbcTemplate;
	
	public BeerProductSqlDAO(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<BeerProduct> getAll() {
		List<BeerProduct> beerList = new ArrayList<>();
		
		String sql = "Select beer_id, beer_name, beer_description, abv, beer_type FROM beerproduct";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		while(rs.next()) {
			beerList.add(mapRowToBeerProduct(rs));
		}
		
		return beerList;
	}

	@Override
	public BeerProduct createBeerProduct(BeerProduct beerProductToAdd) {
		String sql = "INSERT INTO beerproduct ("
				+ " beer_id,"
				+ " beer_name,"
				+ " beer_description,"
				+ " abv,"
				+ " beer_type)"
				+ " VALUES( ?, ?, ?, ?, ?) RETURNING beer_id";
		int resultID = jdbcTemplate.queryForObject(sql, Integer.class,
				beerProductToAdd.getBeer_name(),
				beerProductToAdd.getBeer_description(),
				beerProductToAdd.getAbv(),
				beerProductToAdd.getBeer_type());
		beerProductToAdd.setBeer_id(resultID);
		
		return beerProductToAdd;
	}
	
	private BeerProduct mapRowToBeerProduct(SqlRowSet rs) {
		BeerProduct beerProduct = new BeerProduct();
		
		beerProduct.setBeer_id(rs.getInt("beer_id"));
		beerProduct.setBeer_name(rs.getString("beer_name"));
		beerProduct.setBeer_description(rs.getString("beer_description"));
		beerProduct.setAbv(rs.getString("avb"));
		beerProduct.setBeer_type(rs.getString("beer_type"));
		
		return beerProduct;
	}
}

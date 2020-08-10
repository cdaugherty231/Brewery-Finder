package com.techelevator.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;

import com.techelevator.model.BeerProduct;

@Service
public class BeerProductSqlDAO implements BeerProductDAO{
	private JdbcTemplate jdbcTemplate;
	
	public BeerProductSqlDAO(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<BeerProduct> getAll() {
		List<BeerProduct> beerList = new ArrayList<>();
		
		String sql = "Select beer_id,"
				+ " isactive,"
				+ " beer_name,"
				+ " beer_description,"
				+ " abv,"
				+ " beer_type"
				+ " FROM beerproduct";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		while(rs.next()) {
			beerList.add(mapRowToBeerProduct(rs));
		}
		
		return beerList;
	}

	@Override
	public BeerProduct createBeerProduct(BeerProduct beerProductToAdd, String breweryName) {
		String sql = "INSERT INTO beerproduct ("
				+ " isactive,"
				+ " beer_name,"
				+ " beer_description,"
				+ " abv,"
				+ " beer_type)"
				+ " VALUES( ?, ?, ?, ?, ?) RETURNING beer_id";
		int resultID = jdbcTemplate.queryForObject(sql, Integer.class,
				beerProductToAdd.getIsactive(),
				beerProductToAdd.getBeer_name(),
				beerProductToAdd.getBeer_description(),
				beerProductToAdd.getAbv(),
				beerProductToAdd.getBeer_type());
		beerProductToAdd.setBeer_id(resultID);
		
		addBeerToBrewery(breweryName, resultID);
		
		return beerProductToAdd;
	}
	
	private BeerProduct mapRowToBeerProduct(SqlRowSet rs) {
		BeerProduct beerProduct = new BeerProduct();
		
		beerProduct.setIsactive(rs.getBoolean("isactive"));
		beerProduct.setBeer_id(rs.getInt("beer_id"));
		beerProduct.setBeer_name(rs.getString("beer_name"));
		beerProduct.setBeer_description(rs.getString("beer_description"));
		beerProduct.setAbv(rs.getString("abv"));
		beerProduct.setBeer_type(rs.getString("beer_type"));
		
		return beerProduct;
	}

	@Override
	public BeerProduct getById(int beer_id) {
		BeerProduct found = null;
		String sql = "Select beer_id,"
				+ " isactive,"
				+ " beer_name,"
				+ " beer_description,"
				+ " abv,"
				+ " beer_type"
				+ " FROM beerproduct"
				+ " WHERE beer_id = ?;";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, beer_id);
		if(rs.next()) {
			found = mapRowToBeerProduct(rs);
		}
		return found;
	}

	@Override
	public List<BeerProduct> getBreweryBeerList(String name) {
		List<BeerProduct> breweryBeerList = new ArrayList<>();
		
		String sql = "Select beerproduct.beer_id,"
				+ " beerproduct.isactive,"
				+ " beerproduct.beer_name,"
				+ " beerproduct.beer_description,"
				+ " beerproduct.abv,"
				+ " beerproduct.beer_type"
				+ " FROM beerproduct"
				+ " INNER JOIN brewery_beerproduct"
				+ " ON beerproduct.beer_id = brewery_beerproduct.beer_id"
				+ " INNER JOIN brewery"
				+ " ON brewery.brewery_id = brewery_beerproduct.brewery_id"
				+ " WHERE LOWER(brewery.name) = LOWER(?) AND beerproduct.isactive = TRUE;";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, name);
		
		while(rs.next()) {
			breweryBeerList.add(mapRowToBeerProduct(rs));
		}
		
		return breweryBeerList;
	}
	
	@Override
	public BeerProduct updateBeerProduct(BeerProduct updated) {
		String sql = "UPDATE beerproduct SET"
				+ " isactive = ?,"
				+ " beer_name = ?,"
				+ " beer_description = ?,"
				+ " abv = ?,"
				+ " beer_type = ?,"
				+ " WHERE beer_id = ?;";
		jdbcTemplate.update(sql,
				updated.getIsactive(),
				updated.getBeer_name(),
				updated.getBeer_description(),
				updated.getAbv(),
				updated.getBeer_type(),
				updated.getBeer_id());
		
		
		return getById(updated.getBeer_id());
	}

	@Override
	public void deleteBeer(int beer_id) {
		String sql = " DELETE FROM beerproduct_beerreview WHERE beer_id = ?;"
				   + " DELETE FROM brewery_beerproduct WHERE beer_id = ?;"
				   + " DELETE FROM beerproduct WHERE beer_id = ?;";
		jdbcTemplate.update(sql, beer_id, beer_id, beer_id);
	}

	@Override
	public BeerProduct toggleActiveStatus(int beer_id) {
		String sql = " UPDATE beerproduct"
				   + " SET isactive = NOT isactive"
				   + " WHERE beer_id = ?;";
		jdbcTemplate.update(sql, beer_id);
		
		return getById(beer_id);
	}
	
	private void addBeerToBrewery(String breweryName, int beerID) {
		String sql = "INSERT INTO brewery_beerproduct"
				+ " (brewery_id, beer_id)"
				+ " VALUES ((SELECT brewery_id FROM brewery WHERE LOWER(name) = LOWER(?)), ?)";
		jdbcTemplate.update(sql, breweryName, beerID);
	}
}

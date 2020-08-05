package com.techelevator.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;

import com.techelevator.model.Brewery;

@Service
public class BrewerySqlDAO implements BreweryDAO{
	
	private JdbcTemplate jdbcTemplate;
    
    public BrewerySqlDAO(JdbcTemplate jdbcTemplate) {
    	this.jdbcTemplate = jdbcTemplate;
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Brewery> getAll() {
		// TODO Auto-generated method stub
		List<Brewery> breweryList = new ArrayList<>();
		String sql = "SELECT"
				+ " brewery_id,"
				+ " name,"
				+ " address_street,"
				+ " address_city,"
				+ " address_state,"
				+ " address_zip,"
				+ " phone_number,"
				+ " history,"
				+ " days_operation,"
				+ " hours_operation FROM brewery";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		while(rs.next()) {
			breweryList.add(mapRowToBrewery(rs));
		}
		
		return breweryList;
	}
	
	@Override
	public Brewery getByName() {
		Brewery breweryToReturn = null;
		String sql = "SELECT"
				+ " brewery_id,"
				+ " name,"
				+ " address_street,"
				+ " address_city,"
				+ " address_state,"
				+ " address_zip,"
				+ " phone_number,"
				+ " history,"
				+ " days_operation,"
				+ " hours_operation"
				+ " FROM brewery WHERE LOWER(name) = LOWER(?)";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		
		if(rs.next()) {
			breweryToReturn = mapRowToBrewery(rs);
		}
		return breweryToReturn;
	}
	
	private Brewery mapRowToBrewery(SqlRowSet rs) {
        Brewery brewery = new Brewery();
        brewery.setBrewery_id(rs.getLong("brewery_id"));
        brewery.setName(rs.getString("name"));
        brewery.setAddress_street(rs.getString("address_street"));
        brewery.setAddress_city(rs.getString("address_city"));
        brewery.setAddress_zip(rs.getInt("address_zip"));
        brewery.setAddress_state(rs.getString("address_state"));
        brewery.setPhone_number(rs.getString("phone_number"));
        brewery.setHistory(rs.getString("history"));
        brewery.setDaysOfOperation(rs.getString("days_operation"));
        brewery.setHrsOfOperation(rs.getString("hours_operation"));
        
        return brewery;
    }

	@Override
	public Brewery createBrewery(Brewery breweryToAdd) {
		String sql = "INSERT INTO brewery ("
				+ " name,"
				+ " address_street,"
				+ " address_city,"
				+ " address_state,"
				+ " address_zip,"
				+ " phone_number,"
				+ " history,"
				+ " days_operation,"
				+ " hours_operation)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?) RETURNING brewery_id";
		int resultID = jdbcTemplate.queryForObject(sql, Integer.class,
				breweryToAdd.getName(),
				breweryToAdd.getAddress_street(), 
				breweryToAdd.getAddress_city(),
				breweryToAdd.getAddress_state(),
				breweryToAdd.getAddress_zip(),
				breweryToAdd.getPhone_number(),
				breweryToAdd.getHistory(),
				breweryToAdd.getDaysOfOperation(),
				breweryToAdd.getHrsOfOperation());
		
		breweryToAdd.setBrewery_id(resultID);
		
		return breweryToAdd;
	}



}

package com.techelevator.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.techelevator.model.Brewery;

public class BrewerySqlDAO implements BreweryDAO{
	
	private JdbcTemplate jdbcTemplate;
    private static final String ALL_FIELDS = "breweryid, name, breweryaddressid, history, days_operations, hours_operationid";
    
    public BrewerySqlDAO(JdbcTemplate jdbcTemplate) {
    	this.jdbcTemplate = jdbcTemplate;
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Brewery> getAll() {
		// TODO Auto-generated method stub
		List<Brewery> breweryList = new ArrayList<>();
		String sql = "SELECT " + ALL_FIELDS + "FROM brewery";
		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		while(rs.next()) {
			breweryList.add(mapRowToBrewery(rs));
		}
		
		return breweryList;
	}
	
	private Brewery mapRowToBrewery(SqlRowSet rs) {
        Brewery brewery = new Brewery();
        brewery.setId(rs.getInt("breweryid"));
        brewery.setName(rs.getString("name"));
        brewery.setAddressId(rs.getInt("addressid"));
        brewery.setHistoryBio(rs.getString("history"));
        brewery.setDaysOfOperation(rs.getString("days_operation"));
        brewery.setHrsOfOperation(rs.getString("hours_operationid"));
        
        return brewery;
    }

	@Override
	public Brewery createBrewery(Brewery breweryToAdd) {
		String sql = "INSERT INTO brewery (name, breweryaddressid, history, days_operations, hours_operationid)"
				+ " VALUES(?, ?, ?, ?, ?)";
		
		return null;
	}



}

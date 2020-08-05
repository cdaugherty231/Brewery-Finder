package com.techelevator.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.dao.UserDAO;
import com.techelevator.model.User;

@RestController
@CrossOrigin
public class UserController {
	private UserDAO userDao;
	
	public UserController(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	@RequestMapping(path = "/users/role", method = RequestMethod.GET)
	public List<User> getUsersByRole(@RequestParam String role){
		return userDao.findByRole(role);
	}
	
//	@RequestMapping(path = "/users", method = RequestMethod.GET)
//	public List<User> getAllUsers(){
//		return userDao.get
//	}

}

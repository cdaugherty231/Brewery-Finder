package com.techelevator.dao;

import java.util.List;

import com.techelevator.model.User;

public interface UserDAO {

    User findByUsername(String username);

    boolean usernameExists(String username);
    
    boolean create(String username, String password, String role);
    
    List<User> findByRole(String role);
}

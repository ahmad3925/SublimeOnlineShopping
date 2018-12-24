package com.Shopy.DAO;

import java.util.List;

import com.Shopy.model.Cart;
import com.Shopy.model.User;


public interface UserDAO {

	public boolean addUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(int userid);

	public User getSingleUser(int userid);
	public List<User> getAllUser();
	public User getUserByEmail(String username);

}

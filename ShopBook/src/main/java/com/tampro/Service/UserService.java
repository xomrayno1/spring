package com.tampro.Service;

import java.util.List;

import com.tampro.Domain.Users;

public interface UserService {
	
    public List<Users> getAllBook();
	
	public boolean addUsers(Users user);	
    
	public Users getUsersById(int id);

	public void updateUser(Users users);
	
	public void deleteUser(Users users);
	
	public Users getUsersByUsername(String username);

	public List<Users> getAllUser();
	
}

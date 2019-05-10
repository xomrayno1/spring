package com.tampro.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Config.SecurityUtility;
import com.tampro.Domain.Users;
import com.tampro.Repository.UserRepository;
import com.tampro.Service.UserService;
@Service
@Transactional
public class UserServiceImpl  implements UserService{
	
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;	
	

	@Override
	public List<Users> getAllBook() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public boolean addUsers(Users user) {
		Users local =  userService.getUsersByUsername(user.getUsername());
		if(local!=null) { // da co nguoi dung , nen ko the tao duoc nua
			return false;
		}
		user.setPassword(SecurityUtility.passwordEncoder().encode(user.getPassword()));
		userRepository.save(user);
		return true;
	}

	@Override
	public Users getUsersById(int id) {
		// TODO Auto-generated method stub
		return userRepository.getUserById(id);
	}

	@Override
	public void updateUser(Users user) {
		// TODO Auto-generated method stub
		Users local = userRepository.getUserById(user.getId());
		user.setPassword(SecurityUtility.passwordEncoder().encode(user.getPassword()));
		local.setAddress(user.getAddress());
		local.setFirstname(user.getFirstname());
		local.setPassword(user.getPassword());
		local.setUsername(user.getUsername());
		local.setRole(user.getRole());
		local.setLastname(user.getLastname());
		local.setPhone(user.getPhone());
		userRepository.save(local);
	}

	@Override
	public void deleteUser(Users user) {
		userRepository.delete(user);
		
	}

	@Override
	public Users getUsersByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.getUserByUsername(username);
	}

	@Override
	public List<Users> getAllUser() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}
	

}

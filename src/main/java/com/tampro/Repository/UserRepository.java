package com.tampro.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.Users;
@Repository
@Transactional
public interface UserRepository extends JpaRepository<Users, Integer> {
	public Users getUserById(int id);
	
	
	public Users getUserByUsername(String username);
}

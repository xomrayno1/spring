package com.tampro.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.Orders;
import com.tampro.Domain.Users;

@Transactional
public interface OrdersRepository  extends JpaRepository<Orders, Integer>{

	@Query("SELECT e From Orders e WHERE e.user = ?1")
	public List<Orders> getOrdersByUser(Users user);
	
	
	public Orders getOrdersById(int id);
	
	public Orders findById(int id);
	
	@Modifying //hỗ trợ query update + delete
	@Query("DELETE FROM Orders e where e.id = ?1")
	public void deleteOrder(int id);
}

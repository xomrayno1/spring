package com.tampro.Service.Impl;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.CartItem;
import com.tampro.Domain.Orders;
import com.tampro.Domain.Users;
import com.tampro.Repository.CartItemRepository;
import com.tampro.Repository.OrdersRepository;
import com.tampro.Repository.UserRepository;
import com.tampro.Service.OrdersService;

@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrdersRepository ordersRepo;
	@Autowired
	UserRepository userRepo;
	@Autowired
	CartItemRepository cartItemRepo;
	@Override
	public void addOrders(Orders orders) {
		// TODO Auto-generated method stub
		orders.setStatus(0); // chưa xử lý
		orders.setDate(LocalDate.now().toString());
		ordersRepo.save(orders);
	}

	@Override
	public List<Orders> getAllOrders() {
		// TODO Auto-generated method stub
		return ordersRepo.findAll();
	}

	@Override
	public List<Orders> getAllOrdersByUser(Users user) {
		// TODO Auto-generated method stub
		return ordersRepo.getOrdersByUser(user);
	}

	@Override
	public Orders getOrdersById(int id) {
		// TODO Auto-generated method stub
		return ordersRepo.getOrdersById(id);
	}

	

	@Override
	public void deleteOrder(int id) {
		// TODO Auto-generated method stub
		Orders orders = ordersRepo.findById(id);
		for(CartItem cart : orders.getList()) {
			cart.setOrders(null);
			cartItemRepo.save(cart);
			cartItemRepo.delete(cart);
		}
		orders.setList(null);
		ordersRepo.save(orders);
		ordersRepo.deleteOrder(id);
	}

	@Override
	public void updateOrders(Orders ord) {
		// TODO Auto-generated method stub
		Orders order =ordersRepo.getOrdersById(ord.getId());
		order.setStatus(ord.getStatus());
		ordersRepo.save(order);
	}

	

}

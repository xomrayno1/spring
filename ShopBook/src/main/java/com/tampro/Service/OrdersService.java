package com.tampro.Service;

import java.util.List;

import com.tampro.Domain.Orders;
import com.tampro.Domain.Users;

public interface OrdersService {

    public void addOrders(Orders orders);
	
	public List<Orders> getAllOrders();
	
	public List<Orders> getAllOrdersByUser(Users user);
	
	public Orders getOrdersById(int id);
	
	
	
	public void deleteOrder(int id);
	
	public void updateOrders(Orders ord);
}

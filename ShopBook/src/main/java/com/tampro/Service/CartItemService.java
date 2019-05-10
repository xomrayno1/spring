package com.tampro.Service;

import java.util.List;

import com.tampro.Domain.CartItem;

public interface CartItemService {
	
	
	public void addCartitem(CartItem cart);
	
	public List<CartItem> getAllCartItem();
	
	

}

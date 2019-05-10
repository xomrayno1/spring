package com.tampro.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.CartItem;
import com.tampro.Repository.CartItemRepository;
import com.tampro.Service.CartItemService;

@Service
@Transactional
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	CartItemRepository cartRepo;
	
	
	@Override
	public void addCartitem(CartItem cart) {
		// TODO Auto-generated method stub
		cartRepo.save(cart);
	}

	@Override
	public List<CartItem> getAllCartItem() {
		// TODO Auto-generated method stub
		return cartRepo.findAll();
	}

}

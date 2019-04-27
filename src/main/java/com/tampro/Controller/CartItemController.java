package com.tampro.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.tampro.Domain.CartItem;
import com.tampro.Service.BookService;

@Controller
public class CartItemController {

	@Autowired
	BookService bookSer;
	
	@GetMapping("/delete-items/{id}")
	public String deleteItem(ModelMap map,@PathVariable("id") int id,HttpSession session) {
		
		
		List<CartItem> list = (List<CartItem>)session.getAttribute("cart");
		
		
		for(CartItem cartItem : list) {
			if(cartItem.getBook().getId()==id) {
				list.remove(cartItem);
				break;
			}
		}
		session.setAttribute("cart", list);
		return "redirect:/check-out";
	}
	@GetMapping("/check-out")
	public String checkOut(ModelMap map) {		
		return "checkout";
	}
	
}

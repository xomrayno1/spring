package com.tampro.API;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tampro.Service.BookService;

@RestController
@RequestMapping("/API")
public class ProductControllerAPI {
	
	@Autowired
	BookService bookService;
	
	@GetMapping(value = "quantity_product_api/{id}")
	public int quantity(@PathVariable("id")int id) {
		return bookService.getBookById(id).getQuantity();
	}

}

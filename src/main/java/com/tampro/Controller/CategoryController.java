package com.tampro.Controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tampro.Domain.Book;
import com.tampro.Domain.BookCategory;
import com.tampro.Service.BookCategoryService;
import com.tampro.Service.BookService;

@RequestMapping("/danh-muc")
@Controller
public class CategoryController {
	
	@Autowired
	BookCategoryService bookCategory;
	@Autowired
	BookService bookSer;
	
	

	@GetMapping(value = "/{url}")
	public String category(ModelMap map,@PathVariable("url")String url) {
		
		int size = 0 ;
		BookCategory category = bookCategory.getBookCategoryById(Integer.parseInt(url));
		Pageable pageable = PageRequest.of(size,4);
		Page<Book>  page  = bookSer.findByCategory(category, pageable);
		List<Book> list = new ArrayList<>();
		for(Book books : page) {
			list.add(books);
		}
		map.addAttribute("book", list);
		map.addAttribute("totalrow",page.getTotalPages() );
		size = size + 1;
		map.addAttribute("size", size);
		map.addAttribute("idcategory",Integer.parseInt(url));
		return "product";
	}
	@GetMapping(value = "/{url}/{size}")
	public String category(ModelMap map,@PathVariable("url")String url,@PathVariable("size")String size) {
		
	
		BookCategory category = bookCategory.getBookCategoryById(Integer.parseInt(url));
		Pageable pageable = PageRequest.of(Integer.parseInt(size)-1,4);
		Page<Book>  page  = bookSer.findByCategory(category, pageable);
		List<Book> list = new ArrayList<>();
		for(Book books : page) {
			list.add(books);
		}
		map.addAttribute("book", list);
		map.addAttribute("totalrow",page.getTotalPages() );
		
		map.addAttribute("size", size);
		map.addAttribute("idcategory",Integer.parseInt(url));
		return "product";
	}
	
	
	
}

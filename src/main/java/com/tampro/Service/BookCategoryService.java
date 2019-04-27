package com.tampro.Service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.tampro.Domain.BookCategory;

@Service
public interface BookCategoryService { // lay book tu book
	 
	public List<BookCategory> getAllBookCategory();
	
	
	public BookCategory getBookCategoryById(int id);

	public void updateBookCategory(BookCategory bookCategory);
	
	public void deleteBookCategory(BookCategory bookCategory);
	
	
}

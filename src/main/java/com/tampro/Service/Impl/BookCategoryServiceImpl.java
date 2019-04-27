package com.tampro.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.tampro.Domain.BookCategory;
import com.tampro.Repository.BookCategoryRepository;
import com.tampro.Service.BookCategoryService;

@Service
public class BookCategoryServiceImpl  implements BookCategoryService{

	@Autowired
	BookCategoryRepository bookCategoryRepository;

	@Override
	public List<BookCategory> getAllBookCategory() {
		// TODO Auto-generated method stub
		return bookCategoryRepository.findAll();
	}

	@Override
	public BookCategory getBookCategoryById(int id) {
		// TODO Auto-generated method stub
		return bookCategoryRepository.getBookCategoryById(id);
	}

	@Override
	public void updateBookCategory(BookCategory bookCategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBookCategory(BookCategory bookCategory) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}

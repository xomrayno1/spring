package com.tampro.Repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.BookCategory;

@Repository
@Transactional
public interface BookCategoryRepository extends JpaRepository<BookCategory, Integer>{

	
	
	public BookCategory getBookCategoryById(int id);
	
	Page<BookCategory> findById(int id, Pageable pageable); 
}

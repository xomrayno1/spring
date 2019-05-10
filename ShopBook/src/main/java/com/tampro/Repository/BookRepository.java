package com.tampro.Repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.Book;
import com.tampro.Domain.BookCategory;

@Repository
@Transactional
public interface BookRepository  extends JpaRepository<Book, Integer>{

	@Query("SELECT e FROM Book e where e.url = ?1")
	public Book getBookByUrl(String url);
	
	public Book getBookById(int id);
	
	
	@Query("SELECT e FROM Book e where e.author LIKE %?1% or e.name LIKE %?2% ")
	
	public List<Book> getBookByAuthorOrName(String author,String name);
	
	 Page<Book> findAll(Pageable pageable); // lay ra tat ca sach
	 
	  
	 Page<Book> findBybookCategory(BookCategory category, Pageable pageable); 
	 
	 
	//select * from book where author like  ' Đặc Đặc%' or  name like 'dám%';
	
	
	
}

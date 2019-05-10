package com.tampro.Service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.tampro.Domain.Book;
import com.tampro.Domain.BookCategory;

public interface BookService { // lay book tu book
	 
	public List<Book> getAllBook();
	
	public Book getBookByUrl(String url);
	
	public Book getBookById(int id);

	public void updateBook(Book book);
	
	public void deleteBook(Book book);
	
	 Page<Book> findByCategory(BookCategory category, Pageable pageable); 
	 
	 public void addBook(Book book);
	 public List<Book> getBookByAuthorOrName(String author,String name);
}

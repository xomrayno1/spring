package com.tampro.Service.Impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.Normalizer;
import java.time.LocalDate;
import java.util.List;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.tampro.Domain.Book;
import com.tampro.Domain.BookCategory;
import com.tampro.Repository.BookRepository;
import com.tampro.Service.BookService;

@Service
public class BookServiceImpl  implements BookService{

	@Autowired
	BookRepository bookRepository;
	
	@Override
	public List<Book> getAllBook() {
		// TODO Auto-generated method stub
		return bookRepository.findAll();
	}



	@Override
	public Book getBookById(int id) {
		// TODO Auto-generated method stub
		return bookRepository.getBookById(id);
	}

	@Override
	public void updateBook(Book book) {
		Book books = bookRepository.getBookById(book.getId()); // lay ra id sach 
		books.setAuthor(book.getAuthor());
		books.setBookCategory(book.getBookCategory());
		books.setDescription(book.getDescription());
		books.setImage(book.getImage());
		books.setLanguage(book.getImage());
		books.setName(book.getName());
		books.setPrice(book.getPrice());
		books.setPublisher(books.getPublisher());
		books.setReleaseDate(book.getReleaseDate());
		books.setQuantity(book.getQuantity());
		books.setUrl(book.getUrl());
		// TODO Auto-generated method stub
		bookRepository.save(book);
	}

	@Override
	public void deleteBook(Book book) {
		// TODO Auto-generated method stub
		bookRepository.delete(book);
	}



	@Override
	public Book getBookByUrl(String url) {
		// TODO Auto-generated method stub
		return bookRepository.getBookByUrl(url);
	}



	@Override
	public Page<Book> findByCategory(BookCategory category, Pageable pageable) {
		// TODO Auto-generated method stub
		return bookRepository.findBybookCategory(category, pageable);
	}



	@Override
	public void addBook(Book book) {
		// TODO Auto-generated method stub
		
		 book.setUrl(covertStringToURL(book.getName()));
		book.setReleaseDate(LocalDate.now().toString());
	     bookRepository.save(book);
		
	}
	
	public String  covertStringToURL(String str) {
		String temp = Normalizer.normalize(str, Normalizer.Form.NFD);
		 Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
	     String value =   pattern.matcher(temp).replaceAll("") ;//.toLowerCase().replaceAll(" ", "-").replaceAll("đ", "d");
	     // đoạn ở sau ta có thể để mã hòa làm url , space = - 
	     try {
			String url = URLEncoder.encode(value,"UTF-8");
			return  url;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       
	       return "";  
	}



	@Override
	public List<Book> getBookByAuthorOrName(String author, String name) {
		// TODO Auto-generated method stub
		return bookRepository.getBookByAuthorOrName(author, name);
	}

}

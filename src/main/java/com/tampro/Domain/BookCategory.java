package com.tampro.Domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class BookCategory {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private  String name;
    @OneToMany(mappedBy = "bookCategory", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
   
    private Set<Book> books;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Book> getBooks() {
		return books;
	}
	public void setBooks(Set<Book> books) {
		this.books = books;
	}
    
    
    

}

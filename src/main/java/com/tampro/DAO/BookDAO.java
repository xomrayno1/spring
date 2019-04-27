package com.tampro.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.tampro.Domain.Book;
import com.tampro.Domain.BookCategory;
import com.tampro.Service.BookCategoryService;

@Component
public class BookDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	BookCategoryService bookcateService;
	
	
	
	public  List<Book> getProductDescDateLimit8(){
		String sql = "select * from book order by(release_date) desc  limit 8";
		
		
		
		return jdbcTemplate.query(sql, new Object[] {}, new RowMapper<Book>() {

			@Override
			public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Book book = new Book();
				book.setAuthor(rs.getString("author"));
				book.setId(rs.getInt("id"));
				book.setDescription("description");
				book.setImage(rs.getString("image"));
				book.setLanguage(rs.getString("language"));
				book.setName(rs.getString("name"));
				book.setPrice(rs.getDouble("price"));
				book.setPublisher(rs.getString("publisher"));
				book.setReleaseDate(rs.getString("release_date"));
				int id = (rs.getInt("book_category_id"));
				BookCategory bookcate = bookcateService.getBookCategoryById(id);
				book.setBookCategory(bookcate);
				book.setQuantity(rs.getInt("quantity"));
				book.setUrl(rs.getString("url"));			
				return book;
			}
			
		});
	}

}

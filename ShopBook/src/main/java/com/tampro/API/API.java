package com.tampro.API;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tampro.Domain.Book;
import com.tampro.Domain.Comment;
import com.tampro.Domain.Users;
import com.tampro.Service.BookService;
import com.tampro.Service.CommentService;
import com.tampro.Service.UserService;

@RestController
@RequestMapping("/API")
public class API {
	
	@Autowired
	BookService bookService;
	@Autowired
	CommentService commentService;
	@Autowired
	UserService userService;
	
	@GetMapping(value = "quantity_product_api/{id}")
	public int quantity(@PathVariable("id")int id) {
		return bookService.getBookById(id).getQuantity();
	}
	@GetMapping(value = "check-login")
	public boolean check() {
		Authentication authentication =SecurityContextHolder.getContext().getAuthentication();
		if(authentication instanceof AnonymousAuthenticationToken) {
			return false;
		}else {
			return true;
		}
	}
	@PostMapping(value = "add-comment/{book}")
	public void addComment(@RequestBody Comment comment,@PathVariable("book")int id) {
		Authentication authentication =SecurityContextHolder.getContext().getAuthentication();
		Book book = bookService.getBookById(id);
		Users users = userService.getUsersByUsername(authentication.getName());
		comment.setUsers(users);
		comment.setBook(book);
		String date = LocalDate.now().toString();
		comment.setDate(Date.valueOf(date));
		commentService.addComment(comment);
	}
	@GetMapping(value = "All-comment/{id}")
	public List<Comment> getAllComment(@PathVariable("id") int id) {
		//List<String> listString = new ArrayList<String>();
		//for(Comment list : commentService.getAllCommentByIdBook(id)){
		//	listString.add(list.getContent());
		//}
		List<Comment> list = commentService.getAllCommentByIdBook(id);
		for(Comment comment : list) {
			Users user = new Users();
			user.setUsername(comment.getUsers().getUsername());
			comment.setBook(null);
			comment.setUsers(user);
		}
	    return list;
	}
	
	

}

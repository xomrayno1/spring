package com.tampro.Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tampro.Constrains.AdminPath;
import com.tampro.Domain.Book;
import com.tampro.Domain.Orders;
import com.tampro.Domain.Users;
import com.tampro.Service.BookCategoryService;
import com.tampro.Service.BookService;
import com.tampro.Service.OrdersService;
import com.tampro.Service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	BookCategoryService bookCategoryService;
	@Autowired
	BookService bookservice;
	@Autowired
	UserService userservice;
	@Autowired
	OrdersService ordersService;

	@GetMapping(value = { "/", "/home" })
	public String home() {

		return "homeAdmin";
	}

	@GetMapping(path =AdminPath.book)
	public String book(ModelMap map) {
		map.addAttribute("book", bookservice.getAllBook());
		return "book";
	}

	@GetMapping(path =AdminPath.user)
	public String user(ModelMap map) {
		map.addAttribute("user", userservice.getAllUser());
		return "user";
	}

	@GetMapping(path = AdminPath.formAddBook)
	public String addbook(ModelMap map) {

		map.addAttribute("book", new Book());
		map.addAttribute("listCategory", bookCategoryService.getAllBookCategory());
		return "formbook";
	}

	@PostMapping(path = AdminPath.addbook)
	public String addbook(ModelMap map, @ModelAttribute("book") Book book) {

		System.out.println(book.getName());
		File file = new File("C:\\Users\\Admin\\eclipse-workspace\\ShopBook\\src\\main\\resources\\static\\images\\"
				+ book.getMultipart().getOriginalFilename());
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			fileOutputStream.write(book.getMultipart().getBytes());
			book.setImage("images/" + book.getMultipart().getOriginalFilename());
			fileOutputStream.close();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		bookservice.addBook(book);
		map.addAttribute("msg", "Thêm Thành Công");
		return "formbook";
	}

	@GetMapping(path = AdminPath.formAddUser)
	public String adduser(ModelMap map) {

		map.addAttribute("user", new Users());
		return "formuser";
	}

	@PostMapping(path = AdminPath.addUser)
	public String adduser(ModelMap map, @Valid @ModelAttribute("user") Users user, BindingResult result) {

		if (result.hasErrors()) {
			return "formuser";
		}
		String regex ="[a-zA-Z]";
		if(user.getUsername().matches(regex)) { // nếu username ko có kí tự số thì ta đi kiểm tra bình thường
			if (userservice.addUsers(user) == false) {
				System.out.println("Tạo Không Thành Công");
				map.addAttribute("msg", "Thêm Thất Bại");
			} else {
				System.out.println("Tạo  Thành Công");
				map.addAttribute("msg", "Thêm Thành công");
				map.addAttribute("user", new Users());
			}
		}
		else { // nếu có số thì thất bại luôn
			System.out.println("Tạo Không Thành Công");
			map.addAttribute("msg", "Thêm Thất Bại");
		}
		

		return "formuser";
	}

	@GetMapping("/delete-user/{id}")
	public String deleteUser(ModelMap map, @PathVariable("id") int id) {

		Users user = userservice.getUsersById(id);
		userservice.deleteUser(user);
		return "redirect:/admin/user";
	}

	@GetMapping("/delete-book/{id}")
	public String deleteBook(ModelMap map, @PathVariable("id") int id) {

		Book book = bookservice.getBookById(id);
		bookservice.deleteBook(book);
		return "redirect:/admin/book";
	}

	@GetMapping("/update-book/{id}")
	public String updateBook(ModelMap map, @PathVariable("id") int id) {

		map.addAttribute("book", bookservice.getBookById(id));
		map.addAttribute("listCategory", bookCategoryService.getAllBookCategory());

		return "updateBook";
	}
	@GetMapping("/update-user/{id}")
	public String updateUser(ModelMap map, @PathVariable("id") int id) {

		map.addAttribute("user", userservice.getUsersById(id));
		return "updateUser";
	}
	@PostMapping("/update-user")
	public String updateUser(ModelMap map, @ModelAttribute("user") Users user) {

		userservice.updateUser(user);
		
		return "redirect:/admin/user";
	}
	@GetMapping("/order-complete-process") // order đã xử lý 
	public String orderProcess(ModelMap map) {
      List<Orders> list = new ArrayList<Orders>();
      for(Orders ord : ordersService.getAllOrders()) {
    	  if(ord.getStatus()==1) {
    		  list.add(ord);
    	  }
      }     
		map.addAttribute("orders",list);
		return "ordercomplete";
	}
	@GetMapping("/order-no-process") // order đã xử lý 
	public String orderNoProcess(ModelMap map) {
		 List<Orders> list = new ArrayList<Orders>();
	      for(Orders ord : ordersService.getAllOrders()) {
	    	  if(ord.getStatus()==0) {
	    		  list.add(ord);
	    	  }
	      }     
			map.addAttribute("orders",list);
		return "ordernocomplete";
	}
	@GetMapping("/detail-order/{id}") 
	public String detailOrder(ModelMap map,@PathVariable("id")int id) {		
		map.addAttribute("order",ordersService.getOrdersById(id));		
		return "detailorderadmin";
	}
	@GetMapping("/confirm-order/{id}") 
	public String confirmOrder(ModelMap map,@PathVariable("id")int id) {		
		Orders order = ordersService.getOrdersById(id);
		order.setStatus(1);
		ordersService.updateOrders(order);
		return "redirect:/admin/order-complete-process";
	}

}

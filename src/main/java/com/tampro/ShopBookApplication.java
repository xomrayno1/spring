package com.tampro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.tampro.Service.BookCategoryService;
import com.tampro.Service.BookService;
import com.tampro.Service.CartItemService;
import com.tampro.Service.OrdersService;
import com.tampro.Service.UserService;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.tampro")
public class ShopBookApplication implements CommandLineRunner {
	@Autowired
	BookService bookSer;
	@Autowired
	UserService userSer;
	@Autowired
	OrdersService orderSer;
	@Autowired
	CartItemService cartSer;
	@Autowired
	BookCategoryService bookcategorySer;

	public static void main(String[] args) {
		SpringApplication.run(ShopBookApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		/*Orders ord = new Orders();
		List<CartItem> listcart = new ArrayList<CartItem>();
		Users us = userSer.getUsersById(1); // user

		Book book1 = bookSer.getBookById(1); // 2 sach
		Book book2 = bookSer.getBookById(2);

		CartItem cart = new CartItem(); // cart
		cart.setBook(book1);
		cart.setQuantity(5);
		cart.setPrice(500);

		CartItem cart1 = new CartItem();
		cart1.setBook(book2);
		cart1.setQuantity(3);
		cart1.setPrice(600);

		cart.setOrders(ord); // set order de no lay key cua order do , neu k set = null
		cart1.setOrders(ord);// set order de no lay key cua order do , neu k set = null

		listcart.add(cart); // add vao lisst
		listcart.add(cart1);

		ord.setPrice(500);
		ord.setList(listcart); // sau khi set day du vao list thi add no vao
		ord.setUser(us);

		orderSer.addOrders(ord);

		
		*/
		//jdbc:mysql://localhost:3306/shopbook?useUnicode=yes&characterEncoding=UTF-8
		//Users user = userSer.getUsersByUsername("asdsad");
		//System.out.println(user.getLastname());
		/*
		 * 		String redmi1 = "YÊU ANH TỪ CÁI NHÌN ĐẦU TIÊN";
		String url1 = "http://localhost:8080/" + URLEncoder.encode(redmi1, "UTF-8");
		
		System.out.println(url1);
		*/
		
		//https://www.oodlestechnologies.com/blogs/How-To-Configure-The-Interceptor-With-Spring-Boot-Application //HandlerInterceptorAdapter
		
		//Book book = bookSer.getBookByUrl("D%C3%A1m+M%C6%A1+%C6%AF%E1%BB%9Bc+S%E1%BA%BD+Kh%C3%B4ng+C%C3%B2n+S%E1%BB%A3+H%C3%A3i");
		//System.out.println(book.getName());
		/*
		Set<Book> listBook =  bookcategorySer.getBookCategoryById(3).getBooks();
		for(Book b : listBook) {
			System.out.println(b.getName());
		}
		
		System.out.println(LocalDate.now().toString());
		String str = "Nguyễn Chí tâm";
		
		String temp = Normalizer.normalize(str, Normalizer.Form.NFD);
		System.out.println(temp);
		 Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
	       String value = pattern.matcher(temp).replaceAll("") ;
	    		   //.toLowerCase().replaceAll(" ", "-").replaceAll("đ", "d");
	       System.out.println(value);
	       */
		
		
	}

}

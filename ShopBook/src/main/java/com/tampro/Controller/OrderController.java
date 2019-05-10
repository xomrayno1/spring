package com.tampro.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tampro.Domain.Book;
import com.tampro.Domain.CartItem;
import com.tampro.Domain.Orders;
import com.tampro.Domain.Users;
import com.tampro.Service.BookService;
import com.tampro.Service.CartItemService;
import com.tampro.Service.OrdersService;
import com.tampro.Service.UserService;

@Controller
public class OrderController {

	@Autowired
	BookService bookSer;
	@Autowired
	UserService usersSer;
	@Autowired
	CartItemService cartItemService;
	@Autowired
	OrdersService ordersService;

	@GetMapping("/add-to-cart/{id}")
	public String Order(ModelMap map, HttpSession session, @PathVariable("id") int id) {

		Object ob = session.getAttribute("cart");
		Book localbook = bookSer.getBookById(id);
		if(localbook.getQuantity()==0) {
			return "redirect:/home";
		}

		if (ob == null) { // chua co 1 san pham nao cartitem
			List<CartItem> listCartItem = new ArrayList<CartItem>();
			Book book = bookSer.getBookById(id);
			CartItem cartItem = new CartItem();
			cartItem.setBook(book);
			cartItem.setQuantity(1);
			cartItem.setPrice(book.getPrice() * 1);
			listCartItem.add(cartItem);
			session.setAttribute("cart", listCartItem);

		} else // nếu đã có giỏ hàng
		{

			boolean kt = true;
			List<CartItem> listCartItem = (List<CartItem>) ob;// ép kiểu
			Book book = bookSer.getBookById(id);
			for (CartItem cart : listCartItem) { // kiểm tra sản phẩm add vào đã có trong giỏ nếu có tăng quantity
				if (cart.getBook().getId() == id) {
					cart.setQuantity(cart.getQuantity() + 1); // set quantity+1
					cart.setPrice(cart.getBook().getPrice() * cart.getQuantity());
					kt = false; // có rồi ta cho false để nó k vào trong if
					break;
				}
			}

			if (kt == true) {
				CartItem cartItem = new CartItem();
				cartItem.setBook(book);
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setPrice(book.getPrice() * cartItem.getQuantity());
				listCartItem.add(cartItem);
			}
			// nếu sản phẩm đó chưa có
			session.setAttribute("cart", listCartItem);
		}
		return "redirect:/home";
	}

	@PostMapping("/add-to-cart")
	public String Order(ModelMap map, HttpSession session, @RequestParam("id") int id,
			@RequestParam("quantity") int quantity) {
		Object ob = session.getAttribute("cart");
		if (ob == null) { // chua co 1 san pham nao cartitem
			List<CartItem> listCartItem = new ArrayList<CartItem>();
			Book book = bookSer.getBookById(id);
			CartItem cartItem = new CartItem();
			cartItem.setBook(book);
			cartItem.setQuantity(quantity);
			cartItem.setPrice(book.getPrice() * quantity);
			listCartItem.add(cartItem);
			session.setAttribute("cart", listCartItem);

		} else // nếu đã có giỏ hàng
		{

			boolean kt = true;
			List<CartItem> listCartItem = (List<CartItem>) ob;// ép kiểu
			Book book = bookSer.getBookById(id);
			for (CartItem cart : listCartItem) { // kiểm tra sản phẩm add vào đã có trong giỏ nếu có tăng quantity
				if (cart.getBook().getId() == id) {
					cart.setQuantity(cart.getQuantity() + quantity); // set quantity+1
					cart.setPrice(cart.getBook().getPrice() * cart.getQuantity());
					kt = false; // có rồi ta cho false để nó k vào trong if
					break;
				}
			}
			if (kt == true) {
				CartItem cartItem = new CartItem();
				cartItem.setBook(book);
				cartItem.setQuantity(cartItem.getQuantity() + quantity);
				cartItem.setPrice(book.getPrice() * cartItem.getQuantity());
				listCartItem.add(cartItem);
			}
			// nếu sản phẩm đó chưa có
			session.setAttribute("cart", listCartItem);
		}
		return "redirect:/home";
	}

	@GetMapping(value = { "/thanh-toan" })
	public String pay(ModelMap map, HttpSession session) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication instanceof AnonymousAuthenticationToken) { // nếu như authencation là 1 Anonymous thì tức nó
																		// chưa đăng nhập
			return "redirect:/dang-nhap"; // chưa đăng nhập // giá trị của authencation.getName() là AnonymousUser

		} else // đã đăng nhập // sau khi đăng nhập thì authencation k phải là anonymous ẩn
				// danh nữa

		{
			Users user = usersSer.getUsersByUsername(authentication.getName());
			if (user.checkProfile()) {// đủ điều kiện
				List<CartItem> listCartItem = (List<CartItem>) session.getAttribute("cart");
				Orders order = new Orders();
				int totalprice = 0;
				for (CartItem cart : listCartItem) {
					cart.setOrders(order);
					// cartItemService.addCartitem(cart);
					totalprice += cart.getPrice();
				}
				order.setPrice(totalprice);
				order.setList(listCartItem);
				order.setUser(user);
				ordersService.addOrders(order);
				session.removeAttribute("cart");
				return "redirect:/user/lich-su-dat-hang";
			} else {// không đủ điều kiện
				return "redirect:/user/profile";
			}
		}

	}

}

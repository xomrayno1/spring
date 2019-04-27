package com.tampro.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.tampro.Domain.Users;
import com.tampro.Service.OrdersService;
import com.tampro.Service.UserService;

@Controller
public class UsersController {

	@Autowired
	UserService usersService;
	@Autowired
	OrdersService orderSer;

	@PostMapping(value = "/users/register") // dang ki
	public String register(ModelMap map, @Valid @ModelAttribute("users") Users users, BindingResult result) {
		if (result.hasErrors()) {
			return "register";
		}
		if (usersService.addUsers(users) == true) {
			return "redirect:/dang-nhap";
		} else {
			map.addAttribute("msg", "Username Đã có người sử dụng");
			return "register";
		}
	}

	@GetMapping(value = { "user/profile" })
	public String profile(ModelMap map) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication.isAuthenticated()) {
			Users users = usersService.getUsersByUsername(authentication.getName());
			map.addAttribute("user", users);
		}
		return "profile";
	}

	@GetMapping(value = { "user/cap-nhat-thong-tin/{id}" })
	public String Updateprofile(ModelMap map, @PathVariable("id") int id) {
		Users users = usersService.getUsersById(id);
		map.addAttribute("users", users);
		return "updateprofile";
	}

	@PostMapping(value = { "/user/update-profile" })
	public String Updateprofile(ModelMap map, @ModelAttribute("users") Users users) {
		usersService.updateUser(users);
		return "redirect:/user/profile";
	}

	@GetMapping(value = { "/user/lich-su-dat-hang" })
	public String historyOrder(ModelMap map) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Users user = usersService.getUsersByUsername(authentication.getName());
		map.addAttribute("order", orderSer.getAllOrdersByUser(user));
		return "history";
	}

	@GetMapping(value = { "/user/chi-tiet-don-hang/{id}" })
	public String detailOrder(ModelMap map, @PathVariable("id") int id) {
		map.addAttribute("order", orderSer.getOrdersById(id));
		return "detailorder";
	}

	@GetMapping(value = { "/user/huy-don-hang/{id}" })
	public String deleteOrder(ModelMap map, @PathVariable("id") int id) {
		orderSer.deleteOrder(id);
		return "redirect:/user/lich-su-dat-hang";
		
	}

}

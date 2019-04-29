package com.tampro.Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tampro.DAO.BookDAO;
import com.tampro.Domain.Users;
import com.tampro.Service.BookService;

@Controller
public class MainController {
	@Autowired
	BookDAO bookdao;
	@Autowired
	BookService bookService;

	@RequestMapping(value = { "/", "/home" })
	public String home(ModelMap model,HttpSession session) {
		model.addAttribute("list", bookdao.getProductDescDateLimit8());
					
		return "home";
	}

	@GetMapping(value = { "/dang-ky" })
	public String register(ModelMap map) {
		map.addAttribute("users", new Users());
		return "register";
	}

	@GetMapping(value = { "/dang-nhap" })
	public String login(@RequestParam(value = "error", required = false) String error, ModelMap map) {
		if (error != null) {
			map.addAttribute("msg", "Username hoặc password không đúng");
		}
		return "login";
	}

	@GetMapping(value = { "/dang-xuat" })
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			SecurityContextLogoutHandler contextLogoutHandler = new SecurityContextLogoutHandler();
			contextLogoutHandler.logout(request, response, authentication);
		}
		return "redirect:/dang-nhap";
	}

	@GetMapping(value = { "/{url}" })
	public String single(ModelMap map,@PathVariable("url") String url) throws UnsupportedEncodingException {
		map.addAttribute("book", bookService.getBookByUrl(url));
		return "single";
	}
}

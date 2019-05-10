package com.tampro.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tampro.Service.NewsService;

@Controller
@RequestMapping(value = "/news")
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@GetMapping(value ="/{url}")
	public String news(ModelMap map,@PathVariable("url")String url) {
		map.addAttribute("news", newsService.getNewsByUrl(url));
		return "news";
	}
	
	
}

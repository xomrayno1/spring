package com.tampro.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.tampro.Domain.Book;
import com.tampro.Service.BookService;

@Controller
public class BookController {
	@Autowired
	BookService bookser;

	@GetMapping("/tim-kiem")
	public String search(ModelMap map,@RequestParam("search") String search) {
		List<Book> Books = bookser.getBookByAuthorOrName(search,search);	
		Pageable pageable = PageRequest.of(0, 4);
		
		int start = (int) pageable.getOffset();
		System.out.println("Start :"+start);
		int end = (start + pageable.getPageSize()) > Books.size() ? Books.size() : (start + pageable.getPageSize());
		System.out.println("end :"+end);
		Page<Book> book  = new PageImpl<Book>(Books.subList(start, end),pageable,Books.size());
			
		List<Book> list = new ArrayList<>();
		for(Book bo : book) {
			list.add(bo);
		}
		
		int size= 1 ;
		map.addAttribute("book", list);
		map.addAttribute("totalrow",book.getTotalPages());
		map.addAttribute("size", size);
		map.addAttribute("search", search);
		
		return "booksearch";
	}
	@GetMapping("/tim-kiem/{size}")
	public String search(ModelMap map,@RequestParam("search") String search,@PathVariable("size")String size) {
		List<Book> Books = bookser.getBookByAuthorOrName(search,search);	
		Pageable pageable = PageRequest.of(Integer.parseInt(size)-1, 4);
		
		int start = (int) pageable.getOffset(); // 0 , 4 , 8 , 12 // 1234 , 5678 9101112
		//trả về số bắt đầu của trang tiếp theo , 1 trang có 4 book thì  trang 0 bắt đầu 0  kết thúc 4
		//, trang 1 bắt đầu 4 , kết thúc  6 vì trang chỉ có 6 item
		System.out.println("Start :"+start);
		int end = (start + pageable.getPageSize()) > Books.size() ? Books.size() : (start + pageable.getPageSize());
	     // if  0 + 4 = 4 > 6 true  thi = book size  false =>>  thi = 0 + 4;
		 // if
		System.out.println("end :"+end);
		Page<Book> book  = new PageImpl<Book>(Books.subList(start, end),pageable,Books.size()); // (listbook conntent, pageable, total)
			                                 // cắt 1 list mới  từ list books
		List<Book> list = new ArrayList<>();
		for(Book bo : book) { //chuyển đổi từ page sang list để jsp hiểu
			list.add(bo);
		}
		map.addAttribute("book", list);
		map.addAttribute("totalrow",book.getTotalPages());
		map.addAttribute("size", size);
		map.addAttribute("search", search);
		
		return "booksearch";
	}
}

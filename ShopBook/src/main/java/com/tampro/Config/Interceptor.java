package com.tampro.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.tampro.Service.BookCategoryService;


@Component
public class Interceptor  extends HandlerInterceptorAdapter{
 
	@Autowired 
	BookCategoryService bookcate;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setAttribute("bookcate",bookcate.getAllBookCategory());
		System.out.println("Pre Handle method is Calling");
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Post Handle method is Calling");
		super.postHandle(request, response, handler, modelAndView);
	}
}

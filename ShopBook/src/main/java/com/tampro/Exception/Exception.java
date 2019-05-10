package com.tampro.Exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class Exception {

	@ExceptionHandler(value = {NoHandlerFoundException.class})
	public String Exceptionn(Exception e) {
		System.out.println(e.Exceptionn(e));
		return "login";
	}
}

package com.karleshaadi.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	private Locale locale = LocaleContextHolder.getLocale();
	
	@Autowired
	MessageSource messageSource;
	
	
	
	
	
	
	@RequestMapping(value="/getHomePage")
	public String getHomePage(HttpServletRequest request,ModelMap model,RedirectAttributes redirectAttributes)
	{
		
		return "homepage";
	}
	
	
}

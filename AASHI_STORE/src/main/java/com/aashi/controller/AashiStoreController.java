package com.aashi.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aashi.model.Product;

@Controller
public class AashiStoreController {
	@Value("${product.images.path}")
	String productImagePath;

	@Autowired
	ServletContext servletContext;

	public static final int limit = 4;
	
	@GetMapping("welocome")
	public String welcome(Model model) {
		model.addAttribute("msg", "Hello World!!");
		return "welcome";
	}

	@GetMapping("/aashi_store")
	public ModelAndView showHomePage(Model model, HttpServletRequest req) {
		System.out.println("start in home page");
		List<Product> productList = (List<Product>) servletContext.getAttribute("women");
		ModelAndView modelAndView = new ModelAndView("/index2");
		modelAndView.addObject("category", "women");
		modelAndView.addObject("baseURL", getBaseUrl(req));
		int nextOffset = limit;
		int prevOffset = 0;
		modelAndView.addObject("nextOffset", nextOffset);
		modelAndView.addObject("prevOffset", prevOffset);
		modelAndView.addObject("productList", productList.subList(prevOffset, nextOffset));
		return modelAndView;
	}
	
	@GetMapping("/aashi_store/{category}")
	public ModelAndView showIndexPage(HttpServletRequest req, Model model, @PathVariable("category") String category,
			@RequestParam("offset") Integer offset) {
		System.out.println("start in index page");
		List<Product> productList = (List<Product>) servletContext.getAttribute(category);
		ModelAndView modelAndView = new ModelAndView("/index2");
		modelAndView.addObject("category", category);
		modelAndView.addObject("baseURL", getBaseUrl(req));
		
		int nextOffset = offset + limit;
		int prevOffset = offset - limit;
		
		modelAndView.addObject("nextOffset", nextOffset);
		modelAndView.addObject("prevOffset", prevOffset);
		if (nextOffset >= productList.size()) {
			modelAndView.addObject("productList", productList.subList(offset, productList.size()));
		} else {
			modelAndView.addObject("productList", productList.subList(offset, nextOffset));
		}
		return modelAndView;
	}

	private static String getBaseUrl(HttpServletRequest req) {
		return req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + req.getContextPath();
	}

}

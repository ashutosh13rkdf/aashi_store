/* 
 * Author ::. Sivateja Kandula | www.java4s.com 
 *
 */

package com.java4s.app.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SpringJava4sController {
	@Value("${product.images.path}")
	String productImagePath;

	@Autowired
	ServletContext servletContext;

	public static final int limit = 4;

	@GetMapping("/")
	public ModelAndView showHomePage(Model model, HttpServletRequest req) {
		System.out.println("start in home page");
		List<Product> productList = (List<Product>) servletContext.getAttribute("women");
		ModelAndView modelAndView = new ModelAndView("index2");
		modelAndView.addObject("category", "women");
		modelAndView.addObject("baseURL", getBaseUrl(req));
		int nextOffset = limit;
		int prevOffset = 0;
		modelAndView.addObject("nextOffset", nextOffset);
		modelAndView.addObject("prevOffset", prevOffset);
		modelAndView.addObject("productList", productList.subList(prevOffset, nextOffset));
		return modelAndView;
	}

	/*
	 * @GetMapping("/{category}") public ModelAndView showIndexPage(Model
	 * model, @PathVariable("category") String category, HttpServletRequest req) {
	 * System.out.println("start in index page"); ; List<Product> productList =
	 * (List<Product>) servletContext.getAttribute(category); ModelAndView
	 * modelAndView = new ModelAndView("index2"); modelAndView.addObject("category",
	 * "women"); modelAndView.addObject("baseURL", getBaseUrl(req)); int nextOffset
	 * = limit + limit; int prevOffset = 0; modelAndView.addObject("nextOffset",
	 * nextOffset); modelAndView.addObject("prevOffset", prevOffset);
	 * modelAndView.addObject("productList", productList.subList(0, nextOffset));
	 * return modelAndView; }
	 */

	@GetMapping("/{category}")
	public ModelAndView showIndexPage(HttpServletRequest req, Model model, @PathVariable("category") String category,
			@RequestParam("offset") Integer offset) {
		System.out.println("start in index page");
		List<Product> productList = (List<Product>) servletContext.getAttribute(category);
		ModelAndView modelAndView = new ModelAndView("index2");
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

	/*
	 * public List<Product> listFiles(String path, String category) { File dir = new
	 * File(path+category); File[] files = dir.listFiles(); List<Product>
	 * productList = new ArrayList<Product>(); if (files != null && files.length >
	 * 0) { for (File file : files) { // Check if the file is a directory if
	 * (file.isDirectory()) { // We will not print the directory name, just use it
	 * as a new // starting point to list files from } else { // We can use
	 * .length() to get the file size // System.out.println(file.getName() +
	 * " (size in bytes: " + file.length()+")"); try { String[] imageName =
	 * file.getName().split("\\.")[0].split("-"); Product product = new
	 * Product(imageName[0], imageName[1], imageName[2],
	 * path+category+"/"+file.getName()); productList.add(product); } catch
	 * (Exception ex) { System.out.println(ex.getMessage()); }
	 * 
	 * } } } return productList; }
	 */
}

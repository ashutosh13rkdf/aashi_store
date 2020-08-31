/* 
 * Author ::. Sivateja Kandula | www.java4s.com 
 *
 */

package com.java4s.app;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.mvc.LastModified;

import com.java4s.app.controller.Product;


@SpringBootApplication
public class SpringBootApp {
	
	@Value("${product.images.path}")
	String productImagePath;
	
	public static void main(String[] args) 
	{
		 SpringApplication.run(SpringBootApp.class, args);
	}
	
	 @Bean
	   public ServletContextInitializer initializer() {
	        return new ServletContextInitializer() {

	            @Override
	            public void onStartup(ServletContext servletContext) throws ServletException {
	                servletContext.setInitParameter("backgroundColor", "red");
	                List<Product> men =  listFiles(productImagePath, "men");
	                List<Product> women =  listFiles(productImagePath, "women");
	                servletContext.setAttribute("men", men);
	                servletContext.setAttribute("women", women);
	                System.out.println("All products added successfully");
	                
	            }
	        };
	   }
	 
	 public List<Product> listFiles(String path, String category) {
			File dir = new File(path+category);
			File[] files = dir.listFiles();
			Arrays.sort(files, Comparator.comparingLong(File::lastModified).reversed());
			List<Product> productList = new ArrayList<Product>();
			if (files != null && files.length > 0) {
				for (File file : files) {
					// Check if the file is a directory
					if (file.isDirectory()) {
						// We will not print the directory name, just use it as a new
						// starting point to list files from
					} else {
						// We can use .length() to get the file size
						// System.out.println(file.getName() + " (size in bytes: " + file.length()+")");
						try {
							String[] imageName = file.getName().split("\\.")[0].split("-");
							Product product = new Product(imageName[0], imageName[1], imageName[2], path+category+"/"+file.getName());
							productList.add(product);
						} catch (Exception ex) {
							System.out.println(ex.getMessage());
						}

					}
				}
			}
			return productList;
}
}
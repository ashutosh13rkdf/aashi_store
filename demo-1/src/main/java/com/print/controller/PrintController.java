package com.print.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.print.service.Print;

@RestController
public class PrintController {
	@Autowired
	Print print;

	@GetMapping("/insert/{queueName}")
	public String insertQueue(@RequestParam("filePath") String filePath, @PathVariable("queueName") String queueName) {
		return print.insert(filePath, queueName);
	}
}

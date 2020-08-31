package com.print.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

@Service
public class PrintImpl implements Print {
@Autowired
ApplicationContext ctx;
	@Override
	public String insert(String filePath, String queueName) {
		JmsTemplate jms = ctx.getBean(JmsTemplate.class);
		jms.convertAndSend(queueName, filePath);
		return "success";
	}

}

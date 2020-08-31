package com.java4s.app.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class Test {
public static void main(String[] args) {
	try {
		//File file = new File("D:\\Ashu\\Personal_Docs_V2\\car\\Car_Registration_Certificate.jpg");
		File file = new File("D:/aashi/women/PC01-Cotton-500.jpg");
		BufferedImage bImage = ImageIO.read(file);
		System.out.println("success");
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}

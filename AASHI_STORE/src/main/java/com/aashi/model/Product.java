package com.aashi.model;

public class Product {

	public Product() {
		super();
	}



	public Product(String code, String detail, String price, String path) {
		super();
		this.code = code;
		this.detail = detail;
		this.price = price;
		this.path = path;
	}



	

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	private String code;
	private String detail;
	private String price;
	private String path;

	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	@Override
	public String toString() {
		return "Product [code=" + code + ", detail=" + detail + ", price=" + price + ", path=" + path + "]";
	}
	
}

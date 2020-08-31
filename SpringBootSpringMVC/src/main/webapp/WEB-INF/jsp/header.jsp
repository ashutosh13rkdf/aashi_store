<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Aashi's Store</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="${baseURL}/bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="${baseURL}/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="${baseURL}/themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="${baseURL}/themes/css/flexslider.css" rel="stylesheet"/>
		<link href="${baseURL}/themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="${baseURL}/themes/js/jquery-1.7.2.min.js"></script>
		<script src="${baseURL}/bootstrap/js/bootstrap.min.js"></script>				
		<script src="${baseURL}/themes/js/superfish.js"></script>	
		<script src="${baseURL}/themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<!-- <div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="javascript:void(0)">My Account</a></li>
							<li><a href="javascript:void(0)">Your Cart</a></li>
							<li><a href="javascript:void(0)">Checkout</a></li>					
							<li><a href="javascript:void(0)">Login</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div> -->
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index" class="logo pull-left"><img src="${baseURL}/themes/images/logo.png" class="site_logo" alt="">
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="${baseURL}/women?offset=0">Women</a>					
								<!-- <ul>
									<li><a href="./products.html">Lacinia nibh</a></li>									
									<li><a href="./products.html">Eget molestie</a></li>
									<li><a href="./products.html">Varius purus</a></li>									
								</ul> -->
							</li>															
							<li><a href="${baseURL}/men?offset=0">Men</a></li>			
							<li><a href="${baseURL}/accessories?offset=0">Accessories</a>
								<!-- <ul>									
									<li><a href="./products.html">Gifts and Tech</a></li>
									<li><a href="./products.html">Ties and Hats</a></li>
									<li><a href="./products.html">Cold Weather</a></li>
								</ul> -->
							</li>							
							<!-- <li><a href="./products.html">Household</a></li>
							<li><a href="./products.html">Electronics</a></li>
							<li><a href="./products.html">Top Seller</a></li> -->
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="${baseURL}/themes/images/carousel/banner-1.jpg" alt="" />
						</li>
						<li>
							<img src="${baseURL}/themes/images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				We stand for top quality templates. Our genuine developers always optimized bootstrap commercial templates. 
				<br/>Don't miss to use our cheap abd best bootstrap templates.
			</section>
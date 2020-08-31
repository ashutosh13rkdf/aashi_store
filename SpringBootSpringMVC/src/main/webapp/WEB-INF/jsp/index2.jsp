<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="main-content">
	<div class="row">
		<div class="span12">
			<div class="row">
				<div class="span12">
					<h4 class="title">
						<span class="pull-left"><span class="text"><span
								class="line">Feature <strong>Products</strong></span></span></span> <span
							class="pull-right"> 
							<a class="left button" href="${baseURL}/${category}/?offset=${prevOffset}" ></a>
							<a class="right button" href="${baseURL}/${category}/?offset=${nextOffset}"></a>
						</span>
					</h4>
					<div id="myCarousel" class="myCarousel carousel slide">
						<div class="carousel-inner">
							<div class="active item">
<input type="hidden" id="templatedirectory" value="${baseURL}/">


								<ul class="thumbnails">
									<c:forEach var="product" items="${productList}">
										<c:set var="path" value="${product.path}" />
										<%
										//BufferedImage bImage = ImageIO.read(new File("D:\\aashi\\women\\PC01-Cotton-500.jpg"));//give the path of an image
										String imagePath = (String) pageContext.getAttribute("path");
										//out.print(imagePath);
										BufferedImage bImage = ImageIO.read(new File(imagePath));//give the path of an image
										ByteArrayOutputStream baos = new ByteArrayOutputStream();
										ImageIO.write(bImage, imagePath.split("\\.")[1], baos);
										baos.flush();
										byte[] imageInByteArray = baos.toByteArray();
										baos.close();
										String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imageInByteArray);
										%>

										<li class="span3">
											<div class="product-box">
												<span class="sale_tag"></span>
												<p>
													<a href="javascript:void(0)"> <img
														src="data:image/jpg;base64, <%=b64%>"
														alt="image not found" /></a>
												</p>
												<a href="javascript:void(0)" class="title">${product.code}</a><br />
												<a href="javascript:void(0)" class="category">${product.detail}</a>
												<p class="price">RS. ${product.price}</p>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<!-- <div class="item">
											<ul class="thumbnails">
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/ladies/5.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Know exactly</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$22.30</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/ladies/6.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Ut wisi enim ad</a><br/>
														<a href="products.html" class="category">Commodo consequat</a>
														<p class="price">$40.25</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/ladies/7.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">You think water</a><br/>
														<a href="products.html" class="category">World once</a>
														<p class="price">$10.45</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/ladies/8.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Quis nostrud exerci</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$35.50</p>
													</div>
												</li>																																	
											</ul>
										</div> -->
						</div>
					</div>
				</div>
			</div>
			<br />
			<!-- <div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-2" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">												
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware2.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Ut wisi enim ad</a><br/>
														<a href="products.html" class="category">Commodo consequat</a>
														<p class="price">$25.50</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware1.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Quis nostrud exerci tation</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$17.55</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware6.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Know exactly turned</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$25.30</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware5.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">You think fast</a><br/>
														<a href="products.html" class="category">World once</a>
														<p class="price">$25.60</p>
													</div>
												</li>
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware4.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Know exactly</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$45.50</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware3.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Ut wisi enim ad</a><br/>
														<a href="products.html" class="category">Commodo consequat</a>
														<p class="price">$33.50</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware2.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">You think water</a><br/>
														<a href="products.html" class="category">World once</a>
														<p class="price">$45.30</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.html"><img src="themes/images/cloth/bootstrap-women-ware1.jpg" alt="" /></a></p>
														<a href="product_detail.html" class="title">Quis nostrud exerci</a><br/>
														<a href="products.html" class="category">Quis nostrud</a>
														<p class="price">$25.20</p>
													</div>
												</li>																																	
											</ul>
										</div>
									</div>							
								</div>
							</div>						
						</div> -->
			<div class="row feature_box">
				<div class="span4">
					<div class="service">
						<div class="responsive">
							<img src="${baseURL}/themes/images/feature_img_2.png" alt="" />
							<h4>
								MODERN <strong>DESIGN</strong>
							</h4>
							<p>Lorem Ipsum is simply dummy text of the printing and
								printing industry unknown printer.</p>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="service">
						<div class="customize">
							<img src="${baseURL}/themes/images/feature_img_1.png" alt="" />
							<h4>
								FREE <strong>SHIPPING</strong>
							</h4>
							<p>Lorem Ipsum is simply dummy text of the printing and
								printing industry unknown printer.</p>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="service">
						<div class="support">
							<img src="${baseURL}/themes/images/feature_img_3.png" alt="" />
							<h4>
								24/7 LIVE <strong>SUPPORT</strong>
							</h4>
							<p>Lorem Ipsum is simply dummy text of the printing and
								printing industry unknown printer.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.jsp"%>
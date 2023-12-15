<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<head>
<title>Product_Detail</title>
<style>
.product_content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product_content">
		<div id="sidebar" class="span3">
			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/paypal.jpg" />"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home page</a> <span class="divider">/</span></li>
				<li><a href="products.html">Products</a> <span class="divider">/</span></li>
				<li class="active">Details</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value="/assets/user/img/${Product_Details.img}"/>"
										alt="" style="width: 100%"></a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="<c:url value="/assets/user/img/${Product_Details.img}"/>"
										alt="" style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${Product_Details.name}</h3>
						<hr class="soft" />
						<form class="form-horizontal qtyFrm" method="get"
							action="<c:url value="/AddCart/${Product_Details.id_product}"/>">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber
											type="number" maxFractionDigits="3"
											value="${Product_Details.price}" />$</span></label>
								<div class="controls">
									<input type="number" min="0" value="0" class="span6">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><span>Color</span></label>
								<div class="controls">
									<select class="span11">
										<option>Green</option>
										<option>White</option>
										<option>Pink</option>
										<option>Red</option>
									</select>
								</div>
							</div>

							<h4>
								<i>Availability</i>
							</h4>
							<p>${Product_Details.title}</p>
							<p>
								<button type="submit" class="shopBtn">
									<span class=" icon-shopping-cart"></span> Add to cart
								</button>
						</form>
					</div>
				</div>
				<hr class="softn clr" />

				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Product
							Details</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Related
							Products</a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">
						<h4>Product Information</h4>
						<table class="table table-striped">
							<tbody>${Product_Details.details}
							</tbody>
						</table>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
						<p>Raw denim you probably haven't heard of them jean shorts
							Austin. Nesciunt tofu stumptown aliqua, retro synth master
							cleanse. Mustache cliche tempor, williamsburg carles vegan
							helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
							synth. Cosby sweater eu banh mi, qui irure terry richardson ex
							squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
							cardigan american apparel, butcher voluptate nisi qui.</p>
					</div>
					<div class="tab-pane fade" id="profile">
						<c:forEach var="item" items="${Product_Related}" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value="/assets/user/img/${item.img}"  />"
										alt="">
								</div>
								<div class="span6">
									<h5>${item.name}</h5>
									<p>Nowadays the lingerie industry is one of the most
										successful business spheres. We always stay in touch with the
										latest fashion tendencies - that is why our goods are so
										popular..</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price}" />
											$
										</h3>
										<label class="checkbox"> <input type="checkbox">
											Adds product to compair
										</label><br>
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Add to cart</a>
										</div>
									</form>
								</div>
							</div>
							<c:if
								test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == Product_Related.size()}">
					</div>
				</div>
				<c:if test="${(loop.index + 1) < Product_Related.size()}">
					<div class="row-fluid">
						<div class="span2">
							<hr class="soft">
				</c:if>
				</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
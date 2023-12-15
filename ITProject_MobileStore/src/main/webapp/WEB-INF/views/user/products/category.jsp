<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<head>
<title>Category</title>
<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>
<body>
	<div class="well well-small">
		<div class="row">
			<h3>
				<span style="margin-left: 25px;">List Product<span
					style="font-size: smaller;"> (${ProductsById.size()}) </span>
				</span>
			</h3>
            <select style="margin-top: -40px" class="pull-right"
				onchange="window.location.href=this.value">
				<option value="<c:url value="/product-list"/>">All products</option>
				<c:forEach var="item" items="${categories}">
					<option value="<c:url value="/category/${item.id}"/>">${item.name}</option>
				</c:forEach>
			</select>
		</div>
		<c:if test="${ProductsById.size() > 0}">
			<div class="row-fluid">
				<ul class="thumbnails">
					<c:forEach var="item" items="${ProductsById}" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a href="product_details.html" class="overlay"></a> <a
									class="zoomTool"
									href="<c:url value="/product_details/${item.id_product}" />"
									title="add to cart"> <span class="icon-search"></span>
									QUICK VIEW
								</a> <a href="<c:url value="/product_details/${item.id_product}" />">
									<img src="<c:url value="/assets/user/img/${item.img}"/>"
									alt="shoe-store">
								</a>
								<div class="caption cntr">
									<p>${item.name}</p>
									<p>
										<strong><span><fmt:formatNumber type="number"
													maxFractionDigits="3" value="${item.price}" />$</span> </strong>
									</p>
									<h4>
										<a class="shopBtn" href="<c:url value="/AddCart/${item.id_product}" />" title="add to cart"> Add to
											cart </a>
									</h4>
									<div class="actionList">
										<a class="pull-left" href="#">Add to Wish List </a> <a
											class="pull-left" href="#"> Add to Compare </a>
									</div>
									<br class="clr">
								</div>
							</div>
						</li>
						<c:if
							test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == ProductsById.size()}">
				</ul>
			</div>
			<c:if test="${(loop.index + 1) < ProductsById.size()}">
				<div class="row-fluid">
					<ul class="thumbnails">
			</c:if>
		</c:if>
		</c:forEach>
		</c:if>

	</div>
	<!-- Paginate -->
	<div class="pagination">

		<a href="#">&laquo;</a> <a href="#" class="active">1</a> <a href="#">2</a>
		<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
		<a href="#">&raquo;</a>
	</div>
</body>
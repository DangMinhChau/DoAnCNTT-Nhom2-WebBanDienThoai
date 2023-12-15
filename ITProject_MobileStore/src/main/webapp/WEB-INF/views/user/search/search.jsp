<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
</head>
<body>
	<!-- Featured Products -->
	<div class="well well-small">
		<h3>
			<a class="btn btn-mini pull-right" href="products.html"
				title="View more">View More<span class="icon-plus"></span></a>
			<span>
				Products<span style="font-size: smaller;">
					(${SearchProductByName.size()})</span>
			</span>
		</h3>
		<hr class="soften" />
		<div class="row-fluid">
			<c:if test="${SearchProductByName.size() > 0}">
				<ul class="thumbnails">
					<c:forEach var="item" items="${SearchProductByName}"
						varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool"
									href="<c:url value="/product_details/${item.id_product}"/>"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a href="#"> <img
									src="<c:url value="assets/user/img/${item.img}"/>" alt="">
								</a>
								<div class="caption">
									<h5>${item.name}</h5>
									<h4>
										<a class="defaultBtn" href="product_details.html"
											title="Click to view"><span class="icon-zoom-in"></span></a>
										<a class="shopBtn"
											href="<c:url value="/AddCart/${item.id_product}" />"
											title="add to cart"><span class="icon-plus"></span></a> <span
											class="pull-right"><fmt:formatNumber type="number"
												maxFractionDigits="3" value="${item.price}" />$</span>
									</h4>
								</div>
							</div>
						</li>
						<c:if
							test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == SearchProductByName.size()}">
				</ul>
				<c:if test="${(loop.index + 1) < feature_products.size()}">
					<ul class="thumbnails">
				</c:if>
			</c:if>
			</c:forEach>
			</c:if>
		</div>
	</div>
	<hr>
	<div class="well well-small">
		<a class="btn btn-mini pull-right" href="#">See all <span
			class="icon-plus"></span></a> All Products
	</div>
</body>
</html>
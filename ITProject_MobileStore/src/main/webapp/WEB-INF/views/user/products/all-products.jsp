<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ShoeStore | Homepage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!--All Products-->
	<div class="well well-small">
		<h3>
			<span>
				All Products<span style="font-size: smaller;">
					(${all_products.size()})</span>
			</span>
		</h3>
		<hr class="soften" />
		<div class="row-fluid">
			<c:if test="${all_products.size() > 0}">
				<ul class="thumbnails">
					<c:forEach var="item" items="${all_products}" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool"
									href="<c:url value="/product_details/${item.id_product}"/>"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a href="#"> <img
									src="<c:url value="assets/user/img/${item.img }"/>" alt="">
								</a>
								<div class="caption">
									<h5>${item.name}</h5>
									<h4>
										<a class="defaultBtn" href="product_details.html"
											title="Click to view"><span class="icon-zoom-in"></span></a>
										<a class="shopBtn"
											href="<c:url value="/AddCart/${item.id_product }" />"
											title="add to cart"><span class="icon-plus"></span></a> <span
											class="pull-right"><fmt:formatNumber type="number"
												maxFractionDigits="3" value="${item.price}" />đ</span>
									</h4>
								</div>
							</div>
						</li>
						<c:if
							test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == all_products.size()}">
				</ul>
				<c:if test="${(loop.index + 1) < all_products.size()}">
					<ul class="thumbnails">
				</c:if>
			</c:if>
			</c:forEach>
			</c:if>
		</div>
	</div>
</body>
</html>




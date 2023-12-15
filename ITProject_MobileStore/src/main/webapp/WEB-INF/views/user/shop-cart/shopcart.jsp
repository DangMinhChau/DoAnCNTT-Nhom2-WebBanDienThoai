<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<head>
<title>Cart</title>

</head>
<body>
	<div class="row">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="index.html">Home page</a> <span class="divider">/</span></li>
				<li class="active">Cart</li>
			</ul>
			<div class="well well-small">
				<h1>
					Cart <small class="pull-right"> ${sTotalQuantyCart} items
						in cart </small>
				</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Image</th>
							<th>Description</th>
							<th>Color</th>
							<th>Price</th>
							<th>Quanty</th>
							<th>Edit</th>
							<th>Delete</th>
							<th>Total price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${Cart}">
							<tr>
								<td><img width="100"
									src="<c:url value="/assets/user/img/${item.value.product.img}"/>"
									alt=""></td>
								<td>${item.value.product.title}</td>
								<td><span class="shopBtn"
									style="background-color: ${item.value.product.name_color};"></span></td>
								<td><fmt:formatNumber type="number" maxFractionDigits="3"
										value="${item.value.product.price}" />$</td>
								<td><input class="span1" style="max-width: 34px"
									placeholder="1" id="quanty-cart-${item.key}" size="16"
									type="number" min="1" max="1000" value="${item.value.quanty}">
									<div class="input-append"></div></td>
								<td><button 
										data-id="${item.key}" class="btn btn-mini btn-danger edit-cart"
										type="button">
										<span class="icon-edit"></span>
									</button></td>
								<td><a onclick="alert('Deleted successfully')" href="<c:url value="/DeleteCart/${item.key}"/>"
									class="btn btn-mini btn-danger" type="button"> <span
										class="icon-remove"></span>
								</a></td>
								<td>$<fmt:formatNumber type="number" maxFractionDigits="3"
										value="${item.value.totalPrice}" /></td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="6" class="alignR">Total products:</td>
							<td class="label label-primary">$<fmt:formatNumber
									type="number" maxFractionDigits="3" value="${sTotalPriceCart}" /></td>
						</tr>
					</tbody>
				</table>
				<br /> 
				    <a href="home-page" class="shopBtn btn-large"><span
					    class="icon-arrow-left"></span> Continue shopping
					</a> 
					<a
				     	href="<c:url value="/CheckOut"/>" class="shopBtn btn-large pull-right">Pay<span
					    class="icon-arrow-right"></span>
			     	</a>
			</div>
		</div>
	</div>
	
	<!-- Javascipt Handler -->
	<content tag="script"> 
	     <script> 
		    $(".edit-cart").on("click",function(){
		    	var id = $(this).data("id"); 
		    	var quanty = $("#quanty-cart-"+id).val(); 
		    	window.location = "EditCart/"+id+"/"+quanty; 
		    });
	     </script> 
	</content>
</body>
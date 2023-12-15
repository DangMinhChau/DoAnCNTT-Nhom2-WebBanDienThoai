<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>MobileStore | Admin</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/admin/admin/vendor/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendor/font-awesome/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendor/linearicons/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendor/chartist/css/chartist-custom.css"/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/admin/css/main.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/css/demo.css"/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="/assets/admin/img/apple-icon.png"/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value="/assets/admin/img/favicon.png"/>">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- LEFT SIDEBAR -->
		<div th:fragment="category">
			<div id="sidebar-nav" class="sidebar">
				<div class="sidebar-scroll" style="padding-top: 20px;">
					<nav>
						<ul class="nav">
							<li><a href="home" class=""><i class="lnr lnr-home"></i>
									<span>Home</span></a></li>
							<li><a href="user-list" class=""><i
									class="lnr lnr-users"></i> <span>User</span></a></li>
							<li><a href="product-list" class=""><i
									class="lnr lnr-gift"></i> <span>Product</span></a></li>
							<li><a href="order-list" class=""><i class="lnr lnr lnr-dice"></i>
									<span>Order</span></a></li>
							<li><a href="" class=""><i class="lnr lnr-store"></i> <span>Go
										to shop</span></a></li>
							<li><a href="" class=""><i class="lnr lnr-cog"></i> <span>Setting</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
</div>
</body>
</html>
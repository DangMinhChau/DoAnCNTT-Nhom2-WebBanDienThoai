<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Mobile Store" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css" />"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css" />" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />"
	rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/img/ico/favicon.jpg" />">
<decorator:head />
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href="home-page"> <span class="icon-home"></span>
						Home
					</a>
					<c:if test="${not empty LoginInfo}">
						<a href="<c:url value="/infoUser" />"> <span class="icon-user"></span>
							${LoginInfo.display_name}
						</a>
						<a href="<c:url value="/Logout" />"><span class="icon-envelope"></span> 
						    Log out</a>
					</c:if>
                    
                    <c:if test="${empty LoginInfo}">
                          <a href="<c:url value="/Register" />"><span class="icon-edit"></span>Free
							Register </a>
                    </c:if> 
                    
					<a href="<c:url value="/Cart_Detail" />"> <span
						class="icon-shopping-cart"></span> ${sTotalQuantyCart} Item(s) - <span
						class="badge badge-warning">$<fmt:formatNumber
								type="number" maxFractionDigits="3" value="${sTotalPriceCart}" /></span></a>
				</div>
			</div>
		</div>
	</div>
	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	</div>
	<!-- /container -->
	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/maestro.png"/>"
					alt="payment"></a> <a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/mc.png"/>"
					alt="payment"></a> <a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/pp.png"/>"
					alt="payment"></a> <a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/visa.png"/>"
					alt="payment"></a> <a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/disc.png"/>"
					alt="payment"></a>
			</p>
			<span>Copyright &copy; 2023<br> Created by Nhom 2
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src=" <c:url value="/assets/user/js/jquery.js" />"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
	<script src="<c:url value="/assets/user/js/shop.js" /> "></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>
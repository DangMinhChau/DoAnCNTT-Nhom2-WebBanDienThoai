<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>

<!DOCTYPE html>
<head>
<title>Register</title>
<style>
.red-italic {
	color: red;
	font-style: italic;
}

.green-italic {
	color: green;
	font-style: italic;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
<h1></h1>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categories }">
						<li><a href="<c:url value="/category/${item.id}"/>"><span
								class="icon-circle-blank"></span>${item.name}</a></li>
					</c:forEach>

					<li><a href="<c:url value="AllProduct" />"><span
							class="icon-circle-blank"></span>All Products</a></li>


					<li><a class="totalInCart" href="#"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$<fmt:formatNumber
										type="number" maxFractionDigits="3" value="${sTotalPriceCart}" /></span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/system-icon/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home page</a> <span class="divider">/</span></li>
				<li class="active">Login</li>
			</ul>
			<h3>Login</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<c:if test="${flag <= 0}">
							<span class="red-italic"> ${checkRegisterFailed} </span>
						</c:if>
						<c:if test="${flag > 0}">
							<span class="green-italic"> ${checkRegisterCompleted} </span>
						</c:if>
						<h5>CREATE YOUR ACCOUNT</h5>
						<br /> Enter your e-mail address to create an account.<br /> <br />
						<br />
						<form:form action="Register" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input class="span3" type="text" path="email"
										placeholder="Input your email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPhone">Phone
									number</label>
								<div class="controls">
									<form:input class="span3" type="text" path="phone"
										placeholder="Input your Phone number" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input class="span3" type="password" path="password"
										placeholder="Input your password" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputDisplay_name">Display
									name</label>
								<div class="controls">
									<form:input class="span3" type="text" path="display_name"
										placeholder="Input your Display name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputAddress">Address</label>
								<div class="controls">
									<form:input class="span3" type="text" path="address"
										placeholder="Input your address" />
								</div>
							</div>

							<div class="controls">
								<button type="submit" class="btn block">Create Your
									Account</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<span class="red-italic"> ${checkLogin} </span>
						<h5>ALREADY REGISTERED ?</h5>
						<form:form action="Login" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input class="span3" type="text" path="email"
										placeholder="Input your email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input class="span3" type="password" path="password"
										placeholder="Input your password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Sign in</button>
									<a href="#">Forget password?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>

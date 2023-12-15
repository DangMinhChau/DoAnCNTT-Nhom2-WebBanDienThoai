<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value="/"/>"><span>Mobile Store</span> 
				<img src="<c:url value="/assets/user/img/logo/logo_mobileStore.png"/>"
					width="200" height="150" alt="shoe-store logo"> </a>
			</h1>
		</div>
		<div class="span4">
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0816 904 167 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[${sTotalQuantyCart}] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">-pound;</span>
			<span class="btn btn-mini">-euro;</span>
		</div>
	</div>
</header>

<!-- Navigation Bar Section -->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${menu}" varStatus="index">
						<c:if test="${index.first}">
							<li class="active">
						</c:if>
						<c:if test="${not index.first}">
							<li class="">
						</c:if>
						<a href="/ITProject_MobileStore/${item.name}">${item.name} </a>
					</c:forEach>
				</ul>
				<form action="search" class="navbar-search pull-left">
					<input type="text" placeholder="Search" name="searchbar" class="search-query span2">
				</form>
				<ul class="nav pull-right">
				<c:if test="${empty LoginInfo}">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Login <b class="caret"></b></a>
						<div class="dropdown-menu">
						<form:form action="Login" method="POST" modelAttribute="user">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										Remember me
									</label>
									<button type="submit" class="shopBtn btn-block">Sign
										in</button>
								</div>
							</form>
							</form:form>
						</div>
					</li>
					</c:if>
					<c:if test="${not empty LoginInfo}"></c:if>
					<li>
					    <a href="<c:url value="infoUser"/>">
					       ${LoginInfo.display_name}
					       <b class="caret"></b>
					    </a> 
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

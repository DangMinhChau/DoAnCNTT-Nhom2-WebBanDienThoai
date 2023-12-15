<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
</head>
<body>
	<div class="span4">
		<div class="well">
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
					<label class="control-label" for="inputPhone">Phone number</label>
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
</body>
</html>
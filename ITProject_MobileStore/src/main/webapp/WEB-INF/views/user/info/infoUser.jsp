<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoeStore | User Details</title>

</head>
<body>
	<div class="well">
		<form:form action="home-page" method="post" modelAttribute="account"
			class="form-horizontal">
			<h3>Your Account Infomation</h3>
			<div class="control-group">
				<label class="control-label">Name</label>
				<div class="controls">
					<form:input type="text" path="display_name" disabled="true"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Email</label>
				<div class="controls">
					<form:input type="text" path="email" disabled="true"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Phone</label>
				<div class="controls">
					<form:input type="text" path="phone" disabled="true"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Address</label>
				<div class="controls">
					<form:textarea path="address" rows="3" cols="30" disabled="true"></form:textarea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<input type="submit" name="submitAccount" value="Back"
						class="shopBtn exclusive">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
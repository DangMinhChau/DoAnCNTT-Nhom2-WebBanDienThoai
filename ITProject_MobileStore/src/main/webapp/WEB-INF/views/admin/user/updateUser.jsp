<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>ShoeStore | Update User</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/vendor/font-awesome/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/vendor/linearicons/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/vendor/chartist/css/chartist-custom.css"/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/css/main.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resource/admin/assets/css/demo.css"/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="../resource/admin/assets/img/apple-icon.png"/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value="../resource/admin/assets/img/favicon.png"/>">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value="../resource/css/style.css"/>">

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

<span class="green-italic">${UpdateStatus}</span>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading"
							style="display: flex; justify-content: space-between;">
							<span class="green-italic"></span>
							<h3 class="panel-title">UPDATE USER</h3>
							<span style="color: red; font-weight: bold; font-size: 18px;">${message}</span>
							<a class="btn btn-warning" href="<c:url value="/user-list"/>"
								style="background-color: #D9534F; padding: 2px 10px; text-decoration: none; border: none; margin-right: 10px; height: 25px;">Back</a>
						</div>
						<form:form action="/FinalProject_ShoeShop/updateAccount/${id}"
							method="POST" modelAttribute="user">
							<div class="row"
								style="display: flex; justify-content: space-between;">
								<table
									style="margin: auto; margin-left: 45px; margin-right: 50px;"
									class="col-md-6">
									<tr>
										<th>Email:</th>
										<td><form:input type="email" class="form-control"
												style="height: 30px;" path="email" /></td>
									</tr>
									<tr>
										<th>Display name:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px;" path="display_name" /></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
								<table style="margin: auto; margin-right: 30px;"
									class="col-md-6">
									<tr>
										<th>Phone number:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px;" path="phone" /></td>
									</tr>
									<tr>
										<th>Address:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px;" path="address" /></td>
									</tr>
									<tr>
										<td><input type="submit" class="btn btn-primary"
											style="font-weight: bold;" name="update" value="Update">
										</td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
							</div>
						</form:form>
					</div>

				</div>
				<div id="headline-chart" class="ct-chart"></div>
			</div>

			<!-- END OVERVIEW -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>
	<!-- END WRAPPER -->
</body>
</body>
</html>
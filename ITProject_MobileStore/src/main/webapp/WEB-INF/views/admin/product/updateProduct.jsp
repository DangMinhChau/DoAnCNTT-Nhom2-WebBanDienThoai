<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Shoe Store | Edit product</title>
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
.small-img {
	width: 200%;
	height: 200%;
}

.btn-margin {
	margin-top: auto;
}

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
	<span class="green-italic">${UpdateProductStatus}</span>
	<div id="wrapper" style="max-width: 1250px; margin: auto;">
		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading"
							style="display: flex; justify-content: space-between;">
							<h3 class="panel-title">EDIT PRODUCT</h3>
						</div>
						<form:form action="/FinalProject_ShoeShop/EditProduct/${id}"
							method="POST" modelAttribute="product">
							<div class="row"
								style="display: flex; justify-content: space-between;">
								<table>
									<tr>
										<td><img class="small-img"
											src="<c:url value="/assets/user/img/${product.img}"/>" /></td>
									</tr>
									<tr>
										<th>Image:</th>
										<td><form:select path="img">
												<option>BDM000777_1.png</option>
												<option>BEM000900_1.png</option>
												<option>BEW000500_1.png</option>
												<option>BEW000500.png</option>
												<option>BMM000177_1.png</option>
												<option>BPW000788_1.png</option>
												<option>BPW000500_1.png</option>
												<option>BRM000100_1.png</option>
												<option>BRM000900.png</option>
												<option>BSM000600_1.jpg</option>
												<option>BSM000600_1.png</option>
												<option>BSW001600_1.png</option>
												<option>BVM000177_1.png</option>
												<option>BYW000200.png</option>
												<option>CG05130.png</option>

											</form:select></td>
									</tr>
								</table>
								<table style="margin: auto; margin-left: 100px;"
									class="col-md-6">
									<tr>
										<th>Name:</th>
										<td><form:input type="text" path="name"
												style="height: 30px;" /></td>
									</tr>
									<tr>
										<th>Price:</th>
										<td><form:input type="text" class="form-control"
												required="required" style="height: 30px;" path="price" /></td>
									</tr>
									<tr>
										<th>Title:</th>
										<td><form:input type="text" class="form-control"
												required="required" style="height: 30px;" path="title" /></td>
									</tr>
									<tr>
										<th></th>
										<td><a href="/FinalProject_ShoeShop/product-list"
											class="btn btn-danger btn-margin" style="font-weight: bold;">BACK</a>
										</td>
									</tr>
								</table>
								<table
									style="margin: auto; margin-left: 50px; margin-right: 20px;"
									class="col-md-6">
									<tr>
										<th style="margin-top: 50px;">Details:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px; width: 230px;" path="details" />
									</tr>
									<tr>
										<th>Size:</th>
										<td><form:input type="text" class="form-control"
												required="required" style="height: 30px; width: 230px;"
												path="sizes" /></td>
									</tr>
									<tr>
										<th>New:</th>
										<td><form:select path="new_product">
												<option value="1">YES</option>
												<option value="0">NO</option>
											</form:select></td>
									</tr>

									<tr>
										<th>Featured:</th>
										<td><form:select path="highlight">
												<option value="1">YES</option>
												<option value="0">NO</option>
											</form:select></td>
									</tr>
									<tr>
										<th>Color:</th>
										<td><form:input type="text" class="form-control"
												required="required" style="height: 30px; width: 230px;"
												path="name_color" /></td>
									</tr>
									<tr>
										<th></th>
										<td>
											<button type="submit" class="btn btn-primary btn-margin"
												style="font-weight: bold;">UPDATE</button>
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
		<!-- END MAIN CONTENT -->
	</div>
</body>

</html>
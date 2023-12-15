<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>ShoeStore | Add product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/linearicons/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/chartist/css/chartist-custom.css'/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/main.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/demo.css'/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value='../resource/admin/assets/img/apple-icon.png'/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value='../resource/admin/assets/img/favicon.png'/>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<c:url value='../resource/css/style.css'/>">

<style>
.btn-wrapper {
	display: flex;
	justify-content: center;
}

.red-italic {
	color: red;
	font-style: italic;
}

.green-italic {
	color: green;
	font-style: italic;
}

.hidden {
	display: none;
}
</style>
</head>
<body>
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
							<h3 class="panel-title">ADD NEW PRODUCT</h3>
							<c:if test="${flag <= 0}">
								<span class="red-italic"> ${checkAddProduct} </span>
							</c:if>
							<c:if test="${flag > 0}">
								<span class="green-italic"> ${checkAddProduct} </span>
							</c:if>
							<a class="btn btn-warning" href="product-list"
								style="background-color: #D9534F; padding: 2px 10px; text-decoration: none; border: none; margin-right: 10px; height: 25px;">Back</a>
						</div>
						<form:form action="addNewProduct" method="POST"
							modelAttribute="product" enctype="multipart/form-data">
							<div class="row"
								style="display: flex; justify-content: space-between;">
								<table style="margin: auto; margin-left: 60px;" class="col-md-6">
									<tr>
										<th>Category:</th>
										<td><form:select path="id_category">
												<option value="1">IPHONE</option>
												<option value="2">SAMSUNG</option>
												<option value="3">OPPO</option>
												<option value="4">XIAOMI</option>
												<option value="5">OTHER</option>
											</form:select></td>
									</tr>
									<tr>
										<th>Product name:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px;" placeholder="Enter product name..."
												path="name" /></td>
									</tr>
									<tr>
										<th>Size:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px;" placeholder="Enter product size..."
												path="sizes" /></td>
									</tr>
									<tr>
										<th>Details:</th>
										<td><form:input class="form-control"
												placeholder="Enter product details..." path="details" /></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
								<table
									style="margin: auto; margin-left: 50px; margin-right: -40px;"
									class="col-md-6">
									<tr>
										<th>Price:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px; width: 230px;" placeholder=""
												path="price" /></td>
									</tr>
									<tr>
										<th>Title:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px; width: 230px;" placeholder="0"
												path="title" /></td>
									</tr>
									<tr>
										<th>New:</th>
										<td><form:select path="new_product">
												<option value="1">YES</option>
												<option value="0">NO</option>
											</form:select></td>
									</tr>
									<tr>
									<tr>
										<th>Featured:</th>
										<td><form:select path="highlight">
												<option value="1">YES</option>
												<option value="0">NO</option>
											</form:select></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
								<table
									style="margin: auto; margin-left: 50px; margin-right: -40px;"
									class="col-md-6">

									<tr>
										<th>Color name:</th>
										<td><form:input type="text" class="form-control"
												style="height: 30px; width: 230px;"
												placeholder="Enter name color..." path="name_color" /></td>
									</tr>
									<tr>
									<tr>
										<th>Image:</th>
										<td><form:select path="img">
												<option>iphone_15_pro_max_black.png</option>
												<option>iphone_14_pro_max_white.png</option>
												<option>iphone_15_blue.png</option>
												<option>iphone-13-hong.png</option>
												<option>iphone-14-den.png</option>
												<option>iphone-14-plus-tim.png</option>
												<option>iphone-14-plus-trang.png</option>
												<option>oppo_find_n3_flip.png</option>
												<option>redmi_13c_xanh.png</option>
												<option>samsung_galaxy_z_flip5_den.jpg</option>
												<option>samsung_galaxy_z_fold5_den.png</option>
												<option>xiaomi_redmi_note_12_vang.png</option>
												<option>xiaomi-redmi-note-12-black.png</option>
												<option>realme_c55_mau_vang.png</option>
												<option>vivo-y22s.png</option>

											</form:select></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
							</div>
							<tr>
								<th></th>
								<td>
									<button type="submit" class="btn btn-primary btn-wrapper"
										style="font-weight: bold; margin-top: 30px; margin-left: 450px;">CREATE</button>
								</td>
							</tr>
						</form:form>

					</div>
				</div>
				<div id="headline-chart" class="ct-chart"></div>
			</div>
		</div>
	</div>
</body>

</html>
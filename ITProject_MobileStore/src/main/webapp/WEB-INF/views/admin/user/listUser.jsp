<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>ShoeStore | User Management</title>
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
	href="<c:url value='../resource/admin/assets/css/demo.css'/>">
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
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div th:fragment="header">
			<!-- MAIN -->
			<!-- MAIN CONTENT -->
			<div class="main">
				<div class="main-content">
					<div class="container-fluid">
						<!-- OVERVIEW -->
						<div class="panel panel-headline">
							<div class="panel-body">
								<form action="user-delete" method="get">
									<div class="row">
										<div class="col-md-12">
											<div class="panel">
												<div class="panel-heading">
													<h3 class="panel-title">
														USER LIST<span style="font-size: smaller;">
															(${infoUser.size()})</span>
													</h3>
												</div>
												<div class="panel-body no-padding">
													<table class="table table-striped" style="margin: auto;">
														<thead>
															<tr>
																<th>ID</th>
																<th style="padding-left: 20px;">Email</th>
																<th>Display Name</th>
																<th style="width: 25%;">Address</th>
																<th>Phone</th>
																<th>Edit</th>
																<th>Delete</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="item" items="${infoUser}">
																<tr>
																	<td style="vertical-align: middle;">${item.id}</td>
																	<td style="vertical-align: middle; padding-left: 8px;">${item.email}</td>
																	<td style="vertical-align: middle; padding-left: 8px;">${item.display_name}</td>
																	<td style="vertical-align: middle;">${item.address}</td>
																	<td style="vertical-align: middle;">${item.phone}</td>
																	<td><a href="<c:url value="updateAccount/${item.id}"/>" 
																		class="btn btn-mini btn-danger" type="button"> <span
																			class="icon-edit"></span>
																	</a></td>

																	<td><a
																		href="<c:url value="deleteAccount/${item.id}"/>"
																		class="btn btn-mini btn-danger" type="button"> <span
																			class="icon-remove"></span>
																	</a></td>
																</tr>
															</c:forEach>

														</tbody>
													</table>
												</div>
											</div>
											<nav aria-label="Page navigation example"
												style="margin-top: -30px;">
												<ul class="pagination">

												</ul>
											</nav>
										</div>
										<div id="headline-chart" class="ct-chart"></div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- END OVERVIEW -->
				</div>
				<!-- END MAIN CONTENT -->
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
		</div>
		<!-- END WRAPPER -->
	</div>


</body>
</body>
</html>
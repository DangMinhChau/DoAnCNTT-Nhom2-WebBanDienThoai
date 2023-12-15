<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib_jstl.jsp"%>
<!DOCTYPE html>
<head>
<title>Check Out</title>
</head>
<body>
	<div class="well">
		<form:form action="CheckOut" method="post" modelAttribute="bills"
			class="form-horizontal">
			<h3>Your Billing Details</h3>
			<div class="control-group">
				<label class="control-label">Name <sup>*</sup></label>
				<div class="controls">
					<form:input type="text" path="display_name"
						placeholder=" Field name" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Email<sup>*</sup></label>
				<div class="controls">
					<form:input type="text" path="email" placeholder=" Field email" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Contact<sup>*</sup></label>
				<div class="controls">
					<form:input type="text" path="phone"
						placeholder=" Field phone number" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Address<sup>*</sup></label>
				<div class="controls">
					<form:textarea placeholder="Field address" path="address"
						rows="3" cols="30"></form:textarea>
				</div>
			</div>
			<div class="control-group">
				<label style="margin-right: 20px" class="control-label">Payments
					<sup>*</sup>
				</label>
				<form:select path="payments">
					<option>Cash On Delivery</option>
					<option>Bank Transfers</option>
					<option>Credit and Debit Cards</option>
					<option>Digital Wallets</option>
				</form:select>
			</div>
			<div class="control-group">
				<label class="control-label">Note<sup>*</sup></label>
				<div class="controls">
					<form:textarea placeholder="Notes for the shop owner" path="note"
						rows="3" cols="30"></form:textarea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<input type="submit" name="submitAccount" value="Check out"
						class="shopBtn exclusive">
				</div>
			</div>
		</form:form>
	</div>
</body>

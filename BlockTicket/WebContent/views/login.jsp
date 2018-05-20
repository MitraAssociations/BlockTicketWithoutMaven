
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/css/style.css" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body id="loginId">
	<!-- Header starts -->
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<!-- Header -->
	<nav class="navbar navbar-default" id="header">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${contextPath}/views/index.jsp"
					id="blockTicket">Block Ticket</a>
			</div>


		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End Header -->
	<div class="container">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<div class="headtitle" style="margin-right: 20px">
						<h1 class="text-center login-title">Login</h1>
					</div>
					<div class="account-wall">
						<form class="form-signin" id="loginForm"
							action="${contextPath}/addTicket" method="post">
							<input type="phoneNo" class="form-control" placeholder="phoneNo"
								name="Mobile Number"> <br /> <input type="password"
								name="password" class="form-control" placeholder="Password"
								required><br /> <label class="checkbox pull-left"
								style="margin-left: 22px;"> <input type="checkbox"
								value="remember-me"> Remember me
							</label>
							<button class="btn btn-lg btn-primary btn-block" type="submit"
								id="validate">Sign in</button>
							<br />
						</form>
					</div>
					<div>
						<a href="${contextPath}/views/forgetPassword.jsp"
							class="pull-right need-help">Forgot Password</a> <a
							href="${contextPath}/views/registration.jsp"
							class="text-center new-account">Create an account </a>
					</div>
					<br />
					<br />
				</div>

			</div>
		</div>
	</div>

	<!-- footer starts -->
	<div id="footer_footer"><%@ include file="footer.jsp"%></div>
	<!-- End Footer -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script>
		function validateLogin() {
			var validator = $("#loginForm").validate({
				rules : {
					email : "required",
					pwd : "required",
				},
				messages : {
					email : "Enter Mobile Number",
					pwd : "Enter Password",

				}
			});
			if (validator.form()) {
				alert('Login Successful..!');
			}
		}
	</script>
	<script type="text/javascript">
		if ($('#remember').attr('checked')) {
			var username = $('#username').attr("value");
			var password = $('#password').attr("value");
			// set cookies to expire in 14 days
			$.cookie('username', username, {
				expires : 14
			});
			$.cookie('password', password, {
				expires : 14
			});
			$.cookie('remember', true, {
				expires : 14
			});
		} else {
			// reset cookies
			$.cookie('username', null);
			$.cookie('password', null);
			$.cookie('remember', null);
		}
	</script>
	<script type="text/javascript">
		var remember = $.cookie('remember');
		if (remember == 'true') {
			var username = $.cookie('username');
			var password = $.cookie('password');
			// autofill the fields
			$('#username').attr("value", username);
			$('#password').attr("value", password);
		}
	</script>
</body>
</html>
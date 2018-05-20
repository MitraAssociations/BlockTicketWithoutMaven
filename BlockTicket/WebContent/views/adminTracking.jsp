<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BlockTicket/AdminTracker</title>
</head>
<body>
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
			<a class="navbar-brand" href="index.jsp" id="blockTicket">BlockTicket</a>
		</div>
		</form>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="${contextPath}/views/login.jsp" id="drop">Login</a></li>
		</ul>

	</div>
	</nav>

	<!-- End Header -->
	<!-- product display body-->


	<h3>
		<a href="index.jsp">Home</a>/<b>Book Ticket</b>
	</h3>
	<br />
	<br />
	</nav>

	<!-- Booking descriptions -->

	<!-- End descriptions -->

	<div id="footer_footer"><%@ include file="footer.jsp"%></div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>

<head>

<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="An ecomerce based project">
<meta name="author" content="Abir Hosen">


<title>${title}</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">

<link href="${css}/myapp.css" rel="stylesheet">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>

<script src="${js}/myapp.js"></script>

</head>

<body>

	<div>
		<div class="ui container">

			<br>
			<br>
			<br>
			<br>
			<br>
			<br>

			<div class="container">

				<c:if test="${not empty message }">
					<div class="ui four column centered grid">
						<div class="column error">${message}</div>
					</div>
				</c:if>
				<c:if test="${not empty logout }">
					<div class="ui four column centered grid">
						<div class="column">${logout}</div>
					</div>
				</c:if>

				<form class="form-signin" method="post"
					action="${contextRoot}/login">

					<h2 class="form-signin-heading">Please sign in</h2>

					<p>
						<label for="username" class="sr-only">Username</label> <input
							type="text" id="username" name="username" class="form-control"
							placeholder="Username" required autofocus>
					</p>

					<p>
						<label for="password" class="sr-only">Password</label> <input
							type="password" id="password" name="password"
							class="form-control" placeholder="Password" required>
					</p>

					<input name="${_csrf.parameterName }" type="hidden"
						value="${_csrf.token }" />

					<button class="btn btn-lg gray btn-block" type="submit">
						Sign in</button><br>
					<div class="ui warning bottom attached message">
						<i aria-hidden="true" class="help icon"></i> Not signed up? <a
							href="${contextRoot}/registration">Sign up here</a> instead.
					</div>

				</form>

			</div>

		</div>

	</div>

</body>

</html>
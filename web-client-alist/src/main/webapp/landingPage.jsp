<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Landing</title>
<script src="https://apis.google.com/js/client:platform.js" async defer></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript">
	function signinCallback(authResult) {
		if (authResult['status']['signed_in']) {
			// Update the app to reflect a signed in user
			// Hide the sign-in button now that the user is authorized, for example:
			document.getElementById('signinButton').setAttribute('style',
					'display: none');
			console.log("Successful");
		} else {
			// Update the app to reflect a signed out user
			// Possible error values:
			//   "user_signed_out" - User is signed-out
			//   "access_denied" - User denied access to your app
			//   "immediate_failed" - Could not automatically log in the user
			console.log('Sign-in state: ' + authResult['error']);
		}
	}
</script>

<link type="text/css" rel="stylesheet"
	href="/bootstrap/css/bootstrap.css">
<link type="text/css" rel="stylesheet"
	href="/bootstrap/css/bootstrap-responsive.css">
<link type="text/css" rel="stylesheet" href="/css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="jumbotron">
		<div class="container">

			<form class="col-xs-12">
				<button type="button" class="btn btn-primary btn-lg btnList "
					style="text-align: center">List</button>
			</form>
			<form class="col-xs-12">
				<button type="button" class="btn btn-primary btn-lg btnAdd">Add
				</button>
			</form>
			<form class="col-xs-12">
				<button type="button" class="btn btn-primary btn-lg btnShop">Shop</button>
			</form>
			<div>
				<span id="signinButton"> <span class="g-signin"
					data-callback="signinCallback"
					data-clientid="1083260449954-knkapobd9h0jjvfbd2ept422t1k7lc8g.apps.googleusercontent.com"
					data-cookiepolicy="single_host_origin"
					data-requestvisibleactions="http://schema.org/AddAction"
					data-scope="https://www.googleapis.com/auth/plus.login"> </span>
				</span>
			</div>
		</div>
	</div>
</body>
</html>
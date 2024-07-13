<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profile</title>
<link rel="stylesheet" href="./css/profile.css">
</head>
<body>

	<%
	if (session.getAttribute("udata") == null) {
		session.setAttribute("f1", true);
		response.sendRedirect("Login.jsp");
		return;
	}
	%>

	<%
	if (session.getAttribute("bal") != null) {
	%>
	<script>
		alert("Insufficient Account Balance!!");
	</script>
	<%
	}
	session.removeAttribute("bal");
	%>

	<%
	if (session.getAttribute("s") != null) {
	%>
	<script>
		alert("Something Went Wrong Try Again!!");
	</script>
	<%
	}
	session.removeAttribute("s");
	%>

	<div class="hero">
		<nav>
			<img src="./assets/BankLogo.png" class="logo" alt="logo" />
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<img src="./assets/user.png" class="user-pic" alt="user-pic"
				onclick="toggleMenu()">

			<div class="sub-menu-wrap" id="subMenu">
				<div class="sub-menu">
					<div class="user-info">
						<img src="./assets/user.png" alt="user">
						<h2>USER</h2>
					</div>
					<hr>
					<a href="Report.jsp" class="sub-menu-link"> <img
						src="./assets/profile.png" alt="profile">
						 <span>View Profile</span>
					</a> <a href="#" class="sub-menu-link"> <img
						src="./assets/help.png" alt="help">
						<span>Help</span>
					</a> <a href="LogoutController" class="sub-menu-link"> <img
						src="./assets/logout.png" alt="logout">
						<span>Logout</span>
					</a>
				</div>
			</div>

		</nav>


		<div class="container">

			<div class="box-container">

				<div class="box">
					<img src="./assets/rtgs.png" alt="">
					<h3>RTGS</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Minus, commodi?</p>
					<a href="FundController" class="btn">RTGS</a>
				</div>

				<div class="box">
					<img src="./assets/neft.png" alt="">
					<h3>NEFT</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Minus, commodi?</p>
					<a href="FundController" class="btn">NEFT</a>
				</div>

				<div class="box">
					<img src="./assets/recharge.png" alt="">
					<h3>Recharge</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Minus, commodi?</p>
					<a href="Recharge.jsp" class="btn">Recharge</a>
				</div>
			</div>
		</div>
	</div>

	<script>
		let subMenu = document.getElementById("subMenu");

		function toggleMenu() {
			subMenu.classList.toggle("open-menu");
		}
	</script>

</body>
</html>
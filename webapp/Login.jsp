<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./css/form1.css">
</head>
<body>
<section class="container" >
        <nav>
          <div class="nav__bar">
            <a href="#" class="nav__logo">
              <img src="./assets/BankLogo.png" alt="logo" />
              <span>COUNTRY BANK</span>
            </a>
            <div class="nav__menu__btn" id="menu-btn">
                <i class="ri-menu-3-line"></i>
              </div>
            </div>
            <ul class="nav__links" id="nav-links">
              <li><a href="Index.jsp">Home</a></li>
            </ul>   
        </nav>

        <div class="form-box">
        
            <!------------------- login form -------------------------->
            <div class="login-container" id="login">
                <div class="top">
                    <span>Don't have an account? <a href="./Register.jsp">Sign Up</a></span>
                    <header>Login</header>
                </div>
                <div class="input-box">
                    <input type="text" name="aNo" class="input-field" placeholder="Enter Account Number " pattern="[0-9]{3,5}" maxlength="5"
							title="Only Numbers are Accepted, Minimum Length 3, Maximum Length 5" required>
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="password" name="Pass" class="input-field" placeholder="Password" required>
                    <i class="bx bx-lock-alt"></i>
                </div>
                <div class="input-box">
                    <input type="submit" class="submit" value="Sign In">
                </div>
                <div class="two-col">
                    <div class="one">
                        <input type="checkbox" id="login-check">
                        <label for="login-check"> Remember Me</label>
                    </div>
                    <div class="two">
                        <label><a href="#">Forgot password?</a></label>
                    </div>
                </div>
            </div>
            
        </div>
    </div>   
    
    
    

	<%
	if (session.getAttribute("f1") != null) {
	%>
	<script>
		alert("Something Went Wrong Login Again!!");
	</script>
	<%
	}
	session.removeAttribute("f1");
	%>
	<%
	if (session.getAttribute("acc") != null) {
	%>
	<script>
		alert("Invalid Account Number!!");
	</script>
	<%
	}
	session.removeAttribute("acc");
	%>
	<%
	if (session.getAttribute("pass") != null) {
	%>
	<script>
		alert("Invalid Password!!");
	</script>
	<%
	}
	session.removeAttribute("pass");
	%>

    
</body>
</html>
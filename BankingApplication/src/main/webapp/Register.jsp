<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
        
            <!------------------- registration form -------------------------->
            <div class="register-container" id="register">
                <div class="top">
                    <span>Have an account? <a href="Login.jsp">Login</a></span>
                    <header>Sign Up</header>
                </div>
                
                <div class="input-box">
                    <input type="text" name="aNo" class="input-field" placeholder="Enter Account Number" pattern="[0-9]{3,5}" maxlength="5"
							title="Only Numbers are Accepted" required>
                    <i class="bx bx-envelope"></i>
                </div>
                <div class="input-box">
                    <input type="text" name="cName" class="input-field" placeholder="Enter Customer Name" pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" title="Enter A valid Name" required>
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="text" name="mNo" class="input-field" placeholder="Enter Mobile Number" pattern="^\d{10}$" maxlength="10"
							title="Only Numbers are Accepted" required>
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="text" name="aBal" class="input-field" placeholder="Enter Account Opening Balance" title="Only Numeric Values Are Accepted"
							maxlength="8" required>
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="password" name="Pass" class="input-field" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}"
							class="form-control" maxlength="20" required
							title="At least 1 Uppercase,
								   At least 1 Lowercase,
								   At least 1 Number,
								   At least 1 Symbol, symbol allowed --> !@#$%^&*_=+-,
								   Min 8 chars and Max 12 chars">
                    <i class="bx bx-lock-alt"></i>
                </div>
                <div class="input-box">
                    <input type="submit" class="submit" value="Register">
                </div>
                <div class="two-col">
                    <div class="one">
                        <input type="checkbox" id="register-check">
                        <label for="register-check"> Remember Me</label>
                    </div>
                    <div class="two">
                        <label><a href="#">Terms & conditions</a></label>
                    </div>
                </div>
            </div>
        </div>
    </div>   
    <%
	if (session.getAttribute("acc") != null) {
	%>
	<script type="text/javascript">
		alert("Account Number Aldredy Present Go to Login!!")
	</script>
	<%
	}
	session.invalidate();
	%>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

    
</body>
</html>
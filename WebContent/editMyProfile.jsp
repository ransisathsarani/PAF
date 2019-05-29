<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.hari.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		
		<script type="text/javascript" src=Controller/jquery-3.4.1.min.js></script>
<script type="text/javascript" src=Controller/controllerMain.js></script>
</head>
<body>
<%
Member mem = (Member) session.getAttribute("member");
String un = "";
if(mem == null){
	String msg = "Login First";
	String redirectURL = "http://localhost:8081/PAF/logReg.jsp?msg="+msg;
	response.sendRedirect(redirectURL);
}
else{
	un = mem.getName();
}
%>

<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="Search...">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">									
							<li><a href="Logout.jsp" onclick = "AlertLogout()">Logout</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images/newLogo.png" class="site_logo" alt="" style="width:150px;height:45px;"></a>
					<nav id="menu" class="pull-right">
						
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="themes/images/carousel/img5.jpg" alt="" style="width:1200px;height:500px;">
						</li>
						
						<li>
							<img src="themes/images/carousel/img4.jpg" alt="" style="width:1200px;height:500px;">
							<div class="intro">
								<h1>Sell'n'bye way to the best</h1>
								<p><span>High quality products</span></p>
								<p><span>Reliable and efficient service 24/7</span></p>
								<p><span>The largest e-commerce System</span></p>
							</div>
						</li>
						<li>
							<img src="themes/images/carousel/img10.jpg" alt="" style="width:1200px;height:500px;">
						</li>
						<li>
							<img src="themes/images/carousel/img2.jpg" alt="" style="width:1200px;height:500px;">
						</li>
					</ul>
				</div>				
			</section>
			<br/>
			<br/>
			<br/>
			
			<section class="main-content">
				<!-- Main Content -->
					<div style = "text-align: center;">
					
					
					<%
	String name="";
	Member memx = (Member) session.getAttribute("edit");
	String type = "";
	String address = "";
	String mail = "";
	int num = -99;
	String password = "";
	
	
	
	try{
		name = memx.getName();
		type = memx.getType();
		address = memx.getAddress();
		mail = memx.getMail();
		num = memx.getContactNumber();
		password = memx.getPassword();
	}
	catch(Exception e){
		System.out.println("Error: " + e);
	}
//action = "entry/member/updateMemeber"
		%>
			<form id = "formEditMyProfile" action = "editMyProfile.jsp"  method = "post">
				<input type="hidden" name="name" value = "<%=name %>"/>
				<h3>Type: <%=type %>
					<select name = "type">
					  <option value="Seller">Seller</option>
					  <option value="Buyer">Buyer</option>
					</select></h3><br/>
				<h3>Address: <input type="text" name="add" id="add" value = "<%=address %>" required/></h3><br/>
				<h3>Mail Id: <input type="email" name="mail" id="mail" value = "<%=mail %>" required/></h3><br/>
				<h3>Contact Number: <input type="text" name="cno" id="cno" value = "<%=num %>" required/></h3><br/>
				<input id = "btnEditUser" name = "btnEditUser" type = "button" value = "Edit">
				<div id = "divStsMsgEditProfile"></div>
			</form>
					
					
					</div>
			</section>
			<br/>
			<br/>
			<br/>
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contact Us</a></li>
							<li><a href="Logout.jsp" onclick = "AlertLogout()">Logout</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>Others</h4>
						<ul class="nav">
							<li><a href="#">Our Clients</a></li>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">Register</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/newLogo.png" class="site_logo" alt="" style="width:150px;height:45px;"></p>
						<p>To be successful, you have to use each day as an opportunity to improve, to be better, to get a little bit closer to your goals. It might sound like a lot of work—and with a busy schedule, next to impossible. But the best part is, the more you accomplish, the more you’ll want to do, the higher you’ll want to reach. So  as long as you have the hunger for success, you will always have the power within you to achieve it.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2019 Sell'N'Bye Company, All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
			
			function AlertLogout(){
				alert("Logged out");
			}
		</script>

</body>
</html>
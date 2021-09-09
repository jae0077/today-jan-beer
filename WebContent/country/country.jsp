<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String url = application.getContextPath() + "/";
%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<title>Insert title here</title>
</head>
<body>
	<nav
		class="w3-sidebar w3-bar-block w3-white w3-animate-left w3-text-grey w3-collapse w3-top w3-center"
		style="z-index: 3; width: 300px; font-weight: bold" id="mySidebar">
		<br>
		<jsp:include page="/common/nav.jsp"></jsp:include>
	</nav>

	<!-- Top menu on small screens -->
	<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
		<jsp:include page="/common/header.jsp"></jsp:include>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">

		<!-- Push down content on small screens -->
		<div class="w3-hide-large" style="margin-top: 83px"></div>

		<!-- Modal for full size images on click-->
		<div id="modal01" class="w3-modal w3-black" style="padding-top: 0"
			onclick="this.style.display='none'">
			<span class="w3-button w3-black w3-xlarge w3-display-topright">&times;</span>
			<div
				class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
				<img id="img01" class="w3-image">
				<p id="caption"></p>
			</div>
		</div>

		<!-- About section -->
		<div class="w3-container w3-dark-grey w3-center w3-text-light-grey w3-padding-32" id="about"> <!-- 나라 디테일 -->
			<h4><b>${requestScope.selectCountry.name}</b></h4>
			<img src="images/country/${requestScope.selectCountry.imgPath}" alt="Me" class="w3-image w3-padding-32" width="600" height="650">
			<div class="w3-content w3-justify" style="max-width:600px">
				<h4>My Name</h4>
				<p>Some text about me. I love taking photos of PEOPLE. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
				  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor
				  incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
				</p>
				<p>mail: example@example.com</p>
				<p>tel: 5353 35531</p>

				<h4 class="w3-padding-16">대표 맥주</h4>
				<div class="w3-row-padding" style="margin:0 -16px">
				<c:forEach items="${requestScope.selectBeer}" var="data">
					<div class="w3-half w3-margin-bottom">
						<ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
							<li class="w3-black w3-xlarge w3-padding-32">
								<img alt="맥주" src="data:image/jpeg;base64,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">
								<br>
								<h2>${data.name}</h2>
							</li>
							<li class="w3-padding-16">${data.alcohol}</li>
							<li class="w3-padding-16">${data.kinds}</li>
							<li class="w3-padding-16">${data.info}</li>
							<li class="w3-padding-16">
							<h2>$ 10</h2>
							<span class="w3-opacity">per month</span>
							</li>
							<li class="w3-light-grey w3-padding-24">
							<button class="w3-button w3-white w3-padding-large">Sign Up</button>
							</li>
						</ul>
					</div>
				</c:forEach>
				</div>
				</div></div>
				
			
		<!-- Footer -->
		<footer class="w3-container w3-padding-32 w3-grey">
			<jsp:include page="/common/footer.jsp"></jsp:include>
		</footer>

		<div class="w3-black w3-center w3-padding-24">
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
		</div>

		<!-- End page content -->
	</div>
</body>
</html>
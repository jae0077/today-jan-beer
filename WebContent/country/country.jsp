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
				<p>
					${requestScope.selectCountry.info}
				</p>

				<h4 class="w3-padding-16" style="text-align: center">대표 맥주</h4>
				<div class="w3-row-padding" style="margin:0 -16px">
					<c:forEach items="${requestScope.selectBeer}" var="data">
						<div class="w3-half w3-margin-bottom">
							<ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
								<li class="w3-black w3-xlarge w3-padding-32">
									<img alt="맥주" src="images/beer/${data.imgPath}" width="100%">
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
			</div>
		</div>
				
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
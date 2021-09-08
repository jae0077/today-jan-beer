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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=shadow-multiple">
<link href="https://fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
<style>
.w3-Sunflower {
	font-family: "Sunflower", Sans-serif;
}
</style>
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

		<!-- Photo grid -->
			<div class="w3-row">
				<!-- 대륙으로 나라조회 결과시 -->
				<c:choose>
				    <c:when test="${not empty requestScope.selectCountryList}">
					    <c:forEach items="${requestScope.selectCountryList}" var="data">
							<div class="w3-third">
			            		<a href="${url}controller?command=beer&country=${data.countryIdx}">
			            			<div class="w3-card w3-hover-opacity w3-display-container">
										<img src="images/country/${data.imgPath}" style="width:100%">		
				            			<div class="w3-display-middle w3-display-hover">
				            				<p class="w3-xlarge font-effect-shadow-multiple">${data.name}</p>
						            	</div>
									</div>
								</a>
			            	</div>
			       		</c:forEach>
				    </c:when>
				    <c:when test="${empty requestScope.selectCountryList}">
            			<div class="w3-display-container">
							<img src="images/country/empty.jpg" style="width:100%">		
	            			<div class="w3-display-middle">
	            				<p class="w3-xlarge font-effect-shadow-multiple">등록된 나라가 없습니다.</p>
			            	</div>
						</div>
			    	</c:when>
		    	</c:choose>
       		</div>

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
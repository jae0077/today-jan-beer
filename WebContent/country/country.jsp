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

		<!-- Photo grid -->
		<div class="w3-row">
			<!-- 대륙으로 나라조회 결과시 -->
			<!-- div class="w3-third">
				<img src="images/image1.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image2.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image3.jpg" style="width:100%" onclick="onClick(this)">
			</div> -->
			
			
			
			
			<!-- <div class="w3-third">
				<img src="images/image4.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image5.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image6.jpg" style="width:100%" onclick="onClick(this)">
			</div> -->
			
			<!-- <div class="w3-third">
				<img src="images/image7.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image8.jpg" style="width:100%" onclick="onClick(this)">
				<img src="images/image9.jpg" style="width:100%" onclick="onClick(this)">
			</div>
		</div> -->

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

		<article>
	<table border="1">
		<tr>
			<th>맥주번호</th>
			<th>맥주이름</th>
			<th>맥주온도</th>
			<th>맥주종류</th>
		</tr>

		<!-- ???
		1. 모든 재능 기부 프로젝트 list 출력하기
		2. 재능 기부자 id 클릭하면 상세 보기 화면으로 이동
		3. 재능 수혜자 id 클릭하면 미완성 로직이기 때문에 blank 화면 
	 -->
		<c:forEach items="${requestScope.selectBeer}" var="data">
			<tr>
				<td>${data.beerIdx}</td>
				<td>${data.name}</td>
				<td>${data.alcohol}</td>
				<td>${data.kinds}</td>
				<%-- <td>${data.beerIdx}</td>
				 --%><%--<td><a
					href="${url}?command=activist&activistId=${data.continentIdx}">${data.activistId}</a></td>
				<td><a
					href="${url}probono?command=recipient&recipientId=${data.beerIdx}">${data.beerIdx}</a></td>
				<td>${data.projectContent}</td> --%>
			</tr>
		</c:forEach>





	</table>
	</article>
		


		<!-- Footer -->
		<footer class="w3-container w3-padding-32 w3-grey">
			<div class="w3-row-padding">
				<div class="w3-third">
					<h3>INFO</h3>
					<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo
						condimentum, porta lectus vitae, ultricies congue gravida diam non
						fringilla.</p>
				</div>

				<div class="w3-third">
					<h3>BLOG POSTS</h3>
					<ul class="w3-ul">
						<li class="w3-padding-16 w3-hover-black"><img
							src="/w3images/workshop.jpg" class="w3-left w3-margin-right"
							style="width: 50px"> <span class="w3-large">Lorem</span><br>
							<span>Sed mattis nunc</span></li>
						<li class="w3-padding-16 w3-hover-black"><img
							src="/w3images/gondol.jpg" class="w3-left w3-margin-right"
							style="width: 50px"> <span class="w3-large">Ipsum</span><br>
							<span>Praes tinci sed</span></li>
					</ul>
				</div>

				<div class="w3-third">
					<h3>POPULAR TAGS</h3>
					<p>
						<span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span
							class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New
							York</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">London</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">IKEA</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">NORWAY</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">DIY</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Baby</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Family</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">News</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Clothing</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Shopping</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Sports</span>
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Games</span>
					</p>
				</div>
			</div>
		</footer>

		<div class="w3-black w3-center w3-padding-24">
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
		</div>

		<!-- End page content -->
	</div>
</body>
</html>
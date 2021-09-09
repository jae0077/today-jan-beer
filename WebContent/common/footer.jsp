<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String url = application.getContextPath() + "/";
%>
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
			<a href=""><li class="w3-padding-16 w3-hover-black">
           		<img src="images/jaehun.jpg" class="w3-left w3-round w3-margin-right" style="width: 50px"> <span class="w3-large w3-Jua">coblin</span><br>
         	</li></a>
			<a href=""><li class="w3-padding-16 w3-hover-black">
         	    <img src="images/jimyeung.jpg" class="w3-left w3-round w3-margin-right" style="width: 50px"> <span class="w3-large w3-Jua">jimyeung</span><br>
            </li></a>
            <a href=""><li class="w3-padding-16 w3-hover-black">
         	    <img src="images/jiwon.jpg" class="w3-left w3-round w3-margin-right" style="width: 50px"> <span class="w3-large w3-Jua">jiwon</span><br>
            </li></a>
		</ul>
	</div>

	<div class="w3-third">
		<h3>POPULAR TAGS</h3>
		<p>
		<c:choose>
			<c:when test="${not empty requestScope.selectCountryList}">
				<c:forEach items="${requestScope.selectCountryList}" var="data">
					<a href="${url}controller?command=beer&country=${data.countryIdx}" style="text-decoration:none">
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom w3-Jua">${data.name}</span>
					</a>
				</c:forEach>
			</c:when>
			<c:when test="${not empty requestScope.selectCountryName}">
				<c:forEach items="${requestScope.selectCountryName}" var="data2">
					<a href="${url}controller?command=beer&country=${data2.countryIdx}" style="text-decoration:none">
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom w3-Jua">${data2.name}</span>
					</a>
				</c:forEach>
			</c:when>
		</c:choose>
		</p>
	</div>
</div>

<script>
	// Script to open and close sidebar
	function w3_open() {
	  document.getElementById("mySidebar").style.display = "block";
	  document.getElementById("myOverlay").style.display = "block";
	}
	 
	function w3_close() {
	  document.getElementById("mySidebar").style.display = "none";
	  document.getElementById("myOverlay").style.display = "none";
	}
</script>
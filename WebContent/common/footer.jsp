<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String url = application.getContextPath() + "/";
%>
<div class="w3-row-padding">
	<div class="w3-third">
		<h3>INFO</h3>
		<p style="font-size:0.5em">여러분들의 후원이 저희의 현지 답사에 큰 도움이 됩니다. 많은 관심 부탁드립니다.<br><br></p>
		<div class="w3-twothird w3-container">
			<p style="font-size:0.5em">
				신한 110-422-709379 / 차재훈<br>
				기업 165-107053-01-011 / 김지명<br>
				국민 475801-01-095552 / 방지원
			</p>
		</div>
		
		<div class="w3-third w3-container">
		<br>
			<a href="https://open.kakao.com/o/gkW6SUtd" target="_blank" style="text-decoration:none">
           		<img src="images/kakaotalk.png" style="width: 30px">
        	</a>
       	</div>	
	</div>

	<div class="w3-third">
		<h3>BLOG POSTS</h3>
		<ul class="w3-ul">
			<a href="https://coblin.tistory.com/" target="_blank" style="text-decoration:none">
			<li class="w3-padding-16 w3-hover-black">
           		<img src="images/jaehun.jpg" class="w3-left w3-round w3-margin-right" style="width: 30px"> <span class="w3-large w3-jua" style="font-size:0.5em">coblin</span><br>
         	</li></a>
			<a href="https://jimyeung-dev-til.tistory.com/" target="_blank" style="text-decoration:none">
			<li class="w3-padding-16 w3-hover-black">
         	    <img src="images/jimyeung.jpg" class="w3-left w3-round w3-margin-right" style="width: 30px"> <span class="w3-large w3-jua" style="font-size:0.5em">ganjimyeung</span><br>
            </li></a>
            <a href="https://url.kr/5ex8ra" target="_blank"><li class="w3-padding-16 w3-hover-black" style="text-decoration:none">
         	    <img src="images/jiwon.jpg" class="w3-left w3-round w3-margin-right" style="width: 30px"> <span class="w3-large w3-jua" style="font-size:0.5em">bbang</span><br>
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
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">${data.name}</span>
					</a>
				</c:forEach>
			</c:when>
			<c:when test="${not empty requestScope.selectCountryName}">
				<c:forEach items="${requestScope.selectCountryName}" var="data2">
					<a href="${url}controller?command=beer&country=${data2.countryIdx}" style="text-decoration:none">
						<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">${data2.name}</span>
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
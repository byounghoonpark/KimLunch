<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%--/springmvc1/src/main/webapp/layout/kiclayout.jsp --%>

<!DOCTYPE html>
<html>
<head>
<title><sitemesh:write property="title" /></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.logo{
	width: 50px;
    height: 50px;
	background-image:url(../css/logo1.png);
	background-size:contain;
	background-repeat: no-repeat;
    background-position: center;
    border:1px solid black;
}
</style>
<sitemesh:write property="head" />
</head>
<body>



<!-- Top menu -->
<div class="w3-bar w3-top w3-grey w3-large" style="z-index:4">
<div class="w3-button w3-padding-16 w3-left">
    	<button class="logo" onclick="location.href='main'"></button>
    </div>
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i> &nbsp;Menu</button>
  <span class="w3-bar-item w3-right">
	<c:if test="${empty sessionScope.loginUser}">
	 <a class="w3-right w3-padding-16" style="margin-right:10px; "href="${path}/user/join">회원가입</a>
	 <a class="w3-right w3-padding-16" href="${path}/user/main">로그인</a>
	</c:if>   
	<c:if test="${!empty sessionScope.loginUser}">
	${sessionScope.loginUser.name}님이 로그인 하셨습니다.&nbsp;&nbsp;
	 <a href="${path}/user/logout">로그아웃</a>
	</c:if>   
  </span>
  <div class="w3-center w3-padding-16">
  <input type="text" /><button type="submit" class="w3-center w3-padding-16">검색</button>
  </div>
  <div class="w3-left w3-padding-16" style="max-width:1200px;margin:auto">
  </div>
</div>

  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">
  <sitemesh:write property="body" /> 
  </div>
  


</body>
</html>
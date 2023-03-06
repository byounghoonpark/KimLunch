<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>김점심</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
</head>
<body>
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px"></div>

<div class="w3-main w3-content w3-padding" 
style="width:100%; margin:0 auto;">

  <!-- 인기글 노출-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food" style="width:100%; margin:0 auto;">
  
    <div class="w3-quarter" align="center" 
    style="height:350px; width:350px; border:1px solid; padding:50px; margin-right:50px;"> 
      <img src="/w3images/sandwich.jpg" alt="Sandwich" style="width:100%">
      <a href="board">인기글</a>
      <p>클릭시 게시판으로 이동</p>
    </div> 
    
    <div class="w3-quarter" align="center" 
    style="height:350px; width:350px; border:1px solid; padding:50px;">
    	<h3>지도</h3>
      <form method="post" action="board">
		<div class="search_map">
			<input type="text" class="form-control pull-right" placeholder="위치검색" name="searchWord" />
			<button class="btn_map" type="submit" >검색</button>
		</div>
		</form>
    </div>
  </div>
 </div>

</body>
</html>

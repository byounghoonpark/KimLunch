<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 테스트</title>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="https://cdn.kormedi.com/wp-content/uploads/2020/11/marat-musabirov.jpg" style="width:100%" alt="PictureError">
          <div class="w3-display-bottom w3-container w3-text-black">
            <h2>저는 레몬입니다</h2>
          </div>
        </div>
        <div class="w3-container">
          <table class="w3-table">
		<tr><td>아이디</td><td>${user.userid}</td></tr>
		<tr><td>닉네임</td><td>${user.nickname}</td></tr>
		<tr><td>이름</td><td>${user.name}</td></tr>
		<tr><td>연락처</td><td>${user.phoneno}</td></tr>
		<tr><td>이메일</td><td>${user.email}</td></tr>
		<tr><td>성별</td><td>${user.gender}</td></tr>
		<tr><td>직장</td><td>${user.address}</td></tr>
		<tr><td><a href="update?id=${user.userid}">정보수정</a>&nbsp;</td>
		</table><br>
          <hr>
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <a href="myboard?id=${user.userid}"><h2 class="w3-text-black w3-padding-16">내가 쓴 글</h2></a>
       	  <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://health.chosun.com/site/data/img_dir/2022/07/11/2022071101596_0.jpg" alt="사진1"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>개인최신글1 제목을 받아옵니다.(nickname으로 ano desc해서 article 읽기)</b></p>
      		</div>
    	  </div>
    	  <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://health.chosun.com/site/data/img_dir/2022/02/08/2022020800704_0.jpg" alt="사진2"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>라면에 김치. 참을수 있슈?!</b></p>
      		</div>
    	  </div>
    	  <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://img.siksinhot.com/article/1632730943234000.jpg" alt="사진3"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>매운맛으로 당신의 혀를 박살냅니다.</b></p>
      		</div>
    	  </div>
      </div>
      <div class="w3-container w3-card w3-white">
        <a href="bookmark?id=${user.userid}"><h2 class="w3-text-black w3-padding-16">북마크</h2></a>
        <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://health.chosun.com/site/data/img_dir/2022/07/11/2022071101596_0.jpg" alt="사진1"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>개인최신글1 제목을 받아옵니다.(nickname으로 ano desc해서 article 읽기)</b></p>
      		</div>
    	  </div>
    	  <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://health.chosun.com/site/data/img_dir/2022/02/08/2022020800704_0.jpg" alt="사진2"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>라면에 김치. 참을수 있슈?!</b></p>
      		</div>
    	  </div>
    	  <div class="w3-third w3-container w3-margin-bottom">
      		<img src="https://img.siksinhot.com/article/1632730943234000.jpg" alt="사진3"
      			style="width:100%" class="w3-hover-opacity" height="176">
      		<div class="w3-container w3-white">
        	<p><b>매운맛으로 당신의 혀를 박살냅니다.</b></p>
      		</div>
    	  </div>
      </div>

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

</body>
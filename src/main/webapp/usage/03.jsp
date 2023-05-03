<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	select {
		padding: 4px;
	}
</style>
<title>자바스크립트</title>
</head>
<body>
	<h3>카테고리 선택</h3>
	<div>
		<select id="main" data-name="totoro" data-age="11" data-gender="m">
			<c:forTokens items="현대,기아,기타" delims="," var="one">
				<option>${one }</option>
			</c:forTokens>
		</select>
		<select class="sub" data-group="현대" >
			<c:forTokens items="싼타페,펠리세이드,코나" delims="," var="one">
				<option>${one }</option>
			</c:forTokens>
		</select>
		<select class="sub"  style="display: none;"  data-group="기아">
			<c:forTokens items="스포티지,쏘렌토,셀토스" delims="," var="one">
				<option>${one }</option>
			</c:forTokens>
		</select>
		<select class="sub"  style="display: none;"  data-group="기타">
			<c:forTokens items="트렉스,코란도" delims="," var="one">
				<option>${one }</option>
			</c:forTokens>
		</select>
	</div>	
	<script>
	
	document.querySelector("#main").onchange = function(evt) {
		console.log(this.dataset);
		console.log(this.dataset.name);
		
		evt.target == this;	// 여기서는 evt.target 이나 this나 같을거임.
		console.log(evt.target.value);
		
		document.querySelectorAll(".sub").forEach(function(one) {
			if(one.dataset.group != evt.target.value) {
				one.style.display="none";
			}else {
				one.style.display="";
			}
				
		});
		
		
	}
	
	/*
		document.querySelectorAll(".sub").forEach( function(one) {
			one.style.display = "none";	// ""로 설정하면 나옴.
		});
	*/
	</script>
</body>
</html>







<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 &&, || 숏컷현상</h1>
	<ul>
		<li>논리 계산 && 는 둘다 true 인지 확인하는 연산 : 앞이 true면 뒷값에 따라 결정된다.</li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
	<script type="text/javascript">
		console.log(true && false);
		console.log(true && true);
		console.log(true && "아아아");
		
		console.log(false && false);
		console.log(false && true);
		console.log(false && "아아아");
		
		let obj = { "name" : "잭스패로우", "role" : "해적왕" };
		
		console.log(obj && obj.name);
		console.log()
		
	</script>
</body>
</html>
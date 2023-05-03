<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 분기/반복처리</h1>
	<ul>
		<li>자바스크립트라는 언어를 통해서도 분기/반복처리를 할 수 있다.</li>
		<li>분기 처리에 사용되는 if / switch는 사용법이 같다.<li>
		<li>if / else if 에 써야되는 데이터가 boolean 일 필요는 없다.</li>
		<li>while / for는 특별하게 다른점은 없다</li>
	</ul>
	
	<script type="text/javascript">
		for (let i = 0; i < 5; i++) {
			console.log("for ==> ", i ** i);
		}
	
	
		let v;
		let vv = "ss";
		if (v || vv) { 
			//v에 값이 있어야 돌아감(0, null, undefined, ""는 안돌아감)
			//!v => 값이 없어야 돌아감
			console.log("!!!!");
		}
	
		const r = 1 + Math.floor(Math.random()*10);
		console.log(r);
		
		if (r > 3) {
			
		} else {

		}
		
	</script>
</body>
</html>
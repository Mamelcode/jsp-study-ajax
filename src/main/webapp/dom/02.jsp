<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D.O.M</title>
</head>
<body>
	<h1>DOM 탐색</h1>
	<p id="p1" class="box">
		스크립트로 <b>DOM</b>의 특정 객체 접근하는 방법은 여러가지가 있다.
	</p>
	<p id="p2"> <b>다음 항목</b> <b>들을 보자</b> </p>
	<ul>
		<li class="box">* getElement *</li>
		<li>getElementById</li>
		<li>getElementsByClassName (배열)</li>
		<li>getElementsByTagName(배열)</li>
		<li>getElementsByName(배열)</li>
	</ul>
	
	<script type="text/javascript">
		const bs = document.getElementsByTagName("b");
		bs.innerHTML = "";
		
		for(let v of bs) {
			console.log(v.innerHTML);
		}
		
		const p1 = document.getElementById("p1");
		const bs2 = p1.getElementsByTagName("b");
		console.log(p1);
		console.log("bs2 ==> ", bs2.length);
		// p1.innerHTML = "모르겠다.";
		
		const boxes = document.getElementsByClassName("box");
		for(let v of boxes) {
			v.style.fontSize = "20px";
		} 
	</script>
</body>
</html>
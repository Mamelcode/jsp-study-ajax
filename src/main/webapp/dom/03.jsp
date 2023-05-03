<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D.O.M</title>
</head>
<body>
	<h1 id="heading">Document Object Model</h1>
	<P id="test" class="container" >
		DOM에서 특정요소를 접근하는 메서드는 getElement(s) 계열과 querySelector() 계열이 있다.
	</P>
	<ul class="container">
		<li>querySelector ==> one or nothing</li>
		<li>querySelectorAll ==> array </li>
	</ul>
	
	<script type="text/javascript">
		// s => 태그 .s => 클래스 #s => 아이디
		const elm = document.querySelector("#heading");
		console.log(elm.innerHTML);
		//console.log(elms[0].innerHTML);
		
		const elms = document.querySelectorAll("li");
		elms.forEach((one) => {
			one.style.color = "red";
		});
	</script>
</body>
</html>
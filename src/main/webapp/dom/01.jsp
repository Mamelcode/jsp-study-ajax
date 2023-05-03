<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D.O.M</title>
	<style type="text/css">
		.root {
			color: white;
		}
		
		.root-reverse {
			color: yellow;
		}
	</style>
</head>
<body style="background: #dddddd" class="root">
	<h1>Document Object Model</h1>
	<p>
		이제까지 자바스크립트 기본문법을 살펴본 이유는 스크립트를 통해서 DOM 제어를 해야한다.
		<br>우리가 작성하고 있는 이 HTML도 전부 객체이다.
		<br>자바스크립트는 이 DOM을 제어할수 있는데 진입지점이 document
	</p>
	
	<script type="text/javascript">
		console.log(document);
		document.body.style.background = "green";
		console.log(document.body.className);
		
		setInterval(() => { 
			if(document.body.className == "root") {
				document.body.className = "root-reverse";
			}else {
				document.body.className = "root";
			}
		}, 1000);
		
		// document.body.className = "root-reverse";
	</script>
</body>
</html>
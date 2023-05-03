<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h3>AJAX</h3>
	<p>AJAX는 웹페이지에서 자바스크립트를 사용하여 서버와 비동기 상호작용을 하는 기술이다.</p>
	<p>사용되는곳은 아이디 중복체크, 실시간 인기검색어, 검색어 자동완성기능 등이 있다.</p>
	<p>스크립트 처리하는데 있어서 필요한 데이터를 서버로부터 필요할때마다 받아와야 한다는 것</p>

	<button id="bt">AJAX</button>
	<button id="bt2">AJAX2</button>
	
	<h4 id="rst"></h4>
	
	<script type="text/javascript">
		document.querySelector("#bt2").onclick = function(evt) {
			const xhr = new XMLHttpRequest();
			
			xhr.open("get", "/api/target?no=123123", true);
			xhr.send();
			
			xhr.onreadystatechange = function() {
				console.log(xhr.readyState);
				if(xhr.readyState === 4) {
					const txt2 = xhr.responseText;
					const obj = JSON.parse(txt2)
					if(txt2 === "NNNNNN") {
						document.querySelector("#rst").innerHTML = "2안녕하세요.";
					}else {
						document.querySelector("#rst").innerHTML = "2반갑습니다.";
					}
				}
			}
		};
	
			/*
				0 : 요청이 초기화되지 않음
				1 : 서버와 연결(open)
				2 : 요청이 접수
				3 : 요청이 진행
				4 : 요청이 완료되고 응답을 받음
			*/
		
		/*
		document.querySelector("#bt").onclick = function(evt) {
			const xhr = new XMLHttpRequest();
			console.log("init => ", xhr.readyState);
			xhr.onreadystatechange = function() {
				console.log(this.readyState);
			};

			// 요청 보낼곳 설정(요청방식,경로,비동기설정)
			xhr.open("get", "/api/target?no=123123", false);
			xhr.send();
			
			const txt = xhr.responseText;
			console.log(txt);
			if(txt === "NNNNNN") {
				document.querySelector("#rst").innerHTML = "안녕하세요.";
			}else {
				document.querySelector("#rst").innerHTML = "반갑습니다.";
			}
		};
		*/
	</script>
</body>
</html>
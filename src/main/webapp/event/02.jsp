<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 활용</title>
</head>
<body id="body" oncontextmenu="event.preventDefault();" ondragover="event.preventDefault();">
	<h3>사용자 입력 글자 수 세기</h3>
	<a href="/event/01.jsp" onclick="event.preventDefault();">01.jsp</a>
	<form action="/event/02-task.jsp" id="f">
		<p>
			<input type="checkbox" style="width: 240px; padding: 4px;" id="txt" />
		</p>
		<p>
			<textarea
				style="resize: none; width: 240px; height: 120px; padding: 4px;"
				id="ta"></textarea>
		</p>
		<div>
			<span id="tacnt">0</span>/100
		</div>
		<button type="submit">제출</button>
	</form>

	<script>
		document.querySelector("#f").onsubmit = (evt) => {
			if(Math.random() >0.1) {
				evt.preventDefault();
			}
		};
			
		
		
		
		
		
		
		
		
		
		
		document.querySelector("#txt").onclick = (evt) => {
			// preventDefault() : 이벤트의 원래 행동을 막는 (무효화)
			evt.preventDefault();	
		}
	
	

		document.querySelector("#ta").onkeyup = function(evt) {
			// console.log("onkeypress");
			// evt.target 혹은 this 를 쓰면 이 객체에 접근
			// console.log(this.id , evt.target.id);
			// console.log(evt.target.value , evt.target.value.length );
			// 자바스크립트의 string 도 substring 이 있고 사용하는 것도 똑같다.
			if (evt.target.value.length <= 100) {
				document.querySelector("#tacnt").innerHTML = evt.target.value.length;
			} else {
				document.querySelector("#tacnt").innerHTML = 100;
				evt.target.value = evt.target.value.substring(0, 100);
			}
		};

		/*
		document.querySelector("#ta").onkeydown = (evt) =>{
			console.log("onkeydown");			
		};
		 */
	</script>
</body>
</html>
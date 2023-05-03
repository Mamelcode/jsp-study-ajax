<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body onclick="console.log('body', event.target);">
	<h1>자바스크립트로 돔 이벤트 제어</h1>
	<p>
		DOM 요소들은 사용자의 특정행위를 감지해서 자바스크립트를 실행시킬 수 있게 되있다. 이벤트가 발생했을때
		자바스크립트를 작동시키려면 여러가지가 있겠지만 두개 정도만 알아도 될것 같음.
	</p>
	<p onclick="for(let i=0; i<=2; i++) { console.log(i); }">
		HTML을 작성할때 미리 스크립트를 작성해두는 방식인데, 이렇게 작성해두면 
		기본 onclick 설정인	function(event) { 	}  의 바디 안으로 들어가게 된다.	
	</p>
	<p onclick="console.log('p', event);">
		한줄짜리 간단한건 저렇게 작성해둬도 괜찮지만 복잡하다면  
		사용자 정의 자바스크립트 함수를 작성해서 function(event) { 	}  안에 호출되게 유도
		<input type="text" onkeydown="keyCheck(event);" onclick="clickHandle(event);"/> 
	</p>
	<p id="s">
		애초에 HTML에 on 계열로 자바스크립트를 호출하게 설정해두지 않고 자바스크립트로 설정하는 법도 있다.		
	</p>
	
	
	<p style="font-size: small" >
		※ DOM의 이벤트는 캡쳐링(이벤트근원지로 찾아가는)과 버블링(근원지에서 바깥쪽으로)이라는 개념이 있다.
	</p>
	<script>
		document.querySelector("#s").onmouseover = function(e) {
			console.log(e);
			
		};
	
	
	
		const clickHandle = function(evt) {
			
			console.log("!!!!!!");
			evt.stopPropagation();	// 버블링이 막힘
		}
		const keyCheck = function(evt) {
			console.log(evt);
			console.log("key " ,evt.key);

		}
	
	</script>





</body>
</html>

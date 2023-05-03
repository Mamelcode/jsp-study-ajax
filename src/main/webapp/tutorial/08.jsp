<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<ul>
		<li>자바스크립트에도 객체가 있다. (필드, 메서드를 가지고있는)</li>
		<li></li>
		<li></li>
	</ul>
	
	<script type="text/javascript">
		let obf = {};
		let score = {
				kor : 77,
				eng : 97,
				math : 32
		};
		console.log(typeof score); //obj
		console.log(score);
		console.log("kor ==> ", score.kor); // 특정객체의 요소에 접근하기 위해서 . 방식 
		console.log("math ==> ", score["math"]); // `` 의 배열방식
		console.log(score.tot) // 없는요소라 unde~
		
		let str = JSON.stringify(score); // 객체를 JSON 표기방식 문자열로 바꿔준다.
		console.log(typeof str); // string
		console.log(str); // JSON방식으로 출력
		console.log(str.kor); // 문자열이라 unde~
		
		score.music = 3; // 추가 가능
		console.log(score);
		
		score.music = function() {
			console.log("song ~");
		};
		
		score.music();
		
		
	</script>
</body>
</html>
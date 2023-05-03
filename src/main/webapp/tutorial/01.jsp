<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cmd = "console.log(aa,bb,cc);";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	
	<p>
		자바스크립트에도 자료형이라는게 있고 변수도 있다.
		변수에서 선언할 때는 3개중에 하나를 쓰면된다. 
	</p>
	<ul>
		<li>var : js 처음부터 존재하던 변수 선언법(비추)</li>
		<li>let : 값 변경이 가능한 변수</li>
		<li>const : final 상수설정</li>
	</ul>
	<script type="text/javascript">
		var a = 3;
		let b = 3;
		const c = 3;
		
		var aa = "문자열";
		let bb = "문자열";
		const cc = "문자열";
		
		console.log(aa, bb, cc);
		
		
		
		// c = 5;	
		b = true;
		console.log(3, typeof 3);
		console.log(c, typeof c);
		console.log(cc, typeof cc);
		console.log(3.141592, typeof 3.141592);
		console.log(b, typeof b);
		
		console.log(typeof (typeof 3));
		console.log(typeof c == 'number');
		
		let n;
		console.log(n);
		
		console.log(n == undefined);
		
		let vv = null;
		console.log(typeof vv);
		console.log(vv == undefined);
		console.log(n == null );
		
		
	</script>
</body>
</html>
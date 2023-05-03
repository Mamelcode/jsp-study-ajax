<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 연산</h1>
	<p>자바스크립트를 이용해서도 산술연산을 포함하여 비교연산 이 가능하다.</p>
	<p>
		+, -, /, *, **(제곱), %, ++, --
	</p>
	<p>
		>, >=, &lt;, &lt;=, ==, !=, ===, !==
	</p>
	
	<script type="text/javascript">
		console.log(3 ** 2);
		console.log(10 / 4);
		console.log(10 % 4);
		console.log(Math.floor(10/4));
		console.log("11" + 22);
		console.log("11" * 1); 
		// 자바스크립트 String 도 + 을 제외한 산술연산은 자동 파싱
		
		let a = "33223";
		let b = "33";
		console.log(a + b);
		console.log(parseInt(a) + parseInt(b));
		
		console.log("result1 ==> ", "111" > "2");
		console.log("result2 ==> ", "가가" < "나나");
		
		console.log("eq1 ==> ", "1322" == 1322);
		console.log("eq2 ==> ", "1" === 1);
		
		console.log("삼항 ==> ", "1" === 1);
		
		
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>자바스크립트 함수</h2>
	<ul>
		<li>자바스크립트도 함수를 만들어서 처리할 수 있다.</li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
	<script type="text/javascript">
	//1. 기본형태 - 리턴타입 지정 필요 없다, 매개변수 설정할 때, 타입 지정 필요없다.
	function test(a, b) {
		console.log("a=" + a + ", b=" + b);
	}
	
	test(3, 5);
	test(1);
	test("자바", "스크립트", "짱");
	
	function max(a, b) {
		if(a > b) {
			return a;
		}else {
			return b;
		}
	}
	
	let ret = max(4, 6);
	console.log(ret);
	
	console.log(typeof max);
	console.log(max);
	
	let test2 = test;
	console.log(test2);
	test2("aaaa", "bbbb");
	
	</script>
</body>
</html>
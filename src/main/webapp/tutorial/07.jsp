<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	
	<ul>
		<li>function 이라는 키워드로 만들고 리턴타입이나 매개변수 타입을 고민할 필요는 없다.</li>
		<li>리턴을 시킬 함수는 함수안에서 리턴값을 주면된다.</li>
		<li>매개변수가 필요한 함수는 매개변수 칸에 변수명적어서 쓰면된다.</li>
		<li>매개변수 개수에 맞춰서 호출할 필요 없다. 부족하면 undefined/넘치면 버린다</li>
		<li>함수 사용결과를 리턴 받아도 된다. undefined이 뜬다.</li>
		<li>function 도 변수 형태로 관리가 된다.</li>
		<li>모든 변수는 호출이 가능하다 (단, 함수가아니면 에러가 뜬다)</li>
		<li>데이터를 카피하듯 함수도 카피할 수 있다.</li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
	<script type="text/javascript">
		//다른 형태로 함수를 만들어 보려고 한다.
		function absoulte(target) {
			return target > 0 ? "양수" : "음수";
		}
		
		const abs = function(target) {
			return target > 0 ? "양수" : "음수";
		};
		
		console.log(abs(11));
		console.log(abs(-11));
		
		const test = function () {
			console.log("one == ");
		};
		
		test();
		
		const ABS = abs;
		ABS(33);
		
		let rst1 = test;
		let rst2 = test();
		console.log(rst1);
		console.log(rst2);
		
		// arrow function
		const diff = (one, other) => {
			if(one > other) {
				return one - other;
			}else {
				return other - one
			}
		};
				
		console.log(diff(3, 8));
		console.log(diff(8, 3));
		
		// 활 함수를 더 간단하게
		const isPositive = one => {
			return one % 2 == 0 ? "짝수" : "홀수" 
		};
		
		// 더 간단하게
		const isPositive2 = one => one % 2 == 0 ? "짝수" : "홀수";
		
		console.log(isPositive(43));
		console.log(isPositive2(43));
		
		
		
	</script>
	
</body>
</html>
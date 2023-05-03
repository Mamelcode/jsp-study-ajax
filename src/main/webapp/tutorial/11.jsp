<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>자바스크립트 배열의 함수</h2>
	
	<script type="text/javascript">
		
	</script>
	
	<%if(Math.random() > 1) {%>
	<script type="text/javascript">
		let datas = ["루피", "조로", "상디", "우솝", "나미"];
		
		const test = function(e) {
			console.log(e + "!!!");
		}
		
		datas.forEach(test); // 넘겨준 function을 차례대로 호출해준다.
		datas.forEach(function(array, idx) {
			console.log("["+ array +"] at "+ idx);
		});
		
		let nums = [1, 2, 3, 4, 5];
		let sum = 0;
		
		nums.forEach((n) => {
			sum += n;
		});
		console.log(sum);
	</script>
	<%} %>
	
	<%if(Math.random() > 1) {%>
	<script type="text/javascript">
		let arr = ["월", "화", "수", "목", "금", "금", "금"];
		
		console.log(arr.indexOf("금")); // 중복값이 있을경우 맨앞에 인덱스가 나옴
		console.log(arr.indexOf("월", 2)); // 인덱스 스타트값 설정 없으면 -1
		
		arr.splice(1, 4, "대체");
		console.log(arr);
		
		console.log(arr.includes("목")); // true, false
		
		arr.splice(arr.indexOf("목"), 1);
		console.log(arr);
		
		console.log(arr.includes("목")); // true, false
	</script>
	<%} %>
	
	<%if(Math.random() > 1) {%>
	<script type="text/javascript">
		const arr = [];
		
		arr.push("유비");
		arr.push("조조");
		arr[arr.length] = "제갈량";
		console.log(arr);
		
		arr.pop(); // 마지막 요소를 지움
		console.log(arr);
		
		arr.unshift("사마의"); // 맨첫번째 요소로 추가
		console.log(arr);
		
		arr.shift(); // 맨첫번째 요소를 지움
		console.log(arr);
	</script>
	<%} %>
</body>
</html>
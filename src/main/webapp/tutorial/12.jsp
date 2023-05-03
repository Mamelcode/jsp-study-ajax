<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>자바스크립트의 배열</h2>
	<p>자바스크립트에서는 함수도 변수에 담겨서 사용이 되다보니
	함수복제도 가능하고 함수전달도 가능하다.<br>
	자바스크립트 배열이 가지고 있는 함수중에는 매개변수로 함수를 전달할 수 있는 함수들이 있다.
	==> 고차함수
	</p>
	
	<script type="text/javascript">
		let datas = [11, 32, 4, 15];
		let rst = datas.reduce((prev, next) => {
			console.log(prev, next);
			return prev < next ? prev : next;
		}, 0);
		
		console.log("rst ==> ", rst);
		
		
	</script>
	
	<%-- 
	<script type="text/javascript">
		// find 고차함수는 조건에 맞는 데이터의 위치를 알려준다
		// indexof 랑 비슷함
		// indexof는 객체배열은 못찾음
		// 동일데이터가 있으면 동일값을 리턴해줌
		
		let users = [ {name : "잭스패로우", age : 21}, {name : "나루토", age : 19} ];
		
		let sorted = users.sort( function(a, b) {
			return a.age - b.age;
			
		} );
		console.log(sorted);
		
		let idx = users.find(function(item) { 
			if(item.name === "나루토")
				return true;
		});
		console.log(idx);
			
	</script>
	--%>
	
	<%-- 
	<script type="text/javascript">
		let arr = [1, 4, 77, 2, 45, 2];
		// filter : 전달한 함수에서 true가 반환되는 값들만 모아서
		// 새로운 배열을 만들어 준다.
		let arr2 = arr.filter(function(item) {
			// console.log(item);
			if(item % 2 == 0) {
				return true;
			}else {
				return false;
			}
		});
		
		console.log(arr);
		console.log(arr2);
		
		let names = ["조조", "조운", "제갈량", "관우", "조비",];
		let f = names.filter((item) => item.startsWith("조"));
		console.log(f);
		
		const add = (a, b) => a + b;
		console.log(add (3, 4));
		
		const cvt = names.map( (item) => "<" + item + ">" )
		console.log(cvt);
	</script>
	--%>
</body>
</html>
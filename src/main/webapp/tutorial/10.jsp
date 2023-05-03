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
	
	<script type="text/javascript">
		let datas = [{win:31, lose:1}, {win:1, lose:41}, {win:21, lose:19}];
		console.log(datas[0].win);
		console.log(datas["1"].win);
		console.log(datas[2]["win"]);
		
		let arr = [3, 4, 5, 1, 5];
		console.log(arr.length);
		let sum = 0;
		for (let i = 0; i < arr.length; i++) {
			sum += arr[i];
		};
		console.log("sum == ", sum);
		
		sum = 0;
		for(let n of arr) { // 자바의 foreach
			sum += n;
		}
		console.log("sum == ", sum);
		
		for(let v in arr) { // 특정요소가 가지고있는 속성들을 하나씩뽑아준다.
			console.log(v, arr[v]);
		}
		
		let obj = {
			id : "가가",
			name : "나나",
			pass : "다다"
		};
		
		for(let v in obj) {
			console.log(v, obj[v]);
		}
		
		
		
	</script>
</body>
</html>
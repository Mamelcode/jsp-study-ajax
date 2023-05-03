<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script type="text/javascript">
		const arr = ['월','화','수'];
		console.log(typeof arr, arr);
		console.log(arr[0]);
		
		
		const str = JSON.stringify(arr); // gson.toJson
		console.log(typeof str, str);
		console.log(str[0]);
		
		
		const arrJson = JSON.parse(str); // gson.fromJson
		arrJson.push("목");
		console.log(typeof arrJson, arrJson);
		console.log(arrJson[0]);
	</script>
	
</body>
</html>
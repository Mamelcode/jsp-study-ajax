<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		box-sizing: border-box;
	}
</style>
</head>
<body>
	<h2>서버측의 if와 클라이언트 측의 if</h2>
	
	<textarea style="resize: none; width: 100%;" id="tx"></textarea>
	
	
	<script type="text/javascript">
		document.getElementById("tx").onclick = function() {
			if(window.confirm("로그인이 필요합니다.")) {
				
			}else {
				window.alert("로그인 하라구요");
			}
		}
	</script>
</body>
</html>
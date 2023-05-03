<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
<style>
td {
	border-bottom: 1px solid #999999
}
</style>
</head>
<body>
	<h3>자바스크립트를 이용한 사용자 편의 증진</h3>
	<p>당신에게 온 메시지들입니다.</p>
	<form action="" id="f" >
		<table style="width: 800px">
			<tr>
				<td width="10%"><input type="checkbox" id="flag"/></td>
				<td>내용</td>
			</tr>
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<td width="10%"><input type="checkbox" class="item" name="item" value="${i }"/></td>
					<td>.............................</td>
				</tr>
			</c:forEach>
		</table>
		<button type="submit" id="delSbt">삭제</button>
		<button type="submit" id="saveSbt">보관</button>
		<button type="reset">초기화</button>
	</form>
	<script>
		document.querySelector("#delSbt").onclick= function(evt) {
			document.querySelector("#f").action="/msg/del-task";
			document.querySelector("#f").method="post";
		}
	
		document.querySelector("#saveSbt").onclick= function(evt) {
			document.querySelector("#f").action="/msg/save-task";
			document.querySelector("#f").method="get";
		}
		
	
		document.querySelector("#flag").onchange = function(evt) {
			console.log(this.checked);
			const item = document.querySelectorAll(".item");
			for(let one of item) {
				one.checked = this.checked;
			}
			/*
			item.forEach((one)=> {
				one.checked = this.checked;
			});
			*/
		}
		
		document.querySelectorAll(".item").forEach(function(item) {
			item.onchange = function(evt) {
				// console.log(this.checked);	
				//=============================
				document.querySelector("#flag").checked= false;
				
			}
		});
		
		/*
		for(let one of item ) {
			one.onchange = function(evt) {
				
			};
		}
		*/
	
	</script>
</body>
</html>








<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<div>
		<input type="text" style="padding: 4px; width: 220px;" 
		name="name" id="text" list="qlist" autocomplete="off"/>
		<datalist id="qlist">
		</datalist>
	</div>
	
	<script type="text/javascript">
			document.querySelector("#text").onkeyup = function(evt) {
			
				let target = evt.target.value;
				
				const xhr = new XMLHttpRequest();
				xhr.open("get", "/api/search?q="+target, true);
				xhr.send();
				
				xhr.onreadystatechange = function() {
					if(xhr.readyState === 4) {
						const txt2 = xhr.responseText;
						
						console.log(typeof txt2, txt2);
						const obj = JSON.parse(txt2);
						const cvt = obj.map(function(e) {
							return "<option>" + e + "</option>";
						});
							
						document.querySelector("#qlist").innerHTML = cvt.join("");
					}
				}
			};
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h3>데이터 시각화</h3>
	<p>데이터를 차트형태로 랜더링하는 API를 살펴보자.</p>
	<p>웹에서 차트를 지원하는 라이브러리 chart.js</p>

	<div style="width: 300px;">
		<canvas id="myChart"></canvas>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<script>
		const ctx = document.getElementById('myChart');

		new Chart(ctx,
				{
					type : 'bar',
					data : {
						labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple',
								'Orange' ],
						datasets : [ {
							label : '# of man',
							data : [ 12, 19, 4, 6, 1, 3 ],
							borderWidth : 1
						}, {
							label : '# of woman',
							data : [ 12, 19, 3, 5, 2, 3 ],
							borderWidth : 1
						}]
					},
					options : {
						scales : {
							y : {
								beginAtZero : true
							}
						}
					}
				});
	</script>
</body>
</html>
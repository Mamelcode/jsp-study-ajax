<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 활용</title>
</head>
<body>
	<h3>자바스크립트기반의 프론트API</h3>
	<p>HTML만 이용해서 데이터를 표기하는데 한계가 있기 때문에 (예를 들어 어딘가의 장소를 텍스트로 출력만 가능)
		다양한 곳에서 데이터 시각화를 위해 라이브러리를 제공해준다.</p>
	<p>
		그나마 활용도가 높은, 지도API 를 써보려고 한다. 연동할수 있는 옵션으로는 <b>카카오맵</b>, 네이버 맵, 구글 맵
		정도가 있을 것 같고 대부분 사용법이 비슷하다.
	</p>
	<p>어떤 API를 쓰던 서비스키가 필요하기 때문에 카카오맵은 https://developers.kakao.com/
		여기서 신청</p>
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?
	appkey=	f11424bc80cb6f3ec465b99e25073db7"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>
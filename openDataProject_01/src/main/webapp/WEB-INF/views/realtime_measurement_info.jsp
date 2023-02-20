<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!-- jQuery 라이브러리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">

<title>Insert title here</title>
</head>

<body>
	<h1>실시간 대기오염 정보</h1>
	지역 :
	<select id="location">
		<optgroup label="전국">
			<option>전국</option>
		</optgroup>
		<optgroup label="서울">
			<option>서울</option>
		</optgroup>
		<optgroup label="경기도">
			<option>경기</option>
			<option>인천</option>
		</optgroup>
		<optgroup label="충청도">
			<option>충남</option>
			<option>충북</option>
			<option>대전</option>
			<option>세종</option>
		</optgroup>
		<optgroup label="강원도">
			<option>강원</option>
		</optgroup>
		<optgroup label="전라도">
			<option>전남</option>
			<option>전북</option>
			<option>광주</option>
		</optgroup>
		<optgroup label="경상도">
			<option>경남</option>
			<option>경북</option>
			<option>대구</option>
			<option>부산</option>
			<option>울산</option>
		</optgroup>
		<optgroup label="제주도">
			<option>제주</option>
		</optgroup>

	</select>
	<button id="btn1">해당 지역 대기 오염 정보</button>

	<div>
		<table id="result1">
			<thead>
				<tr>
					<th>측정소명</th>
					<th>측정일시</th>
					<th>통합대기환경수치</th>
					<th>미세먼지농도</th>
					<th>아황산가스농도</th>
					<th>일산화탄소농도</th>
					<th>이산화탄소농도</th>
					<th>오존농도</th>
				</tr>
			</thead>
			<tbody>
				<!-- ajax result 값  -->
			</tbody>
		</table>
	</div>
	<!-- 페이징 처리 -->
	<div align="center" style="margin-left: 300px;">
		<ul class="pagination">
		</ul>
	</div>

	<script type="text/javascript">
		$(function() {

			console.clear();

			$("#btn1").click(function() {
				var pageNo = 1; // 기본 페이지 번호는 1로 설정
				fetchData(pageNo); // 페이지 번호에 해당하는 데이터 가져오기
			});

			// 이전 페이지 버튼 클릭 이벤트
			$(document).on('click', '.prev-page', function() {
				var currentPage = parseInt($(".page-item.active a").text());
				var pageNo = currentPage - 1;

				console.log("currentPage : " + currentPage)
				console.log("pageNo1 : " + pageNo)

				fetchData(pageNo);
			});

			// 다음 페이지 버튼 클릭 이벤트
			$(document).on('click', '.next-page', function() {
				var currentPage = parseInt($(".page-item.active a").text());
				var pageNo = currentPage + 1;

				console.log("currentPage : " + currentPage)
				console.log("pageNo1 : " + pageNo)

				fetchData(pageNo);
			});

			// 페이지 버튼 클릭 이벤트
			$(document).on('click', '.page-item', function() {
				var pageNo = $(this).text();
				console.log("pageNo :" + pageNo);
				fetchData(pageNo); // 페이지 번호에 해당하는 데이터 가져오기
			});

			function fetchData(pageNo) {

				console.clear();
				console.log("pageNo :" + pageNo);

				// JSON 형식
				$.ajax({
					url : "air.do",
					data : {
						location : $("#location").val(),
						pageNo : pageNo
					},
					success : function(result) {

						var itemArr = result.response.body.items;
						var value = "";

						for (var i = 0; i < itemArr.length; i++) {
							var item = itemArr[i]; //items에 i번째 인덱스에 있는 item(객체) 하나
							value += "<tr>" + "<td>" + item.stationName
									+ "</td>" + "<td>" + item.dataTime
									+ "</td>" + "<td>" + item.khaiValue
									+ "</td>" + "<td>" + item.pm10Value
									+ "</td>" + "<td>" + item.so2Value
									+ "</td>" + "<td>" + item.coValue
									+ "</td>" + "<td>" + item.no2Value
									+ "</td>" + "<td>" + item.o3Value
									+ "</td>" + "</tr>";
						}
						$("#result1>tbody").html(value);

						// 페이지 버튼 생성
						var pageHtml = "";
						var totalPage = Math
								.ceil(result.response.body.totalCount / 50);

						console.log("totalPage : " + totalPage)

						for (var i = 1; i <= totalPage; i++) {
							if (i == pageNo) {
								pageHtml += '<li class="page-item active"><a class="page-link" href="#">'
										+ i + '</a></li>';
							} else {
								pageHtml += '<li class="page-item"><a class="page-link" href="#">'
										+ i + '</a></li>';
							}
						}

						// 이전 페이지 버튼 추가
						if (pageNo > 1) {
							var prevPage = pageNo - 1;
							console.log("prevPage : " + prevPage)
							pageHtml = "<li class='page-item prev-page'><a class='page-link' href='#'>&laquo</a></li>"
									+ pageHtml;
						}

						// 다음 페이지 버튼 추가
						if (pageNo < totalPage) {
							var nextPage = pageNo + 1;
							pageHtml = pageHtml
									+ "<li class='page-item next-page'><a class='page-link' href='#'>&raquo</a></li>";
						}

						$(".pagination").html(pageHtml);

						// 이전 페이지 버튼 활성화/비활성화 처리
						$(".prev-page").toggleClass("disabled",
								pageNo == 1);

						// 다음 페이지 버튼 활성화/비활성화 처리
						$(".next-page").toggleClass("disabled",
								pageNo > totalPage);
					},
					error : function() {
						alert('데이터를 가져오는 데 실패했습니다.');
					}
				});
			}
		});
	</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>시군구별 대기정보</title>

<link href="./resources/css/styles.css?after" rel="stylesheet" type="text/css" />

</head>
<body class="sb-nav-fixed">
	<jsp:include page="../../common/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="../../common/sidebar.jsp"></jsp:include>

		<div id="layoutSidenav_content">
			<!-- main 시작 -->
			<main class="info20_main">
				<div class="info20_main_div01">
					<div class="info20_main_div02">
						<label for="location">지역 </label> <select id="location">
							<option>서울</option>
							<option>경기</option>
							<option>인천</option>
							<option>충남</option>
							<option>충북</option>
							<option>대전</option>
							<option>세종</option>
							<option>강원</option>
							<option>전남</option>
							<option>전북</option>
							<option>광주</option>
							<option>경남</option>
							<option>경북</option>
							<option>대구</option>
							<option>부산</option>
							<option>울산</option>
							<option>제주</option>
						</select>
						<button id="btn1">검색</button>
					</div>
					<div class="info20_main_div03">
						<div>
							<h4 style="color: black;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-columns-reverse" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 .5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10A.5.5 0 0 1 4 .5Zm-4 2A.5.5 0 0 1 .5 2h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 4h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 6h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 8h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Z" />
								</svg>
								<b>시군구별 대기정보 </b>
							</h4>

							<p class='infoTime' align="right">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
								  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
								  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
								</svg>
								기준
							</p>
						</div>
						<div class="infoTable03">
							<table id="result1">
								<thead>
									<tr>
										<th>시군구명</th>
										<th>PM2.5 (㎍/㎥)</th>
										<th>PM10 (㎍/㎥)</th>
										<th>오존 (ppm)</th>
										<th>이산화질소 (ppm)</th>
										<th>일산화탄소 (ppm)</th>
										<th>아황산가스 (ppm)</th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
						<div class="info20_main_div04" align="center">
							<div>
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-dizzy-fill" viewBox="0 0 16 16">
								  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM4.146 5.146a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 1 1 .708.708l-.647.646.647.646a.5.5 0 1 1-.708.708L5.5 7.207l-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zm5 0a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zM8 13a2 2 0 1 1 0-4 2 2 0 0 1 0 4z" />
								</svg>
								범례 <img alt='good' src='./resources/assets/img/stat_01.png'> 좋음 <img alt='good' src='./resources/assets/img/stat_02.png'> 보통 <img alt='good' src='./resources/assets/img/stat_03.png'> 나쁨 <img alt='good' src='./resources/assets/img/stat_04.png'> 매우 나쁨
							</div>
						</div>
					</div>

				</div>
			</main>
			<jsp:include page="../../common/footer.jsp"></jsp:include>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {

			console.clear();

			$("#btn1").click(function() {
				var pageNo = 1; // 기본 페이지 번호는 1로 설정
				fetchData(pageNo); // 페이지 번호에 해당하는 데이터 가져오기
			});

			function fetchData(pageNo) {

				// JSON 형식
				$
						.ajax({
							url : "info20.do",
							data : {
								location : $("#location").val(),
								pageNo : pageNo
							},
							success : function(result) {

								console.clear();

								var itemArr = result.response.body.items;
								var value = "";
								var refTime = "";

								// stationName 필드를 기준으로 정렬
								itemArr.sort(function(a, b) {
									return a.stationName
											.localeCompare(b.stationName);
								});

								var good = "<img alt='good' src='./resources/assets/img/stat_01.png'>";
								var normal = "<img alt='normal' src='./resources/assets/img/stat_02.png'>";
								var bad = "<img alt='bad' src='./resources/assets/img/stat_03.png'>";
								var verybad = "<img alt='verybad' src='./resources/assets/img/stat_04.png'>";

								var gradeImg = "";

								for (var i = 0; i < itemArr.length; i++) {

									var item = itemArr[i]; //items에 i번째 인덱스에 있는 item(객체) 하나

									var grade = [];
									var gradeImgArray = [];

									for (var j = 0; j < 6; j++) {

										var pm25Grade = item.pm25Grade;
										var pm10Grade = item.pm10Grade;
										var o3Grade = item.o3Grade;
										var no2Grade = item.no2Grade;
										var coGrade = item.coGrade;
										var so2Grade = item.so2Grade;

										grade[i] = [ pm25Grade, pm10Grade,
												o3Grade, no2Grade, coGrade,
												so2Grade ];

										var gradeValue = grade[i][j];

										if (gradeValue == 1) {
											gradeImg = good;
										} else if (gradeValue == 2) {
											gradeImg = normal;
										} else if (gradeValue == 3) {
											gradeImg = bad;
										} else if (gradeValue == 4) {
											gradeImg = verybad;
										} else {
											gradeImg = "통신 장애";
										}

										gradeImgArray.push(gradeImg);

									}

									value += "<tr>" + "<td>" + item.stationName
											+ "</td>" + "<td>"
											+ gradeImgArray[0] + " "
											+ item.pm25Value + "</td>" + "<td>"
											+ gradeImgArray[1] + " "
											+ item.pm10Value + "</td>" + "<td>"
											+ gradeImgArray[2] + " "
											+ item.o3Value + "</td>" + "<td>"
											+ gradeImgArray[3] + " "
											+ item.no2Value + "</td>" + "<td>"
											+ gradeImgArray[4] + " "
											+ item.coValue + "</td>" + "<td>"
											+ gradeImgArray[5] + " "
											+ item.so2Value + "</td>" + "</tr>";
								}

								var refTime = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-clock' viewBox='0 0 16 16'> <path d='M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z'/> <path d='M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z'/> </svg> "
										+ item.dataTime + " 기준";

								$("#result1>tbody").html(value);
								$(".infoTime").html(refTime);
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
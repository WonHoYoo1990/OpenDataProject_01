<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시도별 실시간 측정정보</title>
<link href="./resources/css/styles.css?after" rel="stylesheet" type="text/css" />
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../../common/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="../../common/sidebar.jsp"></jsp:include>

		<div id="layoutSidenav_content">

			<!-- main 시작 -->
			<main class="info_main">
				<div class="info_main_div01">
					<div class="info_main_div03">
						<div>
							<h4 style="color: black;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-columns-reverse" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 .5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10A.5.5 0 0 1 4 .5Zm-4 2A.5.5 0 0 1 .5 2h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 4h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 6h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 8h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Z" />
								</svg>
								<b>시도별 대기정보 - 미세먼지(PM10) </b>
							</h4>

							<p class='infoTime' align="right">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
								  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
								  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
								</svg>
								기준
							</p>
						</div>
						<div class="infoTable">
							<table id="infoTableResult">
								<thead>
									<tr>
										<th>관측지점</th>
										<th>농도범위 (㎍/㎥)</th>
									</tr>
								</thead>
								<tbody>
									<!-- 로딩바 -->
									<div id="div_load_image" style="position: absolute; top: 50%; left: 50%; width: 0px; height: 0px; z-index: 9999; background: #f0f0f0; filter: alpha(opacity = 50); opacity: alpha*0.5; margin: auto; padding: 0; text-align: center">
										<img src="./resources/assets/img/loading.gif" style="width: 100px; height: 100px;">
									</div>
								</tbody>
							</table>
						</div>
						<div class="info_main_div04" align="center" style="width: 500px; font-size: small;">
							<div>
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-dizzy-fill" viewBox="0 0 16 16">
								  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM4.146 5.146a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 1 1 .708.708l-.647.646.647.646a.5.5 0 1 1-.708.708L5.5 7.207l-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zm5 0a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zM8 13a2 2 0 1 1 0-4 2 2 0 0 1 0 4z" />
								</svg>
								범례 <img alt='good' src='./resources/assets/img/stat_01.png'> 좋음(0~30) <img alt='good' src='./resources/assets/img/stat_02.png'> 보통(31~80) <img alt='good' src='./resources/assets/img/stat_03.png'> 나쁨(81~150) <img alt='good' src='./resources/assets/img/stat_04.png'> 매우나쁨(151~)
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

			// 조회 중 로딩
			$("#div_load_image").show();
			
			//json 형식
			$.ajax({
				url : "info30.do",
				data : {location : "전국"},
				success : function(result) {
					
					// 조회 성공시 로딩 이미지 제거
					$("#div_load_image").hide();
					
					var itemObject = result.response.body.items; // 전국 결과값
					var sidoName = ['서울', '부산', '대구', '인천', '광주', '대전', '울산', '경기', '강원', '충북', '충남', '전북', '전남', '경북', '경남', '제주', '세종'];

					var value = ""; // ajax 결과값
					var refTiem = ""; // 측정 기준시간
					
					var sidoObject = {}; 
					
					sidoName.forEach(function(name) { // 각 지역별로 객체 분류
					  sidoObject[name] = itemObject.filter(item => item.sidoName === name);
					});
					
					function calculateAveragePM10(sidoObject) { // 각 지역별 미세먼지 평균 구하는 함수
						
						  var totalpm10Value = 0; // 전체 미세먼지 값
						  var count = 0;

						  for (var i = 0; i < sidoObject.length; i++) {
						    var pm10Value = sidoObject[i].pm10Value; // 각 지역의 [i]번째 미세먼지 값

						    if (pm10Value !== '-') { // 통신장애일 경우 '-' 값을 '0'으로 치환
						      totalpm10Value += Math.floor(pm10Value); 
						      count++;
						    }
						  }
						  return count > 0 ? (totalpm10Value/count) : 0; // 통신장애일 경우 값을 0반환 아닐경우 미세먼지 값 반환
						}

						var range = []; // 지역별 평균 미세먼지 결과값 배열
						var rangeGrade = []; // 지역별 평균 미세먼지 등급 배열
						
						var gradeImg = ""; //등급별 이미지

						var good = "<img alt='good' src='./resources/assets/img/stat_01.png'>";
						var normal = "<img alt='normal' src='./resources/assets/img/stat_02.png'>";
						var bad = "<img alt='bad' src='./resources/assets/img/stat_03.png'>";
						var verybad = "<img alt='verybad' src='./resources/assets/img/stat_04.png'>";
 
						sidoName.forEach(function(name) {
						  var pm10val = Math.floor(calculateAveragePM10(sidoObject[name])); // 각 지역별 미세먼지 평균 값
						  range.push(pm10val);
						  
							if ( 0<= pm10val && pm10val <=30) {
								gradeImg = good;
							} else if (30< pm10val && pm10val <=80) {
								gradeImg = normal;
							} else if (80< pm10val && pm10val <=150) {
								gradeImg = bad;
							} else if (150< pm10val ) {
								gradeImg = verybad;
							} else {
								gradeImg = "통신 장애";
							}

							rangeGrade.push(gradeImg);
						  
						});

					for (var i = 0; i < range.length; i++) {
					    value += "<tr>"
					    + "<td>" + sidoName[i] + "</td>"
					    + "<td>" + rangeGrade[i] +" "+ range[i] + "</td>"
					    + "</tr>";
					  }
					
					refTime = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-clock' viewBox='0 0 16 16'> <path d='M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z'/> <path d='M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z'/> </svg> "
						+ sidoObject.서울[0].dataTime + " 기준";
					
					$("#infoTableResult>tbody").html(value);
					$(".infoTime").html(refTime);
				},
				error : function(result) {
					alert('데이터를 가져오는 데 실패했습니다.');
				}
			})
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>측정소별 대기정보</title>

<style type="text/css">
.juso {
	text-align: center;
	height: 50px;
	font-weight: bolder;
}

.juso input {
	border: #283c79 solid 4px;
	height: 50px;
	width: 500px;
}

.findMeasuringStation {
	cursor: pointer;
}

.info_main_div03 .infoTable01 table {
	width : 100%;
	text-align: center;
	color: #444;
	border: #92ae8d solid 2px;
}

.infoTable01 th{
	background-color: #92ae8d;
	color: white;
}

</style>



</head>
<body class="sb-nav-fixed">
	<jsp:include page="../../common/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="../../common/sidebar.jsp"></jsp:include>

		<div id="layoutSidenav_content">
			<main class="info_main">
				<div class="juso">
					<label for="sample4_roadAddress">· 지역명 검색</label> <input id="sample4_roadAddress" placeholder="도로명 또는 동 이름을 입력하세요. 예) 서소문로" onclick="searchAddresses();" />
				</div>
				<div hidden="">
					<input type="text" id="sample4_postcode" placeholder="우편번호"> <input type="button" onclick="searchAddresses()" value="우편번호 찾기"><br> <input type="text" id="sample4_roadAddress" placeholder="도로명주소"> <input type="text" id="sample4_jibunAddress" placeholder="지번주소"> <span id="guide" style="color: #999; display: none"></span> <input type="text" id="sample4_detailAddress" placeholder="상세주소"> <input type="text" id="sample4_extraAddress" placeholder="참고항목">
				</div>
				<hr>
				<div class="infoTable">
					<table id="infoTableResult2">
						<thead>
							<tr>
								<th>측정소명</th>
								<th>측정소 주소</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
				
				<div class="info_main_div03">
						<div>
							<h4 style="color: black;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-columns-reverse" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 .5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10A.5.5 0 0 1 4 .5Zm-4 2A.5.5 0 0 1 .5 2h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 4h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 6h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 8h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Z" />
								</svg>
								<b>측정소별 실시간 대기정보 </b>
							</h4>
						</div>
						
						<div class="infoTable01">
							<table>
								<tr>
									<th>측정소명</th>
									<td id="stationName"></td>
									<th>측정소 주소</th>
									<td></td>
									<th>측정망</th>
									<td id="mangName"></td>
								</tr>
							</table>
						</div> <br>
						
						
						<div class="infoTable">
							<table id="infoTableResult">
								<thead>
									<tr>
										<th>날짜</th>
										<th>PM2.5 (㎍/㎥)</th>
										<th>PM10 (㎍/㎥)</th>
										<th>오존 (ppm)</th>
										<th>이산화질소 (ppm)</th>
										<th>일산화탄소 (ppm)</th>
										<th>아황산가스 (ppm)</th>
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
						<div class="info_main_div04" align="center">
							<div>
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-dizzy-fill" viewBox="0 0 16 16">
								  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM4.146 5.146a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 1 1 .708.708l-.647.646.647.646a.5.5 0 1 1-.708.708L5.5 7.207l-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zm5 0a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zM8 13a2 2 0 1 1 0-4 2 2 0 0 1 0 4z" />
								</svg>
								범례 <img alt='good' src='./resources/assets/img/stat_01.png'> 좋음 <img alt='good' src='./resources/assets/img/stat_02.png'> 보통 <img alt='good' src='./resources/assets/img/stat_03.png'> 나쁨 <img alt='good' src='./resources/assets/img/stat_04.png'> 매우 나쁨
							</div>
						</div>
					</div>
			</main>

			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script type="text/javascript">
				
				$(function() {
					console.clear();
					$("#div_load_image").hide();
				})
			
				// 주소 검색 카카오 API
				function searchAddresses() {
					new daum.Postcode(
							{oncomplete : function(data) {
								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var roadAddr = data.roadAddress; // 도로명 주소 변수
								var extraRoadAddr = ''; // 참고 항목 변수
								var sigungu = data.sigungu; // 시군구 명

								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
									extraRoadAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== '' && data.apartment === 'Y') {
									extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraRoadAddr !== '') {
									extraRoadAddr = ' (' + extraRoadAddr + ')';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('sample4_postcode').value = data.zonecode;
								document.getElementById("sample4_roadAddress").value = roadAddr;
								document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
								if (roadAddr !== '') {
									document.getElementById("sample4_extraAddress").value = extraRoadAddr;
								} else {
									document.getElementById("sample4_extraAddress").value = '';
								}

								var guideTextBox = document.getElementById("guide");
								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
								if (data.autoRoadAddress) {
									var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
									guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
									guideTextBox.style.display = 'block';

								} else if (data.autoJibunAddress) {
									var expJibunAddr = data.autoJibunAddress;
									guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
									guideTextBox.style.display = 'block';
								} else {
									guideTextBox.innerHTML = '';
									guideTextBox.style.display = 'none';
								}

								// 측정소명 검색 Ajax
								findMeasuringStation(sigungu);
						}
					}).open();
				}

				// 측정소명 검색 Ajax
				function findMeasuringStation(sigungu) {
					
					// 조회 중
					$("#div_load_image").show();

					$.ajax({
					  url: 'info10.do',
					  type: 'GET',
					  data : {
						  stationName : sigungu,
						},
					  success: function(result) {
						$("#div_load_image").hide();
						
						
						var itemObject = result.response.body.items;
						var stationName = ""; // 측정소명		
						var mangName = ""; // 측정망 종류	
						
						var gradeImg = ""; //등급별 이미지
						
						var good = "<img alt='good' src='./resources/assets/img/stat_01.png'>";
						var normal = "<img alt='normal' src='./resources/assets/img/stat_02.png'>";
						var bad = "<img alt='bad' src='./resources/assets/img/stat_03.png'>";
						var verybad = "<img alt='verybad' src='./resources/assets/img/stat_04.png'>";
						
						var value = ""; // ajax 결과값
						
						for (var i = 0; i < itemObject.length; i++) {
							var item = itemObject[i]; // 각 인덱스에 item 객체 하나
							var grade = []; // 각 인덱스 등급 배열
							var gradeImgArray = []; // 등급별 이미지 배열
							
							stationName = itemObject[0].stationName;
							mangName = itemObject[0].mangName; 
							
							for (var j = 0; j < 6; j++) {
								
								var pm25Grade = item.pm25Grade;
								var pm10Grade = item.pm10Grade;
								var o3Grade = item.o3Grade;
								var no2Grade = item.no2Grade;
								var coGrade = item.coGrade;
								var so2Grade = item.so2Grade;
								
								grade[i] = [pm25Grade, pm10Grade, o3Grade, no2Grade, coGrade, so2Grade];
								
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
							
							value += "<tr>" 
										+ "<td>" + item.dataTime + "</td>" 
										+ "<td>" + gradeImgArray[0] + " " + item.pm25Value + "</td>" 
										+ "<td>" + gradeImgArray[1] + " " + item.pm10Value + "</td>" 
										+ "<td>" + gradeImgArray[2] + " " + item.o3Value + "</td>" 
										+ "<td>" + gradeImgArray[3] + " " + item.no2Value + "</td>" 
										+ "<td>" + gradeImgArray[4] + " " + item.coValue + "</td>" 
										+ "<td>" + gradeImgArray[5] + " " + item.so2Value + "</td>" 
									+ "</tr>";
						}
						
						$("#infoTableResult>tbody").html(value);
						$("#stationName").html(stationName);
						$("#mangName").html(mangName);
					    
					  },
					  error: function() {
					    console.error('오류 발생');
						$("#div_load_image").hide();
					  }
					});


				}
			</script>


			<jsp:include page="../../common/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
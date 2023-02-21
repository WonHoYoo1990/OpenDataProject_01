<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<title>Weather Forecast</title>
</head>
<body>
	<header>
		<div class="bg">
			<div class="logo">
				<div class="logo1">
					<a href="mainPage.do"><img src="./resources/img/logo/WonHo.jpg" alt="WonHoWeather"><img src="./resources/img/logo/WonHoWeather's Weather and fine dust.jpg" alt="WonHoWeather's Weather and fine dust" style="height: 200px;"></a>
				</div>
			</div>
		</div>
	</header>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="height: 100px;">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">날씨 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">날씨</a></li>
							<li><a href="#">미세먼지</a></li>
							<li><a href="#">테마날씨</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">미세먼지 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="divider"></li>
							<li><a href="#">대기질 예보 통보</a></li>
							<li class="divider"></li>
							<li><a href="#">초미세먼지 주간예보</a></li>
							<li class="divider"></li>
							<li><a href="#">측정소별 실시간 측정정보</a></li>
							<li class="divider"></li>
							<li><a href="#">통합대기환경지수 나쁨이상 측정소 목록</a></li>
							<li class="divider"></li>
							<li><a href="airPage.do">시도별 실시간 측정정보</a></li>
							<li class="divider"></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
</body>
</html>
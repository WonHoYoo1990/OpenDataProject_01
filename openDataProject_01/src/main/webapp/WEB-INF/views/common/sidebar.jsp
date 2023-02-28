<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layoutSidenav_nav</title>
</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Core</div>
					<a class="nav-link" href="mainPage.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> Dashboard
					</a>
					<div class="sb-sidenav-menu-heading">Interface</div>

					<a class="nav-link collapsed" href="info10Page.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> 측정소별 대기정보
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a> <a class="nav-link collapsed" href="info20Page.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> 시군구별 대기정보
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a> <a class="nav-link collapsed" href="info30Page.do" data-bs-toggle="collapse" data-bs-target="#collapseLayouts03" aria-expanded="false" aria-controls="collapseLayouts03">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> 시도별 대기정보
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLayouts03" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="info30Page.do">초미세먼지 (PM-2.5) <a class="nav-link" href="info31Page.do">미세먼지 (PM-10) <a class="nav-link" href="info32Page.do">오존(O3)</a><a class="nav-link" href="info33Page.do">이산화질소(NO2) </a><a class="nav-link" href="info34Page.do">일산화탄소(CO) </a><a class="nav-link" href="info35Page.do">아황산가스(SO2) </a>
						</nav>
					</div>
					<div class="sb-sidenav-menu-heading">Addons</div>
					<a class="nav-link" href="charts.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts
					</a> <a class="nav-link" href="tables.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div> Tables
					</a>
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				Start Bootstrap
			</div>
		</nav>
	</div>
</body>
</html>
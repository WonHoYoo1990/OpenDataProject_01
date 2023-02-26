<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - 내꺼</title>
</head>
<body>

	<!-- TopNavibar(header) 시작 -->
	<jsp:include page="./common/header.jsp"></jsp:include>
	<!-- TopNavibar(header) 끝 -->
	<div id="layoutSidenav">
		<!-- sidebar 시작 div -->
		<jsp:include page="./common/sidebar.jsp"></jsp:include>
		<!-- sidebar 끝 div -->
		<!-- main 시작 div -->
		<div id="layoutSidenav_content">
			<!-- main 시작 -->
			<main></main>
			<!-- main 끝 -->
			<!-- footer 시작 -->
			<jsp:include page="./common/footer.jsp"></jsp:include>
			<!-- footer 끝 -->
		</div>
		<!-- main 끝 div -->
	</div>
</body>
</html>
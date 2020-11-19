<%@ page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<link rel="stylesheet"
	href='<c:url value="/css/jcarousel.basic.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/css/style.css"/>'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src='<c:url value="/js/jquery.jcarousel.min.js"/>'></script>
<script type="text/javascript"
	src='<c:url value="/js/jcarousel.basic.js"/>'></script>
<script>
	$(function(){});
</script>
</head>
<body>
	<div class="wrapper">
		<h1>Basic carousel</h1>

		<p>This example shows how to setup a basic
			carousel with prev/next controls and
			pagination.</p>

		<div class="jcarousel-wrapper">
			<div class="jcarousel">
				<ul>
					<li><img src="<c:url value='/Images/img1.jpg'/>"
						width="600" height="400" alt=""></li>
					<li><img src="<c:url value='/Images/img2.jpg'/>"
						width="600" height="400" alt=""></li>
					<li><img src="<c:url value='/Images/img3.jpg'/>"
						width="600" height="400" alt=""></li>
					<li><img src="<c:url value='/Images/img4.jpg'/>"
						width="600" height="400" alt=""></li>
					<li><img src="<c:url value='/Images/img5.jpg'/>"
						width="600" height="400" alt=""></li>
					<li><img src="<c:url value='/Images/img6.jpg'/>"
						width="600" height="400" alt=""></li>
				</ul>
			</div>

			<p class="photo-credits">
				Photos by <a
					href="http://www.mw-fotografie.de">Marc
					Wiegelmann</a>
			</p>

			<a href="#" class="jcarousel-control-prev">&lsaquo;</a>
			<a href="#" class="jcarousel-control-next">&rsaquo;</a>

			<p class="jcarousel-pagination"></p>
		</div>
	</div>
</body>
</html>
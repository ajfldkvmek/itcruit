<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>ITcruit - DDIT 403호 Team1</title>
	<script src="${pageContext.request.contextPath}/resources/websocket.js"></script>
	<script type="text/javascript">
	 	wsConnect();
	</script>
	<style>
		.arrow_box {
		    display: none;
		    position: absolute;
		    width: 153px;
		    padding: 8px;
		    left: -55px;
		    bottom: -64px;
		    border-radius: 8px;
		    background: #333;
		    color: #fff;
		    font-size: 14px;
		    opacity: 0;  /* 초기 투명도 설정 */
		    transition: opacity 0.5s ease; /* 투명도 변화를 위한 전환 효과 */
		}
		
		.arrow_box:after {
		    position: absolute;
		    bottom: 100%;
		    left: 50%;
		    width: 0;
		    height: 0;
		    margin-left: -10px;
		    border: solid transparent;
		    border-color: rgba(51, 51, 51, 0);
		    border-bottom-color: #333;
		    border-width: 10px;
		    pointer-events: none;
		    content: ' ';
		}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
	<!-- ajax 요청시 사용할 csrf meta데이터 설정 -->
	<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
	
	<script type="text/javascript">
	// ajax 요청시 사용할 csrf 글로벌 변수설정
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	</script>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="ITcruit - DDIT 403호 Team1">

	<!-- Favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/images/taplogo1(배경X).png">

<!-- 	<!-- Google Font -->
<!-- 	<link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- 	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&family=Roboto:wght@400;500;700&display=swap"> -->
	
	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/choices/css/choices.min.css">
	
	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	
	<!-- freeBoard CSS -->
<%-- 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/freeBoard/freeBoard.css"> --%>

	<!-- sweet Alert 사용 라이브러리  -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
 	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<!-- fontawesome 사용을 위한 라이브러리 -->
	<script src="https://kit.fontawesome.com/adfdbdf33f.js" crossorigin="anonymous"></script>
	
	<!-- chart.js를 사용하기 위한 라이브러리 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	
	
	
	
</head>
<c:if test="${not empty message }">
	<script type="text/javascript">
// 	alert("${message}");
	$(document).ready(function(){
		var message = "${message}";
		Swal.fire({
			text: message,
			icon: "info"
		});
	})
		<c:remove var="message" scope="request"/>
		<c:remove var="message" scope="session"/>
	</script>
</c:if>
<body>

<!-- header -->
<tiles:insertAttribute name="header"/>

<!-- **************** MAIN CONTENT START **************** -->

	<tiles:insertAttribute name="content"/>

<!-- **************** MAIN CONTENT END **************** -->

<!-- footer -->
<tiles:insertAttribute name="footer"/>

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/choices/js/choices.min.js"></script>

<!-- Template Functions -->
<script src="${pageContext.request.contextPath}/resources/assets/js/functions.js"></script>

<!-- freeboard JS -->
<script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>





</body>
</html>			
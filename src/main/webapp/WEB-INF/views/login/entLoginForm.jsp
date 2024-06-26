<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/bootstrap.min.css"><!-- BOOTSTRAP STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/font-awesome.min.css"><!-- FONTAWESOME STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/feather.css"><!-- FEATHER ICON SHEET --> --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/owl.carousel.min.css"><!-- OWL CAROUSEL STYLE SHEET -->
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/magnific-popup.min.css"><!-- MAGNIFIC POPUP STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/lc_lightbox.css"><!-- Lc light box popup -->      --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/bootstrap-select.min.css"><!-- BOOTSTRAP SLECT BOX STYLE SHEET  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/dataTables.bootstrap5.min.css"><!-- DATA table STYLE SHEET  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/select.bootstrap5.min.css"><!-- DASHBOARD select bootstrap  STYLE SHEET  -->     
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/dropzone.css"><!-- DROPZONE STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/scrollbar.css"><!-- CUSTOM SCROLL BAR STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/datepicker.css"><!-- DATEPICKER STYLE SHEET --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/flaticon.css"> <!-- Flaticon --> --%>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/swiper-bundle.min.css"><!-- Swiper Slider --> --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/style.css"><!-- MAIN STYLE SHEET -->

<!-- THEME COLOR CHANGE STYLE SHEET -->
<%-- <link rel="stylesheet" class="skin" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/skins-type/skin-6.css"> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
/* 헤더,푸더랑 좌우간격 맞춤 */
.page-content {
  margin-left: 0rem;
}
.twm-log-reg-form-wrap {
    width: 1300px; /* 너비 설정 */
    margin: 0 auto; /* 좌우 여백을 auto로 설정하여 요소를 가운데 정렬 */
    padding: 30px 0; /* 위아래 여백 설정 */
    border-radius: 10px;
    background-color: #fff;
}
.twm-log-reg-form-wrap .twm-log-reg-inner .twm-tabs-style-2 {
    text-align: center;
    border: 1px #786be4 solid;
}
.form-control {
    height: 50px;
    padding: 5px;
    background-color: #e4e1fc;
}
.twm-tabs-style-2 {
    border: 1px black solid;
    width: 600px;
    margin: 0 auto;
}
.twm-tabs-style-2 .nav-tabs .nav-item .nav-link {
	padding: 0px;
	margin: 0px;
	border-radius: 0px;
	border: 1px #786be4 solid;
	color: #8d7ffc;
}
.container-fluid {
	padding-top: 80px;
	padding-bottom: 70px;
}
.twm-tabs-style-2 .nav-tabs .nav-item .nav-link.active {
    background-color: #786be4 !important;
    color: #fff;
}
.site-button {
    background-color: #8d7ffc;
}
.site-button:hover {
    background-color: #7065c9;
}
.form-check-input:checked {
    background-color: #7065c9;
    border-color: #7065c9;
}
.site-text-primary {
    color: #8d7ffc;
}
</style>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
	<script>
<%-- 	<p style="color:red; font-weight:bold;"> login Failed : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }</p> --%>
		Swal.fire({
	        title: '로그인 실패',         
	        text: '다시 입력해주세요.',
	        icon: 'warning',
	        showCloseButton: true
	    }); 
// 		alert("로그인 실패!! 다시 입력해주세요.");
		<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
  	</script>
</c:if>
<c:if test="${not empty stop}">
	<script>
		Swal.fire({
	        title: '정지된 계정입니다!!',         
	        text: 'ITcruit@gmail.com 로 문의해주세요.',
	        icon: 'warning',
	        showCloseButton: true
	    });        
        <c:remove var="message" scope="request"/>
    	<c:remove var="message" scope="session"/>
    </script>
</c:if>
<body>
<div class="page-wraper">
	<!-- CONTENT START -->
	<div class="page-content">
		<!-- Login Section Start -->
		<div class="section-full site-bg-white">
			<div class="container-fluid">
				<div class="row">
				
					<div class="twm-log-reg-form-wrap">
<!-- 						<div class="twm-log-reg-logo-head"> -->
<!-- 							<a href="/main/index"> -->
<%-- 								<img src="${pageContext.request.contextPath }/resources/assets/images/logo1(배경0).png" alt="" --%>
<!-- 									class="logo"> -->
<!-- 							</a> -->
<!-- 						</div> -->
						
						<div class="twm-log-reg-inner">
							<div class="twm-log-reg-head">
								<div class="twm-log-reg-logo">
									<span class="log-reg-form-title"></span>
								</div>
							</div>
							
							<div class="twm-tabs-style-2">

								<ul class="nav nav-tabs" id="myTab2" role="tablist">
									<!--Login Candidate-->
<!-- 									<li class="nav-item"> -->
<!-- 										<button style="width: 299px; height: 60px;" class="nav-link active" -->
<!-- 											data-bs-toggle="tab" data-bs-target="#twm-login-candidate" -->
<!-- 											type="button" id="member"> -->
<!-- 											<i class="fas fa-user-tie"></i>개인회원 -->
<!-- 										</button> -->
<!-- 									</li> -->
									<!--Login Employer-->
									<li class="nav-item">
										<button style="width: 598px; height: 60px;" class="nav-link active"
											data-bs-toggle="tab" data-bs-target="#twm-login-Employer"
											type="button" id="enterprise">
											<i class="fas fa-building"></i>기업회원
										</button>
									</li>
								</ul>

								<div class="tab-content" id="myTab2Content">
<!-- 									<form action="/login" method="post" id="memLoginForm"> -->
<!-- 									Login Candidate Content -->
<!-- 									<div class="tab-pane fade show active" -->
<!-- 										id="twm-login-candidate"> -->
<!-- 										<div class="row justify-content-center"> -->
											
<!-- 											<div class="col-md-7"> -->
<!-- 												<div class="form-group mb-3"> -->
<!-- 													<input name="username" id="accountId" type="text" required maxlength="20" -->
<!-- 														class="form-control" placeholder="아이디"> -->
<!-- 												</div> -->
<!-- 												<div class="form-group mb-3"> -->
<!-- 													<input name="password" id="accountPswd" type="password" maxlength="20" class="form-control" -->
<!-- 														required placeholder="비밀번호"> -->
<!-- 												</div> -->
<!-- 												<input type="hidden" name="type" value="personal"/> -->
<!-- 											</div> -->

<!-- 											<div class="col-sm-3"> -->
<!-- 												<div class="form-group"> -->
<!-- 													<button type="button" class="site-button" -->
<!-- 														style="height: 115px; width: 85%;" id="memLoginBtn">로그인</button> -->
<!-- 												</div> -->
<!-- 											</div> -->

<!-- 											<div class="col-md-10 "> -->
<!-- 												<div class="twm-forgot-wrap"> -->
<!-- 													<div class="form-group mb-3"> -->
<!-- 														<div class="form-check"> -->
<!-- 															<input type="checkbox" class="form-check-input" id="remember1" name="remember-me"> -->
<!-- 															<label class="form-check-label rem-forgot" for="remember1">로그인	유지</label> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->

<!-- 											<div class="col-md-12"> -->
<!-- 												<div class="row justify-content-center" style="margin: 0px 0px;"> -->
<!-- 													<div class="col-md-2" style="padding: 0px 0px;"> -->
<!-- 														<div class="form-group" style="margin: 0px 0px;"> -->
<!-- <!-- 															<button type="button" class="log_with_google" style="width: 75px; height: 45px;"> --> 
<%-- 																<img src="${pageContext.request.contextPath }/resources/assets/images/btnG_아이콘원형.png" alt="" --%>
<!-- 																	style="width: 40px; height: 40px; cursor: pointer;" > -->
<!-- <!-- 															</button> --> 
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-md-2" style="padding: 0px 0px;"> -->
<!-- 														<div class="form-group" style="margin: 0px 0px;"> -->
<!-- <!-- 															<button type="button" class="log_with_google" style="width: 75px; height: 45px;" onclick="kakaoLogin()"> --> 
<%-- 																<img src="${pageContext.request.contextPath }/resources/assets/images/images.png" alt="" --%>
<!-- 																	id="kakaoBtn" style="width: 40px; height: 40px; cursor: pointer;" > -->
<!-- <!-- 															</button> --> 
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->

<!-- 											<div class="col-md-12"> -->
<!-- 												<div class="form-group"> -->
<!-- 													<hr> -->
<!-- 													<a href="/main/idpwfindForm.do" class="site-text-primary">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;  -->
<!-- 													<a href="/main/idpwfindForm.do" class="site-text-primary">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp; -->
<!-- 													<a href="/main/registerForm.do" class="site-text-primary">회원가입</a> -->
<!-- 												</div> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<%-- 									<sec:csrfInput/> --%>
<!-- 									</form> -->
									
									
									<form action="/login" method="post" id="entLoginForm">
									<!--Login Employer Content-->
									<div class="tab-pane fade show active" id="twm-login-Employer">
										<div class="row justify-content-center">

											<div class="col-md-7">
												<div class="form-group mb-3">
													<input name="username" id="entAccountId" type="text" maxlength="20" required class="form-control" placeholder="아이디">
												</div>
												<div class="form-group mb-3">
													<input name="password" id="entAccountPswd" type="password" maxlength="20" class="form-control" required placeholder="비밀번호">
												</div>
											</div>
											<input type="hidden" name="type" value="enterpriseOnly"/>

											<div class="col-sm-3">
												<div class="form-group">
													<button type="button" class="site-button" style="height: 115px; width: 90%" id="entLoginBtn">로그인</button>
												</div>
											</div>

											<div class="col-md-10">
												<div class="twm-forgot-wrap">
													<div class="form-group mb-3">
														<div class="form-check">
															<input type="checkbox" class="form-check-input" id="remember2" name="remember-me">
															<label class="form-check-label rem-forgot" for="remember2">로그인 유지</label>
														</div>
													</div>
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<hr>
													<a href="/main/idpwfindForm.do" class="site-text-primary">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
													<a href="/main/idpwfindForm.do" class="site-text-primary">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
													<a id="registerBtn" class="site-text-primary" style="cursor: pointer;">회원가입</a>
													<button type="button" id="testBtn" style="background-color: white; float: right; border: 0px; position: relative; right: 20px;">TEST</button>
												</div>
											</div>
										</div>
									</div>
									<sec:csrfInput/>
									</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Section End -->

	</div>
	<form id="adminRegister" action="/main/registerForm.do" method="post">
        <input type="hidden" name="act" value="act">
        <sec:csrfInput/>
    </form>
</div>
</body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
$(function(){
	var testBtn = $("#testBtn");
	testBtn.on("click", function(){
// 		console.log("!@#");
		var id = "daangn";
		var pw = "123qwe!@#QWE";
// 		console.log(pw);

		$("#entAccountId").val(id);
		$("#entAccountPswd").val(pw);
	});
	
	var adminRegister = $("#adminRegister");
	var registerBtn = $("#registerBtn");
	registerBtn.on("click", function(){
		adminRegister.submit();
	});
	
	var enterprise = $("#enterprise");
	var entLoginForm = $("#entLoginForm");
	var entLoginBtn = $("#entLoginBtn");
	const idPattern = /^[0-9a-zA-Z]{0,20}$/;
	const pwPattern = /^[^가-힣]{10,20}$/;
	


// 	// 기업회원 버튼 클릭 시 실행되는 함수
// 	enterprise.on("click", function(){
		
// 		$("#memLoginForm").css("display","none");
// 		$("#entLoginForm").css("display","block");
// 		$("#entLoginForm input[name='username']").val("");
// 	    $("#entLoginForm input[name='password']").val("");
// 	});
	

	
	
	$("#entLoginBtn").on("click", function(event) {
	    event.preventDefault();
	    entLogin();
	});
	
	$("#entAccountId, #entAccountPswd").on("keyup", function(event) {
	    if (event.keyCode === 13) {
	        event.preventDefault();
	        entLogin();
	    }
	});
	
	// 기업로그인
	function entLogin() {
		
		var entId = $("#entAccountId").val();
		var entPw = $("#entAccountPswd").val();
		
		if(!idPattern.test(entId)) {
			Swal.fire({
	            icon: 'info',
	            title: '아이디를 다시 작성해주세요.',
	            text: '영어대소문자+숫자조합 20자리',
	            showCloseButton: true,
	            didClose: () => {
	                $(document).unbind("keyup"); // 기존의 keyup 이벤트 바인딩 해제
	            }
	        }).then((result) => {
	            if (result.dismiss === Swal.DismissReason.close || result.dismiss === Swal.DismissReason.backdrop) {
	                return; // 모달이 닫힌 경우에만 아래 코드 실행
	            }

	            // 모달이 닫히지 않은 경우는 엔터 키를 눌렀을 때
	            // 모달을 닫도록 설정
	            $(document).keyup(function(event) {
	                if (event.key === "Enter") {
	                    Swal.close(); // 모달 닫기
	                }
	            });
	        });
            $("#entAccountId").focus();
            return false;
        }
		if(!pwPattern.test(entPw)) {
			Swal.fire({
	            icon: 'info',
	            title: '비밀번호를 다시 작성해주세요.',
	            text: '영어대소문자+숫자+특수문자 조합 10~20자리',
	            showCloseButton: true,
	            didClose: () => {
	                $(document).unbind("keyup"); // 기존의 keyup 이벤트 바인딩 해제
	            }
	        }).then((result) => {
	            if (result.dismiss === Swal.DismissReason.close || result.dismiss === Swal.DismissReason.backdrop) {
	                return; // 모달이 닫힌 경우에만 아래 코드 실행
	            }

	            // 모달이 닫히지 않은 경우는 엔터 키를 눌렀을 때
	            // 모달을 닫도록 설정
	            $(document).keyup(function(event) {
	                if (event.key === "Enter") {
	                    Swal.close(); // 모달 닫기
	                }
	            });
	        });
            $("#entAccountPswd").focus();
            return false;
        }
		
		entLoginForm.submit();
	}
	
   
// 	var kakaoBtn = $("#kakaoBtn");
	
// 	kakaoBtn.on("click", function(){
// 		kakaoLogin();
// 	});
});





// Kakao.init('888cfbc715624b5e725ee94bdeb9baae'); //발급받은 키 중 javascript키를 사용해준다.
// // console.log(Kakao.isInitialized()); // sdk초기화여부판단
// //카카오로그인
// function kakaoLogin() {
//     Kakao.Auth.login({
//       success: function (response) {
//         Kakao.API.request({
//           url: '/v2/user/me',
//           success: function (response) {
//         	  console.log(response);
//         	  var info0 = response.id;
//         	  var info1 = response.kakao_account;
//         	  var info2 = response.properties;
//         	  console.log(Kakao.Auth.getAccessToken());
//         	  console.log(info0);
//         	  console.log("아이디 : " + info0);
//         	  console.log("생일 : " + info1.birthday);
//         	  console.log("이메일 : " + info1.email);
//         	  console.log("성별 : " + info1.gender);
//         	  console.log("이름 : " + info1.name);
//         	  console.log("전화번호 : " + info1.phone_number);
        	  
//         	  var birthDate = new Date(info1.birthyear, parseInt(info1.birthday.substring(0, 2)) -1, parseInt(info1.birthday.substring(2, 4)) + 1);
// //         	  var birthYmd = birthDate.toISOString().slice(0, 10);
//         	  var birthYmd = birthDate.toISOString().slice(0, 10).replace(/-/g, '');

//         	  var accountTell = info1.phone_number.replace(/\+82\s/, "0").replace(/-/g, "").trim();
//         	  var gender = info1.gender;
//         	  if(gender == 'male'){
//         		  gender = 'M';
//         	  }else{
//         		  gender = "Y";
//         	  }
        	  
//         	  console.log("accountTell : " + accountTell);
//         	  console.log("birthYmd : " + birthYmd);
        	  
//         	  let data = {
//         			  token: Kakao.Auth.getAccessToken(),
//         			  accountId : info0,
//         			  kakaoId : info0,
//         			  accountMail : info1.email,
//         			  birthYmd : birthYmd,
//         			  accountTell : accountTell,
//         			  gender : gender,
//         			  accountNm : info1.name
//         	  }
        	  
//         	  $.ajax({
//                   type: "POST",
//                   url: "/account/member/kakaoLogin.do",
//                   contentType: "application/json; charset=utf-8",
//                   data: JSON.stringify(data),
//                   beforeSend: function(xhr) {
//                       xhr.setRequestHeader(header, token);
//                   },
//                   success: function (result) {
//                 	  console.log("resultresultresult     " + result)
//                       if (result == "y") {
//                 	  console.log("resultresultresult tttt     " + result)
//                           location.href = "/account/member/kakaoInfo.do";
//                       } else {
//                 	  console.log("resultresultresult ffff    " + result)
//                           alert('카카오 로그인에 실패했습니다.');
//                           location.href = "/main/loginForm.do";
//                       }
//                   }
//               });
//           },
//           fail: function (error) {
//             console.log(error);
//           }
//         });
//       },
//     });
//   }
// //카카오로그아웃  
// function kakaoLogout() {
//     if (Kakao.Auth.getAccessToken()) {
//       Kakao.API.request({
//         url: '/v1/user/unlink',
//         success: function (response) {
//         	console.log(response);
//         },
//         fail: function (error) {
//           console.log(error);
//         },
//       })
//       Kakao.Auth.setAccessToken(undefined);
//     }
//   }  
</script>
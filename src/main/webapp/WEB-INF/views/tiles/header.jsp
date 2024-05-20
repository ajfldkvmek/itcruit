<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
@keyframes shake {
    0%, 100% {
        transform: rotate(0);
    }
    10%, 30%, 50%, 70%, 90% {
        transform: rotate(-10deg);
    }
    20%, 40%, 60%, 80% {
        transform: rotate(10deg);
    }
}


.bi-bell.active {
    display: inline-block;
    animation: shake 1s infinite ease-in-out;
}


</style>
<!-- Header START -->
<sec:authorize access="isAuthenticated()">
   <sec:authentication property="principal.account.accountId" var="aId"/>
</sec:authorize>
    <header class="navbar-light navbar-sticky" >
        <!-- Logo Nav START -->
        <nav class="navbar navbar-expand-xl">
            <div class="container">
                <!-- Logo START -->
                <a class="navbar-brand" href="/main/index">
                    <img src="${pageContext.request.contextPath }/resources/assets/images/logo1(배경0).png" alt="" width="200px">
                </a>
                <!-- Logo END -->

                <!-- Responsive navbar toggler -->
                <button class="navbar-toggler ms-sm-auto" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-animation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                </button>

                <!-- Main navbar START -->
                <div class="navbar-collapse collapse" id="navbarCollapse">
                    <!-- Nav Search START -->
                    <div style="display: flex; justify-content: center; margin-top: 10px;">
                        <a href="/recruit/list.do"
                            style="font-weight: bold; margin-left: 60px; margin-right: 40px; font-size: 18px; color: dimgray; text-decoration: none;"
                            onmouseover="this.style.color='black'" onmouseout="this.style.color='dimgray'">
                            <span>채용정보</span>
                        </a>
                        <a href="/codingtest/list.do"
                            style="font-weight: bold; margin-right: 40px; font-size: 18px; color: dimgray; text-decoration: none;"
                            onmouseover="this.style.color='black'" onmouseout="this.style.color='dimgray'">
                            <span>코딩테스트</span>
                        </a>
            
                        <a href="/ent/list.do"
                            style="font-weight: bold; margin-right: 40px; font-size: 18px; color: dimgray; text-decoration: none;"
                            onmouseover="this.style.color='black'" onmouseout="this.style.color='dimgray'">
                            <span>기업목록</span>
                        </a>
            
                        <a href="/freeBoard/list.do"
                            style="font-weight: bold; margin-right: 40px; font-size: 18px; color: dimgray; text-decoration: none;"
                            onmouseover="this.style.color='black'" onmouseout="this.style.color='dimgray'">
                            <span>자유게시판</span>
                        </a>
                    </div>
                    <!-- Nav Search END -->
                </div>
                <!-- Main navbar END -->

                <!-- 로그인 안했을 때 버튼 -->
             <c:if test="${empty SessionInfo }">
            <div style="margin-top: 10px;">
                    <a href="/main/loginForm.do" style="font-weight: bold; margin-right: 15px; color: gray; text-decoration: none;"
                    onmouseover="this.style.color='darkorchid'"
                    onmouseout="this.style.color='gray'">
                     <span>로그인</span>
                 </a>

                 <a href="/main/registerForm.do" style="font-weight: bold; margin-right: 50px; color: gray; text-decoration: none;"
                 onmouseover="this.style.color='darkorchid'"
                 onmouseout="this.style.color='gray'">
                  <span>회원가입</span>
              </a>
           	</div>
             </c:if>   
            
            <div style="margin-top: 7px;">
            <c:choose>
            <c:when test="${empty aId }">
                <a href="/main/entLoginForm.do" style="font-weight: bold; color: gray; text-decoration: none;"
                onmouseover="this.style.color='darkorchid'"
                onmouseout="this.style.color='gray'"
                onclick="return checkAuthorization();">
                <span style="font-size: 16px;">기업서비스</span>
		         </a>
            </c:when>
            <c:otherwise>
                <a href="/myPage/enterprise/entInfo" style="font-weight: bold; color: gray; text-decoration: none;"
                onmouseover="this.style.color='darkorchid'"
                onmouseout="this.style.color='gray'"
                onclick="return checkAuthorization();">
                <span>기업서비스</span>
		         </a>
            </c:otherwise>
            </c:choose>
            </div>
			
			<!-- Nav Search START -->
                <div class="nav nav-item dropdown nav-search px-1 px-lg-3">
                    <a class="nav-link" role="button" href="#" id="navSearch" data-bs-toggle="dropdown"
                        aria-expanded="true" data-bs-auto-close="outside" data-bs-display="static" style="margin-top: 5px;">
                        <i class="bi bi-search fs-5"> </i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end shadow rounded p-2" aria-labelledby="navSearch"
                        data-bs-popper="none">
                        <form class="input-group">
                            <input class="form-control border-primary" type="search" placeholder="검색어를 입력하세요"
                                aria-label="Search">
                            <button class="btn btn-primary m-0" type="submit">검색</button>
                        </form>

                       <!--Recent search -->
                       
                        <ul class="list-group list-group-borderless p-2 small">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="fw-bold">최근 검색어:</span>
                                <button class="btn btn-sm btn-link mb-0 px-0">모두 지우기</button>
                            </li>
                            <li class="list-group-item text-primary-hover text-truncate">
                                <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>코딩 잘하는방법</a>
                            </li>
                            <li class="list-group-item text-primary-hover text-truncate">
                                <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>스프링 공부법</a>
                            </li>
                            <li class="list-group-item text-primary-hover text-truncate">
                                <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>jsp 공부법</a>
                            </li>
                            <li class="list-group-item text-primary-hover text-truncate">
                                <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>코딩 어떻게 하는 거였지</a>
                            </li>
                        </ul>
                    </div>
                </div>
                
                <!-- Nav Search END -->

                <!-- if문 사용해서 밑에 부분 로그인 했을때 출력 -->
				<c:if test="${not empty SessionInfo }">
				
                <!-- Profile and notification START -->
                <ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">
                    <!-- Notification dropdown START -->
                    <li class="nav-item ms-0 ms-md-3 dropdown" >
                        <!-- Notification button -->
                        <a class="btn btn-light btn-round mb-0" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false" data-bs-auto-close="outside" id="alarmBtn">
                            <i class="bi bi-bell fa-fw"></i>
                        </a>
                        <!-- Notification dote -->
                        <div id="notis-badge">
                        
                        	
                        </div>
							 <p class="arrow_box">알림이 도착했습니다.</p>                        

                        <!-- Notification dropdown menu START -->
                        <div
                            class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg border-0">
                            <div class="card bg-transparent">
                            
                            	<div id="alarm-header">
                            	
                            	</div>
                                
                                <div class="card-body p-0">
                                 <ul class="list-group list-unstyled list-group-flush"  id="alarm-container">
							
                                 </ul>
                                </div>
                                
                            </div>
                            
                        </div>
                        <!-- Notification dropdown menu END -->
                    </li>
                    <!-- Notification dropdown END -->

                    <!-- Profile dropdown START -->
                    <li class="nav-item ms-3 dropdown">
                        <!-- Avatar -->
                        <a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button"
                            data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <img class="avatar-img rounded-circle" src="${pageContext.request.contextPath }/resources/assets/images/avatar/01.jpg" alt="avatar">
                        </a>

                        <!-- Profile dropdown START -->
                        <ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
                            aria-labelledby="profileDropdown" style="width: 50px;">
                            <!-- Profile info -->
                            <li class="px-3 mb-3">
                                <div class="d-flex align-items-center">
                                    <!-- Avatar -->
<!--                                     <div class="avatar"> -->
<%--                                         <img class="avatar-img rounded-circle shadow" src="${pageContext.request.contextPath }/resources/assets/images/avatar/01.jpg" --%>
<!--                                             alt="avatar"> -->
<!--                                     </div> -->
                                    <div>
                                        <a class="h6" href="#">${sessionScope.SessionInfo.accountNick }</a>
                                        <p class="small m-0">${sessionScope.SessionInfo.accountMail }</p>
                                    </div>
                                </div>
                            </li>
                            <!-- Links -->
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <c:choose>
								<c:when test="${sessionScope.SessionInfo.authCmmncd eq 'AUTH102' }">
	                            	<li><a class="dropdown-item" href="/myPage/member"><i class="bi bi-person fa-fw me-2"></i>마이페이지</a></li>
								</c:when>
								<c:when test="${sessionScope.SessionInfo.authCmmncd eq 'AUTH103' }">
	                            	<li><a class="dropdown-item" href="/myPage/enterprise/entInfo"><i class="bi bi-person fa-fw me-2"></i>마이페이지</a></li>
								</c:when>
                            </c:choose>
                            
                            
                            <li><form id="logoutForm" action="/logout" method="post" class="dropdown-item dropdown-footer bg-danger-soft-hover">
								    <a id="logoutBtn" href="#" class="bg-danger-soft-hover">
								        <i class="bi bi-power fa-fw me-2"></i>로그아웃
								    </a>
								    <sec:csrfInput/>
								</form>
							</li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                        </ul>
                        <!-- Profile dropdown END -->
                    </li>
                    <!-- Profile dropdown END -->
                </ul>
                <!-- Profile and notification END -->
                </c:if>
            </div>
        </nav>
        <!-- Logo Nav END -->
    </header>
    <!-- Header END -->
    
<script type="text/javascript">
$(function(){
	
	var logoutBtn = $("#logoutBtn");
	var logoutForm = $("#logoutForm");
	var alarmBtn = $("#alarmBtn");
	
	logoutBtn.on("click", function(){
		localStorage.removeItem('warningStop');
		localStorage.removeItem('noResume');
		logoutForm.submit();
	});
	
	
	
	alarmBtn.on("click", function(){
		var alarmHeader = document.getElementById("alarm-header");
		var alarmContainer = document.getElementById("alarm-container");
		var accountId = "${sessionScope.SessionInfo.accountId}";
		
		$.ajax({
			
			url : "/myPage/enterprise/getAlarmListById",
			type : "get",
			data : {accountId : accountId},
	      	beforeSend: function(xhr) {
                 xhr.setRequestHeader(header, token);
            },
			success : function (res) {
				
				alarmHeader.innerHTML = "";
				alarmContainer.innerHTML = "";
				
				//알림이 없을 때.
				if(res.length == 0){
					
					alarmHeader.innerHTML +=
            		'<div  class="card-header bg-transparent border-bottom py-4 d-flex justify-content-between align-items-center">'+
        			'<h6 class="m-0 ">새로운 알림이 없습니다.</h6>'+
        			'</div>';
        			
				}else{
					
					alarmHeader.innerHTML +=
						
                    '<div class="card-header bg-transparent border-bottom py-4 d-flex justify-content-between align-items-center">'+
                    '<h6 class="m-0">새로운 알람 <span class="badge bg-danger bg-opacity-10 text-danger ms-2">'+(res.length)+' 개</span></h6>'+
                    '<a class="small" href="#" id="alarmAllClearBtn"">모두 지우기</a>'+
                  	'</div>';
					
                  	var alarmContainerHTML = "";
                  	
					$.each(res, function(idx, list){
						
						var date = new Date(list.alarmTime);
						var year = date.getFullYear();
						var month = ("0" + (date.getMonth() + 1)).slice(-2);
						var day = ("0" + date.getDate()).slice(-2);
						var formatData = year + '-' + month + '-' + day;
						
						
						if(list.alarmCtgry == "채용결과"){
							
							alarmContainerHTML +=
								
	                   		'<li>'+
							'<a href="/myPage/member/recruitCheck.do?alarmNo='+ (list.alarmNo) +'" class="list-group-item-action border-0 border-bottom d-flex p-3">'+
									'<div>'+
									'<h6 class="mb-1">'+(list.alarmCn)+'</h6>'+
									'<p class="small text-body m-0">'+(list.alarmTtl)+'</p>'+
									'<u class="small">'+(list.alarmSndr)+'</u>'+
									'<div class="text-body">'+(formatData)+'</div>'+
									'</div>'+
							'</a>'+
							'</li>';
							
						}else if(list.alarmCtgry == "인재제안"){
							
							alarmContainerHTML +=
								
	                   		'<li>'+
							'<a href="/myPage/member/talentCheck.do?alarmNo='+ (list.alarmNo) +'" class="list-group-item-action border-0 border-bottom d-flex p-3">'+
									'<div>'+
									'<h6 class="mb-1">'+(list.alarmCn)+'</h6>'+
									'<u class="small">'+(list.alarmSndr)+'</u>'+
									'<div class="text-body">'+(formatData)+'</div>'+
									'</div>'+
							'</a>'+
							'</li>';
							
						}
						
						
					});
					
					alarmContainer.innerHTML = alarmContainerHTML;
				}
			}
		})
	});
});

function checkAuthorization() {
    var authCode = "${sessionScope.SessionInfo.authCmmncd}";
    if (authCode === 'AUTH101' || authCode === 'AUTH102') {
        Swal.fire({
        	icon : "info",
        	text : "기업회원만 가능한 서비스입니다"
        })
        return false; // 이동하지 않고 현재 페이지에 머무릅니다.
    }
    return true; // 조건이 충족되지 않으면 링크 대상 페이지로 이동합니다.
    
}


</script>


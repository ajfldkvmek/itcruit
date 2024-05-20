<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/bootstrap.min.css"><!-- BOOTSTRAP STYLE SHEET --> --%>
<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/font-awesome.min.css"><!-- FONTAWESOME STYLE SHEET --> --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/feather.css"><!-- FEATHER ICON SHEET -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/owl.carousel.min.css"><!-- OWL CAROUSEL STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/magnific-popup.min.css"><!-- MAGNIFIC POPUP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/lc_lightbox.css"><!-- Lc light box popup -->     
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/bootstrap-select.min.css"><!-- BOOTSTRAP SLECT BOX STYLE SHEET  -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/dataTables.bootstrap5.min.css"><!-- DATA table STYLE SHEET  -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/select.bootstrap5.min.css"><!-- DASHBOARD select bootstrap  STYLE SHEET  -->     
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/dropzone.css"><!-- DROPZONE STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/scrollbar.css"><!-- CUSTOM SCROLL BAR STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/datepicker.css"><!-- DATEPICKER STYLE SHEET -->
<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/flaticon.css"> <!-- Flaticon --> --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/swiper-bundle.min.css"><!-- Swiper Slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/style-nahye.css"><!-- MAIN STYLE SHEET -->

    <!-- THEME COLOR CHANGE STYLE SHEET -->
<%--     <link rel="stylesheet" class="skin" type="text/css" href="${pageContext.request.contextPath }/resources/jobzillaassets/css/skins-type/skin-6.css"> --%>
    
    <!-- jquery -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- jquery-ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- jquery-ui css -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 

<body>
<!-- 원래 있던 이력서 클릭 시 -->
<c:if test="${status eq 'u' }">
</c:if>

    <div class="page-wraper">
        
        <!-- CONTENT START -->
        <div class="page-content-resume">

        <!-- SECTION START -->
<!-- body 시작 -->
            <!-- OUR BLOG START -->
            <div class="section-full p-t16 p-b90 site-bg-white">
                <div class="container">
                    <form action="/resume/register" name="rsmForm" id="rsmForm" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <!-- 사이드바 시작 -->
                            <div class="col-xl-3 col-lg-4 col-md-12 rightSidebar m-b30">
                                <div class="side-bar-st-1">
                                    <div class="twm-mid-content text-center">
                                        <h4 class="rsm_sidebar_title">항목편집
                                            <br/>
                                            <span class="rsm_sidebar_subtitle required">필수항목</span>
                                            <span class="rsm_sidebar_subtitle optional">선택항목</span>
                                        </h4>
                                    </div>
                                
                                    <div class="twm-nav-list-1">
                                        <ul>
                                            <li><a class="sc-7310c7f3-3 ewWjoN required">기본정보</a></li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">사진</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">간단소개</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">개발직무</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                            <li><a class="sc-7310c7f3-3 ewWjoN required">기술스택</a></li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">포트폴리오</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                            <li><a class="sc-7310c7f3-3 ewWjoN opptional">최종학력</a></li>
                                            <li><a class="sc-7310c7f3-3 ewWjoN opptional">경력</a></li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">자격증</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                            <li>
                                                <a class="sc-7310c7f3-3 gsDrxk">경험</a>
                                                <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- 사이드바 끝 -->

    <!-- 이력서 시작 -->
                            <div class="col-xl-9 col-lg-8 col-md-12 m-b30 resumeDiv">
                                <div class="twm-right-section-panel site-bg-gray">
                                    <!--Resume Headline-->
                                    <!-- 이력서 타이틀 시작 -->
                                    <div class="panel panel-default mb-3">
                                        <div class="panel-heading p-a5 panel-heading-with-btn-rsm ">
                                            <div class="form-group-rsm twm-textarea-full">
                                                <textarea class="form-control rsm_title_textarea" name="rsmTtl" placeholder="이력서 타이틀을 입력해주세요" onKeyPress="if(event.keyCode == 13) return false;">${member.accountNm }이력서_${todayDate }</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 이력서 타이틀 끝 -->

                                    <!-- 기본정보 시작 -->
                                    <div>
                                        <div class="sc-d2834fec-0 hGezTT mb-3" id="defaultInfoId">

                                            <!-- 사진추가 시 추가되는 영역 시작 -->
                                            <div class="sc-d2834fec-1 evajEU" id="photoId">
                                                <div class="profile_upload">
                                                <img src="" class="hover_bg resumeImage">
                                                    <label for="photoFile" class="photoBackIcon">
                                                        <i></i>
                                                        <b>사진추가</b>
                                                        <span>1:1 비율 권장</span>
                                                    </label>
                                                    <input accept="image/*" hidden="" type="file" id="photoFile" name="photoFile">
                                                </div>
                                            </div>
                                            <!-- 사진추가 시 추가되는 영역 끝 -->

                                            <div class="sc-d2834fec-2 bfawVz">
                                                <div class="sc-d2834fec-4 dmvRbK">
                                                    <textarea name="username" maxlength="15" placeholder="이름 입력" class="sc-ef790bde-0 bBMxve"
                                                        onKeyPress="if(event.keyCode == 13) return false;" disabled>${member.accountNm }</textarea>
                                                </div>
                                                <div class="sc-d2834fec-3 jVnTXq">
                                                    <dl class="sc-d2834fec-5 iZWYAv">
                                                        <dt class="sc-d2834fec-6 egxelz dt_email">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                                height="20" fill="none" viewBox="0 0 20 20">
                                                                <path fill="#222" fill-rule="evenodd"
                                                                    d="M2.917 2.917h-.833V17.083h15.833V2.917h-15Zm.834 2.396v-.73h12.5v.819L10 9.813 3.75 5.402v-.09Zm0 2.129v7.975h12.5V7.442l-5.77 4.072-.48.34-.48-.34-5.77-4.072Z"
                                                                    clip-rule="evenodd">
                                                                </path>
                                                            </svg>
                                                            <span class="blind">이메일</span>
                                                        </dt>
                                                        <dd class="sc-d2834fec-7 fRRHAy">
                                                            <span>${member.accountMail }</span>
                                                        </dd>
                                                    </dl>
                                                    <dl class="sc-d2834fec-5 hxjXqt">
                                                        <dt class="sc-d2834fec-6 egxelz dt_career_years">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                                height="20" fill="none" viewBox="0 0 20 20">
                                                                <g clip-path="url(#a)">
                                                                    <path fill="#222" fill-rule="evenodd"
                                                                        d="M14.001 2.292H5.668v2.5H1.667V17.5h16.667V4.792H14v-2.5Zm-1.667 2.5v-.834h-5v.834h5Zm-5 1.666h5v9.375h-5V6.458Zm-1.666 0H3.334v9.375h2.334V6.458ZM14 15.833V6.458h2.666v9.375h-2.666Z"
                                                                        clip-rule="evenodd">
                                                                    </path>
                                                                </g>
                                                                <defs>
                                                                    <clippath id="a">
                                                                        <path fill="#fff" d="M0 0h20v20H0z"></path>
                                                                    </clippath>
                                                                </defs>
                                                            </svg>
                                                            <span class="blind">경력</span>
                                                        </dt>
                                                        <dd class="sc-d2834fec-7 fRRHAy">
                                                            <div class="sc-9d16a6ce-0 ccWDsy">
                                                                <div class="sc-9d16a6ce-2 jYAWjG">
                                                                	<input type="hidden" value="" name="rsmNewCareer">
                                                                    <input type="button" value="신입" id="default_career_new" class="default_careerBtn">
                                                                    <input type="button" value="경력" id="default_career_exp" class="default_careerBtn">
                                                                    <input class="sc-9d16a6ce-3 default_careerYears" id="default_careerYears" type="text" 
                                                                        maxlength="2" name="rsmCareerYear" value="">
                                                                    <span class="default_careerYears">연차</span>
                                                                </div>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="sc-d2834fec-3 jVnTXq">
                                                    <dl class="sc-d2834fec-5 hORBe">
                                                        <dt class="sc-d2834fec-6 egxelz dt_birthYear">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                                height="20" fill="none" viewBox="0 0 20 20">
                                                                <path fill="#222" fill-rule="evenodd"
                                                                    d="M7.083 2.083v1.25h5.833v-1.25h1.667v1.25h3.333V17.5H2.083V3.333h3.333v-1.25h1.667ZM3.75 10v5.833h12.5V10H3.75Zm12.5-1.666H3.75V5h1.666v1.25h1.667V5h5.833v1.25h1.667V5h1.667v3.334Z"
                                                                    clip-rule="evenodd">
                                                                </path>
                                                            </svg>
                                                            <span class="blind">생년월일</span>
                                                        </dt>
                                                        <dd class="sc-d2834fec-7 fRRHAy basic_birthYear">
<!--                                                             <input placeholder="0000" maxlength="4" type="text" value="" name="birthYear" disabled> -->
                                                            <span>${member.birthY }년생</span>
                                                        </dd>
                                                    </dl>
                                                    <dl class="sc-d2834fec-5 crJJsV">
                                                        <dt class="sc-d2834fec-6 egxelz dt_user_cell">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                                height="20" fill="none" viewBox="0 0 20 20">
                                                                <path fill="#222" fill-rule="evenodd"
                                                                    d="m16.034 13.32-2.907-1.246h-.007v.001l-1.603 1.958-.593-.292A10.229 10.229 0 0 1 6.26 9.077l-.291-.593 1.96-1.606v-.001L6.68 3.963s.001 0 0 0l-.003-.003a.016.016 0 0 0-.005-.002h-.002l-2.707.625h-.003v.005c0 6.316 5.137 11.453 11.452 11.453h.005v-.002l.001-.002.625-2.708c0-.001 0 0 0 0v-.002a.014.014 0 0 0-.003-.004l-.005-.003Zm1.632.385a1.676 1.676 0 0 0-.964-1.912l-2.92-1.252h-.002a1.675 1.675 0 0 0-1.951.48l-.747.913a8.57 8.57 0 0 1-3.015-3.015l.912-.747c.579-.468.777-1.27.48-1.955v-.001L8.211 3.305v-.002a1.679 1.679 0 0 0-1.915-.969l-2.707.624a1.668 1.668 0 0 0-1.298 1.63c0 7.236 5.884 13.12 13.12 13.12.78 0 1.456-.534 1.63-1.297v-.001l.625-2.705Z"
                                                                    clip-rule="evenodd">
                                                                </path>
                                                            </svg>
                                                            <span class="blind">연락처</span>
                                                        </dt>
                                                        <dd class="sc-d2834fec-7 fRRHAy">
                                                            <span>${member.accountTell }</span>
                                                        </dd>
                                                    </dl>
                                                    <dl class="sc-d2834fec-5 fHojSR">
                                                        <dt class="sc-d2834fec-6 egxelz">
                                                            <button type="button" class="sc-7330897d-0 kiOgwW"></button>
                                                        </dt>
                                                        <dd class="sc-d2834fec-7 fRRHAy">
                                                            <div class="profile_tooltip">
                                                                이력서 비공개
                                                            </div>
                                                            <input type="hidden" value="" name="rsmRlsYn">
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 기본정보 끝 -->

                                    <!-- 간단소개 시작 -->
                                    <div class="sc-7310c7f3-14 bFvyNh mb-3" id="introId">
                                        <h1>간단 소개</h1>
                                        <!-- 입력!!!!!! -->
                                        <textarea rows="1" name="rsmIntroduction" placeholder="간결하게 요점만 요약해서 3~5줄 내로 읽기 쉬운 내용으로 작성해보세요"
                                            class="sc-ef790bde-0 bBMxve" id="introTextarea"></textarea>
                                            <!-- class="sc-ef790bde-0 bBMxve" style="height: 24px;"></textarea> -->
                                    </div>
                                    <!-- 간단소개 끝 -->

                                    <!-- 개발직무 시작 -->
                                    <div id="posiId">
                                        <div class="sc-1075a1b8-0 hzNhit mb-3">
                                            <label for="jobCategory" class="sc-c2b6b214-0 fFNBCd">개발 직무</label>
                                            <div class="select_wrap" id="positionFormInput">
                                            </div>
                                            <div class="box_select">직무를 선택해주세요
                                                <input class="invisible" type="text">
                                                <button type="button">
                                                    <span style="display: flex;">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                            <path fill="#222" fill-rule="evenodd"
                                                            d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                            clip-rule="evenodd">
                                                            </path>
                                                        </svg>
                                                    </span>
                                                </button>
                                            </div>
                                            <!-- 개발직무 셀렉트 박스 클릭 시 시작 -->
                                            <div>
                                            </div>
<!--                                             <input type="hidden" value="" name="positionVO"> -->
                                            <div class="sc-1075a1b8-1 QMzFo selectbox_hide">
                                                <ul>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category1" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category1">
                                                                <label for="category1" class="sc-1f8961c5-0 dDoUMI">서버</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category2" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category2">
                                                                <label for="category2" class="sc-1f8961c5-0 dDoUMI">웹백엔드</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category3" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category3">
                                                                <label for="category3" class="sc-1f8961c5-0 dDoUMI">웹프런트</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category4" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category4">
                                                                <label for="category4" class="sc-1f8961c5-0 dDoUMI">응용소프트웨어</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category5" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category5">
                                                                <label for="category5" class="sc-1f8961c5-0 dDoUMI">시스템소프트웨어</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category6" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category6">
                                                                <label for="category6" class="sc-1f8961c5-0 dDoUMI">앱개발자</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category7" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category7">
                                                                <label for="category7" class="sc-1f8961c5-0 dDoUMI">크로스플랫폼</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category8" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category8">
                                                                <label for="category8" class="sc-1f8961c5-0 dDoUMI">게임개발</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category9" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category9">
                                                                <label for="category9" class="sc-1f8961c5-0 dDoUMI">DBA</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category10" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category10">
                                                                <label for="category10" class="sc-1f8961c5-0 dDoUMI">빅데이터</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="categor11" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="categor11">
                                                                <label for="categor11" class="sc-1f8961c5-0 dDoUMI">인공지능/머신러닝</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="categor12" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="categor12">
                                                                <label for="categor12" class="sc-1f8961c5-0 dDoUMI">devops/시스템 엔지니어</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category13" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category13">
                                                                <label for="category13" class="sc-1f8961c5-0 dDoUMI">HW/임베디드</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category14" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category14">
                                                                <label for="category14" class="sc-1f8961c5-0 dDoUMI">블록체인</label>
                                                        </div>
                                                    </li>
                                                    <li class="inp_chk">
                                                        <div class="inp_chk">
                                                            <input autocomplete="off" id="category15" readonly="" class="sc-250ec880-0 cXyXtM position_opt" type="checkbox" name="category15">
                                                                <label for="category15" class="sc-1f8961c5-0 dDoUMI">PM</label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- 개발직무 셀렉트 박스 클릭 시 끝 -->
                                        </div>
                                    </div>
                                    <!-- 개발직무 끝 -->

                                    <!-- 기술스택 시작 -->
                                    <div class="sc-7310c7f3-9 bXKIZy mb-3" id="availLangId">
                                        <div class="sc-e91bd250-0 tpYXJ">
                                            <div>
                                                <label for="techStack" class="sc-c2b6b214-0 kNWRka">기술스택(업무 툴/스킬)</label>
<!--                                                 <input type="hidden" value="" name="availLangVO"> -->
                                                <div class="sc-e91bd250-1 kbmRUr" id="availLangFormInput">
                                                </div>
                                                <div class="box_inp">
                                                    <input id="techStack" placeholder="기술스택을 등록해주세요"
                                                        class="sc-250ec880-0 cXyXtM" type="text" value=""
                                                        name="techStack" onKeyPress="if(event.keyCode == 13) return false;">
<!--                                                    		name="techStack"> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 기술스택 끝 -->

                                    <!-- 포트폴리오 시작 -->
                                    <div id="portId">
                                        <div class="sc-fac3ceb6-1 bkpht mb-3">
                                            <h1 class="sc-fac3ceb6-2 cZnnpE">포트폴리오</h1>
                                            <div>
                                                <div class="sc-ae33785f-1 kvoWdJ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none" viewBox="0 0 40 40">
                                                        <path fill="#F5F5F8" d="M40 20C40 8.954 31.046 0 20 0S0 8.954 0 20s8.954 20 20 20 20-8.954 20-20Z"></path>
                                                        <path fill="#222" fill-rule="evenodd"
                                                            d="M13.83 20.232a3 3 0 1 0 3 5.196l3.68-2.125 1 1.732-3.68 2.125a5 5 0 0 1-5-8.66l3.68-2.125 1 1.732-3.68 2.125Zm12.094-.054a3 3 0 1 0-3-5.196l-3.68 2.125-1-1.732 3.68-2.125a5 5 0 0 1 5 8.66l-3.68 2.125-1-1.732 3.68-2.125Zm-8.146 2.393 5.197-3-1-1.732-5.197 3 1 1.732Z"
                                                            clip-rule="evenodd">
                                                        </path>
                                                    </svg>
                                                    <div class="sc-ae33785f-2 dgATeV">
<!--                                                     	<input type="hidden" value="" name="portUrlVO"> -->
                                                        <div class="sc-ae33785f-5 hESxaU">
                                                            <input placeholder="URL 제목을 입력해주세요" type="text" name="links.0.title" onKeyPress="if(event.keyCode == 13) return false;">
                                                        </div>
                                                        <input placeholder="http://, https://를 포함해 작성해주세요" type="text" name="links.0.url" onKeyPress="if(event.keyCode == 13) return false;">
                                                    </div>
<!--                                                     <input type="hidden" value="" name="portFileVO"> -->
                                                    <button class="sc-ae33785f-4 bFuzuF">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                            <path xmlns="http://www.w3.org/2000/svg" fill="#C4C4C4" fill-rule="evenodd"
                                                                    d="M7 3h10v4h4v2h-2v12H5V9H3V7h4V3Zm2 4h6V5H9v2ZM7 9v10h10V9H7Zm2 7v-4h2v4H9Zm4-4v4h2v-4h-2Z"
                                                                    clip-rule="evenodd">
                                                            </path>
                                                        </svg>
                                                        <span class="blind">삭제</span>
                                                    </button>
                                                    <button type="button" class="sc-ae33785f-3 cwajQs">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                            <path fill="#222" fill-rule="evenodd"
                                                                d="M14.5 3a1 1 0 1 0 0 2h3.586l-4.793 4.793a1 1 0 0 0 1.414 1.414L19.5 6.414V10a1 1 0 1 0 2 0V5a2 2 0 0 0-2-2h-5Zm-9 3.5a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1V14a1 1 0 1 1 2 0v4.5a3 3 0 0 1-3 3h-11a3 3 0 0 1-3-3v-11a3 3 0 0 1 3-3H10a1 1 0 1 1 0 2H5.5Z"
                                                                clip-rule="evenodd">
                                                            </path>
                                                        </svg>
                                                        <span class="blind">새창열기</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <button type="button" class="btnURL">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                    <path fill="#CC77FF" fill-rule="evenodd"
                                                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                        clip-rule="evenodd">
                                                    </path>
                                                </svg> URL 추가
                                            </button>
                                            <button type="button" class="btnFile">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                    <path fill="#CC77FF" fill-rule="evenodd"
                                                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                        clip-rule="evenodd">
                                                    </path>
                                                </svg> 파일 추가
                                            </button>
                                        </div>
                                    </div>
                                    <!-- 포트폴리오 끝 -->

                                    <!-- 학력 시작 -->
                                    <div>
                                        <div class="sc-fac3ceb6-1 lpsJjJ mb-3">
                                            <h1 class="sc-fac3ceb6-2 dkcFfA">
                                                최종 학력
                                            </h1>
                                            <div class="sc-8925b530-5 btUHJH">
                                                <div class="sc-8925b530-8 dpMcbe">
                                                </div>
                                                <div class="sc-8925b530-3 sc-8925b530-7 kwbido dubyfY">
                                                    <input type="hidden" value="" name="eduEnd">
                                                    <div class="year_month_content">
                                                        <!-- value에 입력!!!!!! -->
                                                        <input class="year_content" placeholder="YYYY" maxlength="4" type="number" value="" name="educations.0.graduateYear" onKeyPress="if(event.keyCode == 13) return false;">.
                                                        <input class="month_content" placeholder="MM" maxlength="2" type="number" value="" name="educations.0.graduateMonth" onKeyPress="if(event.keyCode == 13) return false;">
                                                        <span>졸업(예정)</span>
                                                    </div>
                                                </div>
                                                <div class="sc-8925b530-6 jrTVsw">
                                                    <div class="sc-8925b530-11 jodYln">
                                                        <div>
                                                            <div class="sc-8925b530-10 gsFySK">
                                                                <div class="sc-8925b530-0 bDledc">
                                                                    <div class="sc-9d16a6ce-0 ccWDsy">
                                                                        <input type="hidden" value="" name="eduAcdmcr">
                                                                        <div class="sc-9d16a6ce-2 loyGiv" data-role="selectBox">
                                                                            학력 구분
                                                                            <input class="sc-9d16a6ce-3 dCMqUZ" type="text" name="educations.0.educationType">
                                                                            <button type="button">
                                                                                <span style="display: flex;">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                                                        <path fill="#222" fill-rule="evenodd"
                                                                                            d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                            clip-rule="evenodd">
                                                                                        </path>
                                                                                    </svg>
                                                                                </span>
                                                                            </button>
                                                                        </div>
                                                                        <!-- 학교구분 셀렉트 박스 클릭했을 때 -->
                                                                        <div class="sc-9d16a6ce-1 jecWdQ selectbox_hide">
                                                                            <ul>
                                                                                <li>
                                                                                    <div class="sc-9d16a6ce-4 rddOI">
                                                                                        <label for="eduCategory0" class="sc-1f8961c5-0 dDoUMI eduSelect">고등학교</label>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                        <label for="eduCategory1" class="sc-1f8961c5-0 dDoUMI eduSelect">대학(2,3년)</label>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                        <label for="eduCategory2" class="sc-1f8961c5-0 dDoUMI eduSelect">대학교(4년)</label>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                        <label for="eduCategory3" class="sc-1f8961c5-0 dDoUMI eduSelect">대학원(석사)</label>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                        <label for="eduCategory4" class="sc-1f8961c5-0 dDoUMI eduSelect">대학원(박사)</label>
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                        
                                                                    </div>
                                                                </div>

                                                                <div class="sc-8925b530-3 sc-8925b530-4 kwbido gmerqK flex_main_text2">
                                                                    <!-- value 입력!!!!!! -->
<!--                                                                     <input placeholder="학교명을 입력해주세요" type="text" value="" name="educations.0.schoolName" onKeyPress="if(event.keyCode == 13) return false;"> -->
                                                                    <input placeholder="학교명을 입력해주세요" type="text" value="" name="eduNm" onKeyPress="if(event.keyCode == 13) return false;">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="sc-8925b530-3 sc-8925b530-13 kwbido busjrW">
<!--                                                         <input placeholder="학과명을 입력해주세요" type="text" value="" name="educations.0.majorName" onKeyPress="if(event.keyCode == 13) return false;"> -->
                                                        <input placeholder="학과명을 입력해주세요" type="text" value="" name="rsmMjrNm" onKeyPress="if(event.keyCode == 13) return false;">
                                                    </div>
                                                    <div class="sc-8925b530-14 ipRUQN">
                                                        <div class="sc-8925b530-3 sc-8925b530-13 kwbido jcetYF">
<!--                                                             <input placeholder="학점" maxlength="4" type="text" value="" name="educations.0.creditPoint" disabled> -->
                                                            <input placeholder="학점" maxlength="4" type="text" value="" name="grade">
                                                        </div>
                                                        <div class="sc-9d16a6ce-0 ccWDsy">
                                                            <div class="sc-9d16a6ce-2 jYAWjG eduGijun">
                                                                	기준학점
                                                                <input class="sc-9d16a6ce-3 dCMqUZ" type="text" name="educations.0.creditPointType">
                                                                <button type="button">
                                                                    <span style="display: flex;">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                                            <path fill="#222" fill-rule="evenodd"
                                                                                d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                clip-rule="evenodd">
                                                                            </path>
                                                                        </svg>
                                                                    </span>
                                                                </button>
                                                            </div>

                                                            <!-- 기준학점 셀렉트 박스 클릭했을 때 -->
                                                            <div class="sc-9d16a6ce-1 jecWdQ eduFullGrade selectbox_hide">
                                                                <ul>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory0" class="sc-1f8961c5-0 dDoUMI fullSelect">4.0</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory1" class="sc-1f8961c5-0 dDoUMI fullSelect">4.3</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory2" class="sc-1f8961c5-0 dDoUMI fullSelect">4.5</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory3" class="sc-1f8961c5-0 dDoUMI fullSelect">5.0</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory4" class="sc-1f8961c5-0 dDoUMI fullSelect">7.0</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="sc-9d16a6ce-4 gSdGYk">
                                                                            <label for="fullCategory5" class="sc-1f8961c5-0 dDoUMI fullSelect">100</label>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>

<!--                                                         <div> -->
<!--                                                             <a data-bs-toggle="modal" href="#grade_calculator" role="button" title="Edit" class="site-text-primary"> -->
<!--                                                                 <p class="gradeCalc">학점변환기</p> -->
<!--                                                             </a> -->
<!--                                                         </div> -->

                                                        <!-- 학점변환기 모달 -->
<!--                                                         <div class="modal fade twm-saved-jobs-view" id="grade_calculator" tabindex="-1"> -->
<!--                                                             <div class="modal-dialog modal-dialog-centered"> -->
<!--                                                                 <div class="modal-content"> -->
<!--                                                                     <form> -->
                
<!--                                                                         <div class="modal-header"> -->
<!--                                                                             <h2 class="modal-title">학점변환기</h2> -->
<!--                                                                             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
<!--                                                                         </div> -->
                
<!--                                                                         <div class="modal-body"> -->
<!--                                                                             <div class="row"> -->
<!--                                                                                 <div class="col-xl-6 col-lg-12 col-md-12"> -->
<!--                                                                                     <div class="form-group"> -->
<!--                                                                                         <label>내 학점</label> -->
<!--                                                                                         <div class="ls-inputicon-box">  -->
<!--                                                                                             <input class="form-control"  type="text" placeholder="Enter Version"> -->
<!--                                                                                         </div> -->
<!--                                                                                     </div> -->
<!--                                                                                 </div> -->
                
<!--                                                                                 <div class="col-xl-6 col-lg-12 col-md-12"> -->
<!--                                                                                     <div class="form-group"> -->
<!--                                                                                         <label>기준학점</label> -->
<!--                                                                                         <div class="ls-inputicon-box">   -->
<!--                                                                                             <select class="wt-select-box selectpicker"  data-live-search="true" title=""  data-bv-field="size"> -->
<!--                                                                                                 <option class="bs-title-option" value="">Select Category</option> -->
<!--                                                                                                 <option>4.0</option> -->
<!--                                                                                                 <option>4.3</option> -->
<!--                                                                                                 <option selected>4.5</option> -->
<!--                                                                                                 <option>5.0</option> -->
<!--                                                                                                 <option>7.0</option> -->
<!--                                                                                                 <option>100</option> -->
<!--                                                                                             </select> -->
<!--                                                                                         </div> -->
<!--                                                                                     </div> -->
<!--                                                                                 </div> -->
                
<!--                                                                                 <div class="col-xl-6 col-lg-12 col-md-12"> -->
<!--                                                                                     <div class="form-group"> -->
<!--                                                                                         <label>Experience year</label> -->
<!--                                                                                         <div class="ls-inputicon-box">   -->
<!--                                                                                             <select class="wt-select-box selectpicker"  data-live-search="true" title=""  data-bv-field="size"> -->
<!--                                                                                                 <option class="bs-title-option" value="">Select Category</option> -->
<!--                                                                                                 <option>2021</option> -->
<!--                                                                                                 <option>2020</option> -->
<!--                                                                                             </select> -->
<!--                                                                                             <i class="fs-input-icon fa fa-user-edit"></i> -->
<!--                                                                                         </div> -->
<!--                                                                                     </div> -->
<!--                                                                                 </div> -->
                
<!--                                                                                 <div class="col-xl-6 col-lg-12 col-md-12"> -->
<!--                                                                                     <div class="form-group"> -->
<!--                                                                                         <label>Month</label> -->
<!--                                                                                         <div class="ls-inputicon-box">   -->
<!--                                                                                             <select class="wt-select-box selectpicker"  data-live-search="true" title=""  data-bv-field="size"> -->
<!--                                                                                                 <option class="bs-title-option" value="">Select Category</option> -->
<!--                                                                                                 <option>January</option> -->
<!--                                                                                                 <option>February</option> -->
<!--                                                                                             </select> -->
<!--                                                                                             <i class="fs-input-icon fa fa-user-edit"></i> -->
<!--                                                                                         </div> -->
<!--                                                                                     </div> -->
<!--                                                                                 </div> -->
<!--                                                                             </div> -->
<!--                                                                         </div> -->
                
<!--                                                                         <div class="modal-footer"> -->
                                                                            
<!--                                                                             <button type="button" class="site-button" data-bs-dismiss="modal">닫기</button> -->
<!--                                                                             <button type="button" class="site-button">선택</button> -->
                                                                            
<!--                                                                         </div> -->
                
<!--                                                                     </form> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 학력 끝 -->

                                    <!-- 경력 시작 -->
                                    <div id="careerId">
                                        <div class="sc-fac3ceb6-1 lpsJjJ mb-3">
                                            <h1 class="sc-fac3ceb6-2 jryOPU">
                                                경력 (관련 업무경험)
                                            </h1>
                                            <div>
<!--                                             	<input type="hidden" value="" name="careerVO"> -->
                                                <div class="divCareer">
                                                    <div class="sc-8925b530-5 btUHJH" id="careerPlus">
                                                        <div class="sc-8925b530-8 dpMcbe">
                                                        </div>
                                                        <div class="sc-8925b530-3 sc-8925b530-7 itgktI dubyfY">
                                                            <div class="sc-ec120752-0 eFleNN">
                                                                <input class="hide" type="text" value="" name="careers.0.startTime">
                                                                <input class="hide" type="text" value="" name="careers.0.endTime">
                                                                <div class="calendar_area">
                                                                    <div class="calendar_box">
                                                                        <input class="calendar_year profile_input" maxlength="4" placeholder="YYYY" type="number" value="" name="careers.0.careerYear1" onKeyPress="if(event.keyCode == 13) return false;">
                                                                        <span>.</span>
                                                                        <input class="calendar_month profile_input" maxlength="2" placeholder="MM" type="number" value="" name="careers.0.careerMonth1" onKeyPress="if(event.keyCode == 13) return false;">
                                                                    </div>
                                                                    <span class="center_pa">-</span>
                                                                    <div class="calendar_box">
                                                                        <input class="calendar_year profile_input" maxlength="4" placeholder="YYYY" type="number" value="" name="careers.0.careerYear2" onKeyPress="if(event.keyCode == 13) return false;">
                                                                        <span>.</span>
                                                                        <input class="calendar_month profile_input" maxlength="2" placeholder="MM" type="number" value="" name="careers.0.careerMonth2" onKeyPress="if(event.keyCode == 13) return false;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="sc-ec120752-1 dOPJpb">
                                                                <input autocomplete="off" id="careers.0_proceeding" class="sc-250ec880-0 cXyXtM" type="checkbox" name="careers.0_proceeding">
                                                                <label for="careers.0_proceeding" class="sc-1f8961c5-0 dDoUMI">재직중</label>
                                                            </div>
                                                        </div>
                                                        <div class="sc-8925b530-6 jrTVsw">
                                                            <div class="sc-8925b530-11 jodYln">
                                                                <div class="sc-8925b530-3 sc-8925b530-4 itgktI gmerqK flex_main_text">
                                                                    <input placeholder="회사명을 입력해주세요" type="text" value="" name="careers.0.companyName" onKeyPress="if(event.keyCode == 13) return false;">
                                                                </div>
                                                                <div class="profile_order_control company_order_control">
                                                                    <div class="sc-f84c63c4-0 bQQyYT">
                                                                        <div class="sc-f84c63c4-1 IPObo">
                                                                            <button class="profile_down_button" disabled="" type="button">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                                                    <path fill="#222" fill-rule="evenodd"
                                                                                        d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                        clip-rule="evenodd">
                                                                                    </path>
                                                                                </svg>
                                                                            </button>
                                                                            <button class="profile_up_button" disabled="" type="button">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
                                                                                    <path fill="#000" fill-rule="evenodd"
                                                                                        d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"
                                                                                        clip-rule="evenodd">
                                                                                    </path>
                                                                                </svg>
                                                                            </button>
                                                                            <button class="profile_delete_button" disabled="" type="button">
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                                    <path fill="#C4C4C4" fill-rule="evenodd"
                                                                                        d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"
                                                                                        clip-rule="evenodd">
                                                                                    </path>
                                                                                </svg>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="sc-8925b530-3 sc-8925b530-13 kwbido busjrW diviRed">
                                                                <input placeholder="부서명" type="text" value="" name="careers.0.divisionName" onKeyPress="if(event.keyCode == 13) return false;"/>
                                                            </div>
                                                            <div class="sc-8925b530-3 sc-8925b530-13 kwbido dGKLjQ">
                                                                <input placeholder="직급/직책" type="text" value="" name="careers.0.dutyName" onKeyPress="if(event.keyCode == 13) return false;"/>
                                                            </div>
                                                            <div class="sc-8925b530-3 sc-8925b530-13 gjMvbv jIBfZE">
                                                                <textarea rows="1" placeholder="주요업무 및 성과를 작성해주세요"
                                                                    name="careers.0.jobDetailInfo" class="sc-ef790bde-0 bBMxve" style="height: 24px;"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- 프로젝트 div 시작 -->
                                                    <div class="sc-8925b530-5 btUHJH" id="projectPlus">
                                                        <div class="dpMcbe-2"></div>
                                                        <div class="dubyfY"></div>
                                                        <div class="sc-8925b530-6 jrTVsw">
                                                            <div class="sc-8925b530-11 jodYln">
                                                                <div class="sc-8925b530-3 sc-8925b530-4 itgktI gmerqK main_text">
                                                                    <input placeholder="프로젝트명을 입력해주세요" type="text" value=""
                                                                        name="projects.0.projectName" onKeyPress="if(event.keyCode == 13) return false;">
                                                                </div>
                                                                <div class="profile_order_control">
                                                                    <div class="sc-f84c63c4-0 bQQyYT">
                                                                        <div class="sc-f84c63c4-1 IPObo">
                                                                            <button class="profile_delete_button" disabled="" type="button">
                                                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                                                    width="24" height="24" fill="none"
                                                                                    viewBox="0 0 24 24">
                                                                                    <path fill="#C4C4C4" fill-rule="evenodd"
                                                                                        d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"
                                                                                        clip-rule="evenodd">
                                                                                    </path>
                                                                                </svg>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="sc-8925b530-3 sc-8925b530-13 gjMvbv jIBfZE project_textarea">
                                                                <textarea rows="1" name="projects.0.projectDetailInfo"
                                                                    placeholder="프로젝트 상세내용을 작성해주세요" class="sc-ef790bde-0 bBMxve"
                                                                    style="height: 24px;"></textarea>
                                                            </div>
                                                            <div>
                                                                <button type="button" class="btnProject">
                                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                                        width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                                        <path fill="#CC77FF" fill-rule="evenodd"
                                                                            d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                                            clip-rule="evenodd">
                                                                        </path>
                                                                    </svg> 프로젝트 추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <button type="button" class="btnCareer">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                    width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                    <path fill="#CC77FF" fill-rule="evenodd"
                                                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                        clip-rule="evenodd">
                                                    </path>
                                                </svg> 경력 추가
                                            </button>
                                        </div>
                                    </div>
                                    <!-- 경력 끝 -->

                                    <!-- 자격증 시작 -->
                                    <div id="certId">
                                        <div class="sc-fac3ceb6-1 lpsJjJ mb-3">
                                            <h1 class="sc-fac3ceb6-2 cZnnpE">
                                                자격증
                                            </h1>
                                            <div>
<!--                                             	<input type="hidden" value="" name="certVO"> -->
                                                <div class="sc-8925b530-5 btUHJH divCert">
                                                    <div class="sc-8925b530-8 dpMcbe">
                                                    </div>
                                                    <div class="sc-8925b530-3 sc-8925b530-7 kwbido dubyfY itgktI">
                                                        <div class="year_month_content certiYM">
                                                            <!-- value에 입력!!!!!! -->
                                                            <input class="year_content" placeholder="YYYY" maxlength="4" type="number" value="" name="certificate[0].certificateYear" onKeyPress="if(event.keyCode == 13) return false;">.
                                                            <input class="month_content" placeholder="MM" maxlength="2" type="number" value="" name="certificate[0].certificateMonth" onKeyPress="if(event.keyCode == 13) return false;">
                                                            <span> 취득년월</span>
                                                        </div>
                                                    </div>
                                                    <div class="sc-8925b530-6 jrTVsw">
                                                        <div class="sc-8925b530-11 jodYln">
                                                            <div class="sc-8925b530-3 sc-8925b530-4 kwbido gmerqK itgktI main_text">
                                                                <input placeholder="자격증명을 입력해주세요" type="text" value=""
                                                                    name="certificate[0].certificateName" onKeyPress="if(event.keyCode == 13) return false;">
                                                            </div>
                                                            <div class="profile_order_control certificate_order_control">
                                                                <div class="sc-f84c63c4-0 bQQyYT">
                                                                    <div class="sc-f84c63c4-1 IPObo">
                                                                        <button class="profile_down_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16" height="16" fill="none"
                                                                                viewBox="0 0 16 16">
                                                                                <path fill="#222" fill-rule="evenodd"
                                                                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                        <button class="profile_up_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16" height="16" fill="none"
                                                                                viewBox="0 0 24 24">
                                                                                <path fill="#000" fill-rule="evenodd"
                                                                                    d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                        <button class="profile_delete_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="24" height="24" fill="none"
                                                                                viewBox="0 0 24 24">
                                                                                <path fill="#C4C4C4" fill-rule="evenodd"
                                                                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="sc-8925b530-3 sc-8925b530-13 kwbido busjrW">
                                                            <input placeholder="자격증 번호를 입력해주세요" type="text" value="" name="certificate[0].certificateNo" onKeyPress="if(event.keyCode == 13) return false;">
                                                        </div>
                                                        <div class="sc-8925b530-3 sc-8925b530-13 kwbido jIBfZE">
                                                            <textarea name="certificate[0].certificatePublisher"
                                                                placeholder="발행처를 작성해주세요" class="sc-ef790bde-0 bBMxve"
                                                                onKeyPress="if(event.keyCode == 13) return false;" style="height: 24px;"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="button" class="btnCert">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                    width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                    <path fill="#CC77FF" fill-rule="evenodd"
                                                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                        clip-rule="evenodd">
                                                    </path>
                                                </svg> 자격증 추가
                                            </button>
                                        </div>
                                    </div>
                                    <!-- 자격증 끝 -->

                                    <!-- 경험 시작 -->
                                    <div id="expId">
                                        <div class="sc-fac3ceb6-1 lpsJjJ mb-3">
                                            <h1 class="sc-fac3ceb6-2 cZnnpE">
                                                경험
                                            </h1>
                                            <div class="sc-fac3ceb6-3 lehLjt">
                                                인턴, 대외활동, 아르바이트 등을 추가하여 풍부한 이력서를 완성해보세요!
                                            </div>
                                            <div>
<!--                                             	<input type="hidden" value="" name="etcHistories"> -->
                                                <div class="sc-8925b530-5 btUHJH divExp">
                                                    <div class="sc-8925b530-8 dpMcbe">
                                                    </div>
                                                    <div class="sc-8925b530-3 sc-8925b530-7 kwbido dubyfY">
                                                        <div class="sc-ec120752-0 eFleNN">
<!--                                                             <input class="hide" type="text" value="" name="etcHistories.0.startTime"> -->
<!--                                                             <input class="hide" type="text" value="" name="etcHistories.0.endTime"> -->
                                                            <div class="calendar_area">
                                                                <div class="calendar_box">
                                                                    <input class="calendar_year profile_input" maxlength="4"
                                                                        placeholder="YYYY" type="number" value="" name="etcHistories[0].etcYear1" onKeyPress="if(event.keyCode == 13) return false;">
                                                                    <span>.</span>
                                                                    <input class="calendar_month profile_input" maxlength="2"
                                                                        placeholder="MM" type="number" value="" name="etcHistories[0].etcMonth1" onKeyPress="if(event.keyCode == 13) return false;">
                                                                </div>
                                                                <span class="center_pa">-</span>
                                                                <div class="calendar_box">
                                                                    <input class="calendar_year profile_input" maxlength="4"
                                                                        placeholder="YYYY" type="number" value="" name="etcHistories[0].etcYear2" onKeyPress="if(event.keyCode == 13) return false;">
                                                                    <span>.</span>
                                                                    <input class="calendar_month profile_input" maxlength="2"
                                                                        placeholder="MM" type="number" value="" name="etcHistories[0].etcMonth2" onKeyPress="if(event.keyCode == 13) return false;">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="sc-ec120752-1 dOPJpb">
                                                            <input autocomplete="off" id="etcHistories.0_proceeding"
                                                                class="sc-250ec880-0 cXyXtM" type="checkbox"
                                                                name="etcHistories[0].proceeding">
                                                            <label for="etcHistories.0_proceeding" class="sc-1f8961c5-0 dDoUMI">
                                                                진행중
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="sc-8925b530-6 jrTVsw">
                                                        <div class="sc-8925b530-11 jodYln">
                                                            <div class="sc-8925b530-3 sc-8925b530-4 kwbido gmerqK main_text">
                                                                <input placeholder="활동명/이력제목을 입력해주세요" type="text" value="" name="etcHistories[0].etcName" onKeyPress="if(event.keyCode == 13) return false;">
                                                            </div>
                                                            <div class="profile_order_control experience_order_control">
                                                                <div class="sc-f84c63c4-0 bQQyYT">
                                                                    <div class="sc-f84c63c4-1 IPObo">
                                                                        <button class="profile_down_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16" height="16" fill="none"
                                                                                viewBox="0 0 16 16">
                                                                                <path fill="#222" fill-rule="evenodd"
                                                                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                        <button class="profile_up_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16" height="16" fill="none"
                                                                                viewBox="0 0 24 24">
                                                                                <path fill="#000" fill-rule="evenodd"
                                                                                    d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                        <button class="profile_delete_button" disabled="" type="button">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="24" height="24" fill="none"
                                                                                viewBox="0 0 24 24">
                                                                                <path fill="#C4C4C4" fill-rule="evenodd"
                                                                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="sc-8925b530-3 sc-8925b530-13 kwbido gdfveN">
                                                            <div class="sc-9d16a6ce-0 ccWDsy">
                                                                <div class="sc-9d16a6ce-2 loyGiv exp_gubun" id="exptypeFormHidden">
                                                                    이력구분 선택
                                                                    <input class="sc-9d16a6ce-3 dCMqUZ" type="text" name="drop_0_etcType">
                                                                    <button type="button">
                                                                        <span style="display: flex;">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="16" height="16" fill="none"
                                                                                viewBox="0 0 16 16">
                                                                                <path fill="#222" fill-rule="evenodd"
                                                                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"
                                                                                    clip-rule="evenodd">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                                    </button>
                                                                </div>
                                                                <div class="sc-9d16a6ce-1 kTboN selectbox_hide">
                                                                    <ul>
                                                                        <li>
                                                                            <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                <label for="expCategory9999" class="sc-1f8961c5-0 dDoUMII">선택안함</label>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                <label for="expCategory0" class="sc-1f8961c5-0 dDoUMII">인턴</label>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                <label for="expCategory1" class="sc-1f8961c5-0 dDoUMII">대외활동</label>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="sc-9d16a6ce-4 gSdGYk">
                                                                                <label for="expCategory2" class="sc-1f8961c5-0 dDoUMII">아르바이트</label>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>

                                                            <div class="text_wrap">
                                                                <input placeholder="관련기관을 입력해주세요" type="text" value=""
                                                                    name="etcHistories[0].etcOrganization" onKeyPress="if(event.keyCode == 13) return false;">
                                                            </div>
                                                        </div>
                                                        <div class="sc-8925b530-3 sc-8925b530-13 kwbido jIBfZE">
                                                            <textarea rows="1" name="etcHistories[0].etcInfo"
                                                                placeholder="상세내용/점수 및 수준을 작성해주세요"
                                                                class="sc-ef790bde-0 bBMxve"
                                                                style="height: 24px;"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="button" class="btnExp">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 20 20">
                                                    <path fill="#CC77FF" fill-rule="evenodd"
                                                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"
                                                        clip-rule="evenodd">
                                                    </path>
                                                </svg> 경험 추가
                                            </button>
                                        </div>
                                    </div>
                                    <!-- 경험 끝 -->
                                </div>
                            </div>

                                <!-- 하단에 고정된 저장하기 버튼 영역 시작 -->
                            <div class="sc-7310c7f3-6 bdvXQq">
                                <div class="bottom_wrap">
                                    <div class="bottom_btns">
                                    	<button type="button" class="autoComplete">자동완성</button>
                                        <button type="button" class="sc-4581d57a-0 emudnY">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="2 0 22 22">
                                                <path fill="#999" fill-rule="evenodd" d="M10 2.083c.46 0 .833.373.833.834v7.487l2.66-2.66a.833.833 0 1 1 1.179 1.179l-4.125 4.124a.833.833 0 0 1-1.178 0L5.244 8.923a.833.833 0 1 1 1.178-1.179l2.745 2.744V2.917c0-.46.373-.834.833-.834ZM16.25 15c0 .46-.373.833-.833.833H4.583A.833.833 0 0 1 3.75 15v-2.917a.833.833 0 0 0-1.667 0V15a2.5 2.5 0 0 0 2.5 2.5h10.834a2.5 2.5 0 0 0 2.5-2.5v-2.917a.833.833 0 0 0-1.667 0V15Z" clip-rule="evenodd"></path>
                                            </svg>
                                        </button>
<!--                                         <button type="button" class="sc-4581d57a-0 hiqqHs">미리보기</button> -->
                                        <!-- <button type="submit" class="sc-4581d57a-0 fiefFn rsmSubmit">저장하기</button> -->
                                        <button type="button" class="sc-4581d57a-0 fiefFn rsmSubmit">저장하기</button>
                                    </div>
                                </div>
                            </div>
                            <!-- 하단에 고정된 저장하기 버튼 영역 끝 -->
                        </div>
                        <sec:csrfInput/>
                    </form>
                </div>
            </div>   
        </div>
        <!-- OUR BLOG END -->
    </div>
    <!-- CONTENT END -->


<!-- JAVASCRIPT  FILES ========================================= --> 
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/jquery-3.6.0.min.js"></script><!-- JQUERY.MIN JS -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/popper.min.js"></script><!-- POPPER.MIN JS -->
<%-- <script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/bootstrap.min.js"></script><!-- BOOTSTRAP.MIN JS --> --%>
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/magnific-popup.min.js"></script><!-- MAGNIFIC-POPUP JS STICKY SIDEBAR -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/waypoints.min.js"></script><!-- WAYPOINTS JS -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/counterup.min.js"></script><!-- COUNTERUP JS -->

<%-- <script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/waypoints-sticky.min.js"></script><!-- STICKY HEADER --> --%>
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/isotope.pkgd.min.js"></script><!-- MASONRY  -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/imagesloaded.pkgd.min.js"></script><!-- MASONRY  -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/owl.carousel.min.js"></script><!-- OWL  SLIDER  -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/theia-sticky-sidebar.js"></script><!-- STICKY SIDEBAR  -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/lc_lightbox.lite.js" ></script><!-- IMAGE POPUP -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/bootstrap-select.min.js"></script><!-- Form js -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/dropzone.js"></script><!-- IMAGE UPLOAD  -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/jquery.scrollbar.js"></script><!-- scroller -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/bootstrap-datepicker.js"></script><!-- scroller -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/jquery.dataTables.min.js"></script><!-- Datatable -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/dataTables.bootstrap5.min.js"></script><!-- Datatable -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/chart.js"></script><!-- Chart -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/bootstrap-slider.min.js"></script><!-- Price range slider -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/swiper-bundle.min.js"></script><!-- Swiper JS -->
<script  src="${pageContext.request.contextPath }/resources/jobzillaassets/js/custom.js"></script><!-- CUSTOM FUCTIONS  -->

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<script>
/* 사이드바 js */

/* 사이드바 toggle */
//사진
let photoA = document.querySelector('.twm-nav-list-1 ul li:nth-child(2) a');
let photoBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(2) button'); //사이드바 토글버튼

//간단소개
let introA = document.querySelector('.twm-nav-list-1 ul li:nth-child(3) a');
let introBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(3) button');

//개발직무
let posiA = document.querySelector('.twm-nav-list-1 ul li:nth-child(4) a');
let posiBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(4) button');

//포트폴리오
let portfoA = document.querySelector('.twm-nav-list-1 ul li:nth-child(6) a');
let portBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(6) button');

//자격증
let certA = document.querySelector('.twm-nav-list-1 ul li:nth-child(9) a');
let certBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(9) button');

//경험
let expA = document.querySelector('.twm-nav-list-1 ul li:nth-child(10) a');
let expBtn = document.querySelector('.twm-nav-list-1 ul li:nth-child(10) button');

//이력서 공개 토글버튼
let resumeOnOffBtn = document.querySelector('.fHojSR dt button');

let default_career_exp_btn = document.querySelector('#default_career_exp'); //기본정보 경력 버튼
let default_career_new_btn  = document.querySelector('#default_career_new'); //기본정보 신입 버튼

resumeOnOffBtn.addEventListener('click', (e) => {
    toggleBtn_OnOff(resumeOnOffBtn);
});

//토글 버튼(사이드바, 이력서비공개) 하나로 묶어볼까싶어서..
// var toggleClassNm = $('button.kiOgwW');
// console.log(toggleClassNm);
// toggleClassNm[0].classList.contains('kiOgwW');

var careerSwitchFlag = true; //경력 버튼을 클릭했을 때의 flag

$(function(){
    $('#photoId').hide();
    $('#introId').hide();
    $('#posiId').hide();
    $('#portId').hide();
    $('#certId').hide();
    $('#expId').hide();
    $('.default_careerYears').hide();
});

//사이드바 토글 버튼
function sidebar_toggle(sidebar_a, sidebar_togglebtn){

    event.stopPropagation();

    //토글 on 할 때 <a class="gsDrxk">
    if(sidebar_a.classList.contains('gsDrxk')){ //a class 원래 이름
        sidebar_a.classList.remove('gsDrxk');
        sidebar_a.classList.add('ewWjoN'); //a class 바뀌는 이름
        sidebar_togglebtn.classList.remove('kiOgwW'); //토글버튼 회색
        sidebar_togglebtn.classList.add('fTWqAP'); //토글버튼 보라색
    }else { //토글 off 할 때 <a class="ewWjoN">
        sidebar_a.classList.remove('ewWjoN');
        sidebar_a.classList.add('gsDrxk');
        sidebar_togglebtn.classList.remove('fTWqAP'); //토글버튼 보라색
        sidebar_togglebtn.classList.add('kiOgwW'); //토글버튼 회색
    }
}

//이력서 공개,비공개 토글 버튼
function toggleBtn_OnOff(togglebtn){

    event.stopPropagation();
	
    //토글 on 할 때
	if(resumeOnOffBtn.classList.contains('kiOgwW')){
		togglebtn.classList.remove('kiOgwW');
		togglebtn.classList.add('fTWqAP');
        $('.profile_tooltip').html("이력서 공개");
	}else { //토글 off 할 때
		togglebtn.classList.add('kiOgwW');
        togglebtn.classList.remove('fTWqAP');
        $('.profile_tooltip').html("이력서 비공개");
	}
}

let photoFlag = true;
let introFlag = true;
let posiFlag = true;
let portFlag = true;
let certFlag = true;
let expFlag = true;
let default_careerYears_Flag = false;

var storage = null;

//사이드바에서 사진토글버튼 클릭했을 때
photoBtn.addEventListener('click', (e) => {

    if(photoFlag){
        sidebar_toggle(photoA, photoBtn);
        photoDiv_toggle();
        photoFlag = !photoFlag;
        // $('#photoId').attr("tabindex", -1).focus();
        console.log("photoFlag : ", photoFlag);
    }else {
        if($('.profile_image').children().length > 0) {
            if(confirm('작성하신 내용이 삭제됩니다.')){
                $('.profile_upload').removeClass('profile_image');

                sidebar_toggle(photoA, photoBtn);
				$('.profile_upload').html(storage);
                photoDiv_toggle();
                photoFlag = !photoFlag;
            }
        }else {
            sidebar_toggle(photoA, photoBtn);
            photoDiv_toggle();
            photoFlag = !photoFlag;
            console.log("photoFlag : ", photoFlag);
        }
    }
});
introBtn.addEventListener('click', (e) => {

    if(introFlag){
        sidebar_toggle(introA, introBtn);
        plusDiv(introFlag, "#introId");
        introFlag = !introFlag;
        // $('#introTextarea').focus();
        console.log("introFlag : ", introFlag);
    }else {
        if($("#introTextarea").val()){
            if(confirm('작성하신 내용이 삭제됩니다.')){
                $("#introTextarea").val("");

                sidebar_toggle(introA, introBtn);
                plusDiv(introFlag, "#introId");
                introFlag = !introFlag;
            }
        }else {
            sidebar_toggle(introA, introBtn);
            plusDiv(introFlag, "#introId");
            introFlag = !introFlag;
            console.log("introFlag : ", introFlag);
        }
    }
});
posiBtn.addEventListener('click', (e) => {

    console.log("posiBtnClick",$(".select_wrap"));
    
    if(posiFlag){
        sidebar_toggle(posiA, posiBtn);
        plusDiv(posiFlag, "#posiId");
        posiFlag = !posiFlag;
        // $('#posiId').attr("tabindex", -1).focus();
        console.log("posiFlag : ", posiFlag);
    }else {
        if($(".select_wrap").children().length > 0){
            if(confirm('작성하신 내용이 삭제됩니다.')){
                $(".select_wrap").children().remove();
                $(".position_opt:checked").prop("checked", false);
                selects(document.querySelector('.QMzFo'));

                sidebar_toggle(posiA, posiBtn);
                plusDiv(posiFlag, "#posiId");
                posiFlag = !posiFlag;
            }
        }else {
            sidebar_toggle(posiA, posiBtn);
            plusDiv(posiFlag, "#posiId");
            posiFlag = !posiFlag;
            console.log("posiFlag : ", posiFlag);
        }
    }
});
portBtn.addEventListener('click', (e) => {

    if(portFlag){
        sidebar_toggle(portfoA, portBtn);
        plusDiv(portFlag, "#portId");
        portFlag = !portFlag;
        // $('#portId').attr("tabindex", -1).focus();
        console.log("portFlag : ", portFlag);
    }else {
        if($('input[name$="title"]').val() 
            || $('input[name$="url"]').val() 
            || document.querySelector('.plusLink') != null 
            || document.querySelector('.plusFile') != null
        ) {
            if(confirm('작성하신 내용이 삭제됩니다.')) {

                //동적으로 추가된 url, 파일 div 삭제
                $('.kvoWdJ input').val("");
                if($('.kvoWdJ').length > 1) {
                	$('.kvoWdJ:not(:first)').parent().remove();
                }

                sidebar_toggle(portfoA, portBtn);
                plusDiv(portFlag, "#portId");
                portFlag = !portFlag;
                console.log("portFlag : ", portFlag);
            }
        }else {
            sidebar_toggle(portfoA, portBtn);
            plusDiv(portFlag, "#portId");
            portFlag = !portFlag;
            console.log("portFlag : ", portFlag);
        }
    }
});
certBtn.addEventListener('click', (e) => {

    if(certFlag){
        sidebar_toggle(certA, certBtn);
        plusDiv(certFlag, "#certId");
        certFlag = !certFlag;
        // $('#certId').attr("tabindex", -1).focus();
        console.log("certFlag : ", certFlag);
    }else {
        if($('input[name="certificate[0].certificateYear"]').val()
            || $('input[name="certificate[0].certificateMonth"]').val()
            || $('input[name="certificate[0].certificateName"]').val() 
            || $('textarea[name="certificate[0].certificatePublisher').val()
            || document.querySelector('.plusDivCert') != null
        ){
            if(confirm('작성하신 내용이 삭제됩니다.')) {

                $('.divCert input').val("");
                $('.divCert textarea').val("");

                //동적으로 추가된 자격증 div 삭제
                if($('.divCert').length > 1) {
                    $('.divCert:not(:first)').remove();
                }

                sidebar_toggle(certA, certBtn);
                plusDiv(certFlag, "#certId");
                certFlag = !certFlag;
                console.log("certFlag : ", certFlag);
            }
        }else {
            sidebar_toggle(certA, certBtn);
            plusDiv(certFlag, "#certId");
            certFlag = !certFlag;
            console.log("certFlag : ", certFlag);
        }
    }
});
expBtn.addEventListener('click', (e) => {

    if(expFlag){
        sidebar_toggle(expA, expBtn);
        plusDiv(expFlag, "#expId");
        expFlag = !expFlag;
        // $('#expId').attr("tabindex", -1).focus();
        console.log("expFlag : ", expFlag);
    }else {
        if($('input[name="etcHistories[0].etcYear1"]').val()
            || $('input[name="etcHistories[0].etcMonth1"]').val()
            || $('input[name="etcHistories[0].etcYear2"]').val()
            || $('input[name="etcHistories[0].etcMonth2"]').val()
            || $('#etcHistories\\.0_proceeding').is(':checked')
            || $('input[name="etcHistories[0].etcName"]').val()
            || $('input[name="etcHistories[0].etcOrganization"]').val()
            || $('textarea[name="etcHistories[0].etcInfo"]').val()
            || $('.exp_gubun')[0].innerText != '이력구분 선택'
            || document.querySelector('.plusDivExp') != null
        ){
            if(confirm('작성하신 내용이 삭제됩니다.')) {

                $('.divExp input').val("");
                $('.divExp textarea').val("");

                //정적 이력구분 선택 요소 부분 바꾸고 사이드바 토글버튼 off 했을 때 다시 되돌리려고
                var html = '';
                html += '이력구분 선택';
                html += '<input class="sc-9d16a6ce-3 dCMqUZ btnGubun" type="text"';
                html += '     name="drop_0_etcType">';
                html += '    <button type="button">';
                html += '        <span style="display: flex;">';
                html += '            <svg xmlns="http://www.w3.org/2000/svg"';
                html += '                 width="16" height="16" fill="none"';
                html += '                 viewBox="0 0 16 16">';
                html += '                <path fill="#222" fill-rule="evenodd"';
                html += '                      d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"';
                html += '                      clip-rule="evenodd">';
                html += '                </path>';
                html += '            </svg>';
                html += '        </span>';
                html += '    </button>';
                $('.exp_gubun')[0].innerHTML = html;

                //동적으로 추가된 경험 div 삭제
                if($('.divExp').length > 1) {
                    $('.divExp:not(:first)').remove();
                }
                
                //재직중 체크박스 해제
                $("#etcHistories\\.0_proceeding:checked").prop("checked", false);
                //재직중 체크박스 체크했을 때 뒤에 연도 disabled 되는거 취소
                $('input[name$="etcYear2"]').prop("disabled", false);
                $('input[name$="etcMonth2"]').prop("disabled", false);
                //재직중 체크박스 체크했을 때 뒤에 연도 색 바뀌는거 취소
                $('input[name$="etcYear2"]').closest('.calendar_box').removeClass('read_only');
                
                sidebar_toggle(expA, expBtn);
                plusDiv(expFlag, "#expId");
                expFlag = !expFlag;
                console.log("expFlag : ", expFlag);
            }
        }else {
            sidebar_toggle(expA, expBtn);
            plusDiv(expFlag, "#expId");
            expFlag = !expFlag;
            console.log("expFlag : ", expFlag);
        }
    }
});

function plusDiv(plusFlag, plusId){
	console.log("-------plusDiv-------");

    console.log(plusFlag, plusId);
	
	if(plusFlag){
		$(plusId).show();
		console.log("plusDiv on");
	}else{
        $(plusId).hide();
        console.log("plusDiv off");
	}
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 기본정보 js */

let default_info = document.querySelector('.hGezTT'); //기본정보 div

function photoDiv_toggle(){
    event.stopPropagation();

    //사진없을 때 <div class="hGezTT">
    if(default_info.classList.contains('hGezTT')) {
        default_info.classList.remove('hGezTT');
        default_info.classList.add('GnBbx');
        plusDiv(photoFlag, "#photoId");
    }else { //사진있을 때 <div class="GnBbx">
        default_info.classList.remove('GnBbx');
        default_info.classList.add('hGezTT');
        plusDiv(photoFlag, "#photoId");
    }
}

$('.rsm_title_textarea').keydown(function(){
    var titleCn = $(this).val();
    //실시간 글자 수 카운팅
    // $('.rsm_title_textarea').html("("+titleCn.length+" / 최대 30자");

    if(titleCn.length > 30){
        alert("제목은 30자 이하로 입력해주세요.");
        $(this).val(titleCn.substring(0,30));
    }
});
    
//이력서사진파일 저장할 때 formData에 넣을 것
var store_thumbnailfile;
/* 사진 업로드 시 */
var photoFile = $('#photoFile');

$('.profile_upload').on('change', '#photoFile', function(){
	
    console.log("이미지파일 클릭");

    $('.profile_upload').addClass('profile_image');
    
    var target = $(this);
    console.log(target);
    
    var thumbnailfile = target[0].files[0];
    store_thumbnailfile = thumbnailfile;
    console.log("파이이일 thumbnailfile", thumbnailfile);

    var thumbnailformData = new FormData();
    thumbnailformData.append('rsmPhoto', thumbnailfile);

    $.ajax({
        url: '/resume/uploadAjax',
        type: 'POST',
        beforeSend: function(xhr){ //데이터 전송 전, 헤더에 csrf값 설정
			xhr.setRequestHeader(header, token);
		},
        data: thumbnailformData,
        dataType: false,
        processData: false,
        contentType: false,
        success: function(data){
            console.log("savedName : ", data);

            var str = "";
            if(checkImageType(data)){	//이미지면 이미지태그를 이용하여 출력
                str += "<div>";
//                 str += "	<a href='/resume/displayFile?fileName=" + data +"'>";
                str += "	<a>";
                str += "		<img src='/resume/displayFile?fileName=" + getThumbnailName(data) +"'";
                str += "				class='profile_image'>";
                str += "	</a>";
                str += "		<span class='profileDelete'>X</span>";
                str += "</div>";

            }else {
                alert("지원하지 않는 확장자입니다. 다른 파일을 등록해주세요");
            }
            
            storage = $('.profile_upload').children().remove();
            $(".profile_upload").html(str);
        },
        error: function(data){
            console.log("실패",data);
        }
    });
});

// 업로드 한 파일의 'X'를 클릭했을 때
$(".profile_upload").on('click', 'span', function(){
	if(confirm("이미지를 삭제하시겠습니까?")) {
		$('.profile_upload').removeClass('profile_image');
		$('.profile_upload').html(storage);
	}
});

// 임시 파일로 썸네일 이미지 만들기
function getThumbnailName(fileName){
    //원본 파일명을 기준으로 s_를 붙여주기 위해 front와 end를 나눈다
    var front = fileName.substr(0,12);	// /2024/03/06/ 폴더
    var end = fileName.substr(12);	// 뒤 파일명
    
    console.log("front : " + front);
    console.log("end : " + end);
    
    return front + "s_" + end;
}

// 이미지 파일인지 확인
function checkImageType(fileName){
    // i : 정규표현식 플래그. 대소문자를 구분x
    var pattern = /jpg|gif|png|jpeg/i;
    return fileName.match(pattern);	//패턴과 일치하면 true(너 이미지구나?)
}

//이미지 파일인지 체크
function isImageFile(file){
    var ext = file.name.split('.').pop().toLowerCase();	//파일명에서 확장자를 가져온다
    return ($.inArray(ext, ['jpg','jpeg','png','gif']) === -1) ? false : true;
}


/* 신입, 경력 선택 */
$(function(){
    //현재 활성화된 버튼 추적
    var currentActiveBtn = null;

    $('.default_careerBtn').click(function(){
    
        //현재 클릭된 버튼이 활성화된 상태면 무시
        if(this === currentActiveBtn) {
            return;
        }

        //현재 활성화된 버튼이 있다면 버튼에서 active 클래스 제거
        if(currentActiveBtn !== null) {
            $(currentActiveBtn).removeClass('active');
        }

        //현재 클릭된 버튼에 active 클래스 추가, currentActiveBtn 업데이트
        $(this).addClass('active');
        currentActiveBtn = this;
        
    });
    
});

//경력선택했을때, 경력 입력란 활성화
default_career_exp_btn.addEventListener('click', (e) => {
    if(!default_careerYears_Flag){
        $('.default_careerYears').toggle();
        $('#default_careerYears').val('');
        $('input[name="careers.0.careerYear1"]').attr("disabled", false);
        $('input[name="careers.0.careerMonth1"]').attr("disabled", false);
        $('input[name="careers.0.careerYear2"]').attr("disabled", false);
        $('input[name="careers.0.careerMonth2"]').attr("disabled", false);
        $('input[name="careers.0_proceeding"]').attr("disabled", false);
        $('input[name="careers.0.companyName"]').attr("disabled", false);
        $('input[name="careers.0.divisionName"]').attr("disabled", false);
        $('input[name="careers.0.dutyName"]').attr("disabled", false);
        $('textarea[name="careers.0.jobDetailInfo"]').attr("disabled", false);
        $('input[name="projects.0.projectName"]').attr("disabled", false);
        $('textarea[name="projects.0.projectDetailInfo"]').attr("disabled", false);
        $('.btnProject').prop('disabled', false);
        $('.btnCareer').prop('disabled', false);
        default_careerYears_Flag = !default_careerYears_Flag;
    }
});

//신입 선택했을 때, 경력 입력란 비활성화
default_career_new_btn.addEventListener('click', (e) => {
    $('.default_careerYears').hide();
    $('input[name="careers.0.careerYear1"]').attr("disabled", true);
    $('input[name="careers.0.careerMonth1"]').attr("disabled", true);
    $('input[name="careers.0.careerYear2"]').attr("disabled", true);
    $('input[name="careers.0.careerMonth2"]').attr("disabled", true);
    $('input[name="careers.0_proceeding"]').attr("disabled", true);
    $('input[name="careers.0.companyName"]').attr("disabled", true);
    $('input[name="careers.0.divisionName"]').attr("disabled", true);
    $('input[name="careers.0.dutyName"]').attr("disabled", true);
    $('textarea[name="careers.0.jobDetailInfo"]').attr("disabled", true);
    $('input[name="projects.0.projectName"]').attr("disabled", true);
    $('textarea[name="projects.0.projectDetailInfo"]').attr("disabled", true);
    $('.btnProject').prop('disabled', true);
    $('.btnCareer').prop('disabled', true);
    default_careerYears_Flag = false;
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 간단소개 js */

//textarea 엔터 시 창 늘어남
function textareaScrollHeight(textareaNm) {
    $("textarea[name='"+textareaNm+"']").on("propertychange change keyup paste input", function(){
        $(this).height(1).height($(this).prop('scrollHeight'));
    });
}

textareaScrollHeight("rsmIntroduction"); //간단소개
textareaScrollHeight("careers.0.jobDetailInfo"); //경력-주요업무 및 성과 작성
textareaScrollHeight("projects.0.projectDetailInfo"); //경력-프로젝트 상세내용
textareaScrollHeight("etcHistories[0].etcInfo"); //경험-상세내용/점수 작성

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 개발직무 js */

var posi_selectbox_click = document.querySelector('.box_select'); //직무를 선택해주세요 div
var div_posi_selectbox = document.querySelector('.QMzFo'); //직무selectbox클릭 시 나오는

var opts = document.querySelector('inp_chk'); //직무 li, div class이름

var iconPosi = document.querySelector('.box_select > button > span > svg'); //직무를 선택해주세요 div안에 화살표

/* 셀렉트 영역 클릭 시 셀렉트박스 숨기기, 보이기 */
function selects(div_selectbox){
    event.stopPropagation();
    if(div_selectbox.classList.contains('selectbox_hide')){
        div_selectbox.classList.remove('selectbox_hide');
        div_selectbox.classList.add('selectbox_show');
    }else {
        div_selectbox.classList.remove('selectbox_show');
        div_selectbox.classList.add('selectbox_hide');
    }
}

//직무선택 셀렉트박스 클릭 시 하단에 셀렉트 ul 보이게
$('.box_select').on("click", function(){
    selects(div_posi_selectbox);
    iconToggle();
});

//직무선택 셀렉트박스 내에 화살표 아이콘 토글
function iconToggle() {
    if (div_posi_selectbox.classList.contains('selectbox_show')) {
        iconPosi.innerHTML = '<path fill="#000" fill-rule="evenodd" d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z" clip-rule="evenodd"></path>';
        iconPosi.setAttribute('viewBox', '0 0 24 24');
    } else {
        iconPosi.innerHTML = '<path fill="#222" fill-rule="evenodd" d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z" clip-rule="evenodd"></path>';
        iconPosi.setAttribute('viewBox', '0 0 16 16');
    }
}

/* 직무 체크박스에 체크했을 때 */
$(document).on('change', '.inp_chk .position_opt', function(){
    
    event.stopImmediatePropagation();
    console.log("--------------------------------");
    console.log("change...!");

    var thisId = $(this).attr('id'); //category
    var checked_opt_label = $(this).closest('li').find('label');
    var optName = checked_opt_label[0].innerText; //서버

    let select_html = "";
    var checked_opt = $(this).is(":checked");

    if(!checked_opt){
        console.log("체크한 옵션 체크해제");
        $('.'+thisId).remove();

    }else {
        select_html += '<div class="select_item '+thisId+'">';
        select_html += '	<span>';
        select_html += optName;
        select_html += '</span>';
        select_html += '	<button class="btn_close posiBtnClose '+thisId+'" type="button">';
        select_html += '        <span class="blind">'+optName+'</span>';
        select_html += '	</button>';
        select_html += '</div>';

        console.log("직무 옵션 체크");
        $('.select_wrap').append(select_html);
    }

});

/* 동적으로 생성한 X표시 눌렀을 때 */
$(document).on('click', '.posiBtnClose', function() {
    console.log("--------------------------------");

    var outOptName = $(this)[0].innerText;
    var btnSpanName = $(this).find('span')[0].innerHTML;

    if(outOptName == btnSpanName) {
        console.log("같을때");
        $("input[name='"+$(this)[0].classList[2]+"']").prop("checked", false);
        $(this).closest('.select_item').remove();

    }else {
        console.log("아닐때");
    }
    
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 기술스택 js */

/* 기술스택(사용언어) 검색어 자동완성 */
$('#techStack').autocomplete({
	source : function(request, response) { //source: 입력시 보일 목록, request: 입력한 값
// 		debugger;
        $.ajax({
            url : "/resume/langListAutoComplete"
            ,type : "get"
            ,dataType: "JSON"
	        ,data : {value: request.term}	// 검색 키워드
            ,success : function(data){
                response(
                    $.map(data.langList, function(item) {
                        return {
	                    	    label : item.cmmncdNm1   	// 목록에 표시되는 값
	                           , value : item.cmmncdNm1		// 선택 시 input창에 표시되는 값
	                           , idx : item.cmmncd          // index
                        };
                    })
	             );    //response
            }
            ,error : function(){
                alert("오류가 발생했습니다.");
                $(this);
            }
        });
	}
	,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
	}
	,minLength: 1// 최소 글자수
	,autoFocus : true // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
	,delay: 100	//autocomplete 딜레이 시간(ms)
	,select : function(evt, ui) { //검색 리스트에서 해당 필드 선택 시 select 이벤트 발생
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
// 		console.log(ui.item.label); //Java
		
// 		console.log($(this).val()); //j, $(this):input
		
		/* 기술스택 셀렉트박스에서 선택했을 때 */
        evt.stopImmediatePropagation();
        console.log("--------------------------------");
        console.log("기술스택 셀렉트박스 클릭클릭...!");

        var optName = ui.item.label;

        let select_html = "";
// 		console.log($(this));

        if(optName !== null){
            select_html += '<div class="select_item">';
            select_html += '    <span>'+optName+'</span>';
            select_html += '    <button class="btn_close langBtnClose" type="button">';
            select_html += '        <span class="blind">닫기</span>';
            select_html += '    </button>';
            select_html += '</div>';
            
            console.log("기술스택 옵션 선택");
            $('.kbmRUr').append(select_html);
		}else {
			alert("옵션을 선택해주세요");         	
        }
    }
    ,close: function(evt){
//     	console.log("기술스택close$(this)", $(this));
//     	console.log("기술스택close$(this).val()", $(this).val());
        $(this).val("");
    }
});

/* 동적으로 생성한 X표시 눌렀을 때 */
$(document).on('click', '.langBtnClose', function() {
    console.log("--------------------------------");

    var outOptName = $(this)[0].innerText;
    var btnSpanName = $(this).find('span')[0].innerHTML;

    if(outOptName == btnSpanName) {
        console.log("같을때");
        $(this).closest('.select_item').remove();

    }else {
        console.log("아닐때");
    }
    
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 포트폴리오 js */
/* 링크 추가 버튼 클릭 시 링크 div 추가 */
var urlNum = 1;

$(document).on('click', '.btnURL', function(){
    console.log("링크 추가 버튼 클릭");

    let html = "";
    html += '<div>';
    html += '    <div class="sc-ae33785f-1 kvoWdJ plusLink">';
    html += '        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none" viewBox="0 0 40 40">';
    html += '            <path fill="#F5F5F8" d="M40 20C40 8.954 31.046 0 20 0S0 8.954 0 20s8.954 20 20 20 20-8.954 20-20Z"></path>';
    html += '            <path fill="#222" fill-rule="evenodd"';
    html += '                d="M13.83 20.232a3 3 0 1 0 3 5.196l3.68-2.125 1 1.732-3.68 2.125a5 5 0 0 1-5-8.66l3.68-2.125 1 1.732-3.68 2.125Zm12.094-.054a3 3 0 1 0-3-5.196l-3.68 2.125-1-1.732 3.68-2.125a5 5 0 0 1 5 8.66l-3.68 2.125-1-1.732 3.68-2.125Zm-8.146 2.393 5.197-3-1-1.732-5.197 3 1 1.732Z"';
    html += '                clip-rule="evenodd">';
    html += '            </path>';
    html += '        </svg>';
    html += '        <div class="sc-ae33785f-2 dgATeV">';
    html += '            <div class="sc-ae33785f-5 hESxaU">';
    html += '                <input placeholder="URL 제목을 입력해주세요" type="text" name="links.'+urlNum+'.title" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '            <input placeholder="http://, https://를 포함해 작성해주세요" type="text" name="links.'+urlNum+'.url" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '        </div>';
    html += '        <button class="sc-ae33785f-4 bFuzuF">';
    html += '            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">';
    html += '                <path xmlns="http://www.w3.org/2000/svg" fill="#C4C4C4" fill-rule="evenodd" ';
    html += '                    d="M7 3h10v4h4v2h-2v12H5V9H3V7h4V3Zm2 4h6V5H9v2ZM7 9v10h10V9H7Zm2 7v-4h2v4H9Zm4-4v4h2v-4h-2Z"'; 
    html += '                    clip-rule="evenodd">';
    html += '                </path>';
    html += '            </svg>';
    html += '            <span class="blind">삭제</span>';
    html += '        </button>';
    html += '        <button type="button" class="sc-ae33785f-3 cwajQs">';
    html += '            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">';
    html += '                <path fill="#222" fill-rule="evenodd"';
    html += '                    d="M14.5 3a1 1 0 1 0 0 2h3.586l-4.793 4.793a1 1 0 0 0 1.414 1.414L19.5 6.414V10a1 1 0 1 0 2 0V5a2 2 0 0 0-2-2h-5Zm-9 3.5a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1V14a1 1 0 1 1 2 0v4.5a3 3 0 0 1-3 3h-11a3 3 0 0 1-3-3v-11a3 3 0 0 1 3-3H10a1 1 0 1 1 0 2H5.5Z"';
    html += '                    clip-rule="evenodd">';
    html += '                </path>';
    html += '            </svg>';
    html += '            <span class="blind">새창열기</span>';
    html += '        </button>';
    html += '    </div>';
    html += '</div>';

    $('.btnURL').before(html);
    
  	//URL 추가 버튼 클릭 시 생기는 휴지통
//     $(document).on('click', '.bFuzuF', function(){
//         $(this).parent().parent().remove();
//     });
  	
    urlNum++;

});

var urlStorage;

//새창열기
$(document).on('click', '.cwajQs', function(){
	url = $(this).parent().find('input[name$="url"]').val();
	window.open(url);
	
});

//URL 추가 버튼 클릭 시 생기는 휴지통 삭제
$(document).on('click', '.bFuzuF', function(){
    urlStorage = $(this).parent().parent().remove();
});

/* 파일 추가 버튼 클릭 시 파일 div 추가 */
var fileNum = 0;

$(document).on('click', '.btnFile', function(){
    console.log("파일 추가 버튼 클릭");

    let html = "";
    html += '<div>';
    html += '    <div class="sc-ae33785f-1 kvoWdJ plusFile">';
    html += '        <i class="far fa-file fa-lg" style="color: #222222;"></i>';
    html += '        <div class="sc-ae33785f-2 dgATeVV">';
    // html += '            <div class="sc-ae33785f-5 hESxaU">';
    html += '            <div class="sc-ae33785f-5 filebox">';
    html += '                <input class="upload-name" value="" placeholder="첨부파일" name="files.'+fileNum+'.rsmFileName" disabled>';
    html += '                <label for="files.'+fileNum+'.rsmFile">파일찾기</label>';
    html += '                <input type="file" id="files.'+fileNum+'.rsmFile" name="files.'+fileNum+'.rsmFile" >';
    html += '            </div>';
    html += '        </div>';
    html += '        <button class="sc-ae33785f-4 cwajQss">';
    html += '            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">';
    html += '                <path xmlns="http://www.w3.org/2000/svg" fill="#222222" fill-rule="evenodd" ';
    html += '                    d="M7 3h10v4h4v2h-2v12H5V9H3V7h4V3Zm2 4h6V5H9v2ZM7 9v10h10V9H7Zm2 7v-4h2v4H9Zm4-4v4h2v-4h-2Z"'; 
    html += '                    clip-rule="evenodd">';
    html += '                </path>';
    html += '            </svg>';
    html += '            <span class="blind">삭제</span>';
    html += '        </button>';
    html += '    </div>';
    html += '</div>';

    $('.btnURL').before(html);
    
    $(document).on('change', 'input[id="files.'+fileNum+'.rsmFile"]', function(){
        var fileName = $(this)[0].files[0].name;
        $(this).siblings(".upload-name").val(fileName);
    });
    
    //파일 추가 버튼 클릭 시 생기는 휴지통
    $(document).on('click', '.cwajQss', function(){
        $(this).parent().parent().remove();
    });
    
    fileNum++;
});

/* 동적으로 생성한 파일 div에 파일이름 넣기 */
$(document).on('change', 'input[id^="files"]', function(){
	
	// console.log("포트폴리오에 올린 파일을 보낼거랍니당~");
	
	// console.log("파일추가개수",$('.plusFile').length);
	
    var portformData = new FormData();
    
    let portFile = $('input[id^="files"]');
    console.log("포트폴리오파일잉ㄹ일",portFile);
    
    var portnamefile;
    
    if(portFile.length > 1){
        portnamefile = portFile[portFile.length - 1].files[0];
    }else {
        portnamefile = portFile[0].files[0];
    }
    console.log("포트폴리오 portnamefile", portnamefile);
    
    portformData.append("portnamefile", portnamefile);
    
    $.ajax({
        url: '/resume/uploadPortFileAjax',
        type: 'POST',
        beforeSend: function(xhr){ //데이터 전송 전, 헤더에 csrf값 설정
			xhr.setRequestHeader(header, token);
		},
        data: portformData,
        dataType: false,
        processData: false,
        contentType: false,
        success: function(data){
            console.log("savedName : ", data);
            // storage = $('.profile_upload').children().remove();
            // $(".upload-name").val(data);
        },
        error: function(data){
            console.log("꾸앙 실패ㅠㅠㅠ힝",data);
            alert("파일업로드에 실패했습니다. 다시 업로드해주세요")
        }
    });
});

//파일명 추출
function getOriginalName(fileName){
    if(checkImageType(fileName)){
        return;
    }
    var idx = fileName.indexOf("_") + 1;
    return fileName.substr(idx);
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 최종학력 js */

var edu_click = document.querySelector(`[data-role="selectBox"]`); //학력 구분 div
var div_edu_selectbox = document.querySelector('.jecWdQ'); //학력 구분 셀렉트박스
var selectEduOpt = document.querySelectorAll('.eduSelect'); //학력 구분 셀렉트박스 옵션

var eduGijun = document.querySelector('.eduGijun'); //기준학점 div
var div_full_selectbox = document.querySelector('.eduFullGrade'); //기준학점 셀렉트박스
var selectFullOpt = document.querySelectorAll('.fullSelect'); //기준학점 셀렉트박스 옵션

var body = document.querySelector('body');

//학력구분 선택
edu_click.addEventListener('click', function(){
    console.log("학력구분 클릭");
    selects(div_edu_selectbox);
});
/* 최종학력 학력구분 옵션선택 */
selectEduOpt.forEach(opt => {
    opt.addEventListener('click', function(){
        var selectedText = this.textContent;
        edu_click.textContent = selectedText;
        div_edu_selectbox.classList.add('selectbox_hide');
        div_edu_selectbox.classList.remove('selectbox_show');
    });
});

//기준학점 선택
eduGijun.addEventListener('click', function(){
    console.log("기준학점 클릭");
    console.log($(this).nextAll('.jecWdQ').first());
    div_full_selectbox = $(this).nextAll('.jecWdQ').first();
    selectsFull(div_full_selectbox);
});
function selectsFull(div_selectbox){
	console.log("직무 셀렉ㅂ가스");	
    event.stopPropagation();
    if(div_selectbox.hasClass('selectbox_hide')){
        div_selectbox.removeClass('selectbox_hide');
        div_selectbox.addClass('selectbox_show');
    }else {
        div_selectbox.removeClass('selectbox_show');
        div_selectbox.addClass('selectbox_hide');
    }
}
/* 최종학력 기준학점 옵션선택 */
selectFullOpt.forEach(opt => {
    opt.addEventListener('click', function(){
		console.log("기준학점 옵션클릭");    	
        var selectedText = this.textContent;
        eduGijun.textContent = selectedText;
        console.log(div_full_selectbox);
        div_full_selectbox.addClass('selectbox_hide');
        div_full_selectbox.removeClass('selectbox_show');
    });
});

/* selectbox 내&외 영역 클릭 시 selectbox 닫힘 함수 */
// function hideSelect(div_selectbox){
//     if(div_selectbox.classList.contains('selectbox_show')){
//         div_selectbox.classList.add('selectbox_hide');
//         div_selectbox.classList.remove('selectbox_show');
//     }
// }
/* selectbox 내&외 영역 클릭 시 selectbox 닫힘 함수 제이쿼리버전*/
// function hideSelectJ(div_selectbox){
//     if(div_selectbox.hasClass('selectbox_show')){
//         div_selectbox.addClass('selectbox_hide');
//         div_selectbox.removeClass('selectbox_show');
//     }
// }

body.addEventListener('click', function(){
//     hideSelect(div_edu_selectbox);
//     hideSelectJ(div_full_selectbox);
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 경력 js */

/* 재직중 버튼 체크 시 뒤에 연도 disabled */
//체크박스 체크 시 뒤에 연도,월 비활성
function handleCheckboxChange() {

    console.log("-----------------------");
    
    console.log("handleCheckboxChange 함수 탐");

    var inputCheckboxNm = $(this).attr('name');
    console.log(inputCheckboxNm);

    var divCalendar = $(this).parent().prev('.eFleNN').find('.calendar_area');
    console.log("divCalendar", divCalendar);

    var divCalendar_box2 = divCalendar.find('.calendar_box:eq(1)');
    console.log("divCalendar_box2",divCalendar_box2);

    var checked_opt = $(this).is(":checked");
    console.log("^^",checked_opt);
    
    if(checked_opt) {
        console.log("checkbox on");
        divCalendar_box2.addClass("read_only");
        divCalendar_box2.find('input').prop('disabled', true);
    } else {
        console.log("checkbox off");
        divCalendar_box2.removeClass("read_only");
        divCalendar_box2.find('input').prop('disabled', false);
    }
}

$(document).on('change', 'input[id^="careers"]', handleCheckboxChange);
$(document).on('change', 'input[id^="etcHistories"]', handleCheckboxChange);


/* 경력 추가 버튼 클릭 시 경력 div 추가 */
//경럭추가 버튼
var careerNum = 1;

$(document).on('click', '.btnCareer', function(){
    console.log("경력 추가 버튼 클릭");

    let html = "";
    html += '<div class="divCareer">';
    html += '<div class="sc-8925b530-5 btUHJH" id="careerPlus'+careerNum+'">';
    html += '    <div class="sc-8925b530-8 dpMcbe">';
    html += '    </div>';
    html += '    <div class="sc-8925b530-3 sc-8925b530-7 itgktI dubyfY">';
    html += '        <div class="sc-ec120752-0 eFleNN">';
    html += '            <input class="hide" type="text" value="" name="careers.'+careerNum+'.startTime">';
    html += '            <input class="hide" type="text" value="" name="careers.'+careerNum+'.endTime">';
    html += '            <div class="calendar_area">';
    html += '                <div class="calendar_box">';
    html += '                    <input class="calendar_year profile_input" maxlength="4" placeholder="YYYY" type="number" value="" name="careers.'+careerNum+'.careerYear1" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                    <span>.</span>';
    html += '                    <input class="calendar_month profile_input" maxlength="2" placeholder="MM" type="number" value="" name="careers.'+careerNum+'.careerMonth1" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                </div>';
    html += '                <span class="center_pa">-</span>';
    html += '                <div class="calendar_box">';
    html += '                    <input class="calendar_year profile_input" maxlength="4" placeholder="YYYY" type="number" value="" name="careers.'+careerNum+'.careerYear2" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                    <span>.</span>';
    html += '                    <input class="calendar_month profile_input" maxlength="2" placeholder="MM" type="number" value="" name="careers.'+careerNum+'.careerMonth2" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-ec120752-1 dOPJpb">';
    html += '            <input autocomplete="off" id="careers.'+careerNum+'_proceeding" class="sc-250ec880-0 cXyXtM" type="checkbox" name="careers.'+careerNum+'_proceeding">';
    html += '            <label for="careers.'+careerNum+'_proceeding" class="sc-1f8961c5-0 dDoUMI">재직중</label>';
    html += '        </div>';
    html += '    </div>';
    html += '    <div class="sc-8925b530-6 jrTVsw">';
    html += '        <div class="sc-8925b530-11 jodYln">';
    html += '            <div class="sc-8925b530-3 sc-8925b530-4 itgktI gmerqK flex_main_text">';
    html += '                <input placeholder="회사명을 입력해주세요" type="text" value="" name="careers.'+careerNum+'.companyName" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '            <div class="profile_order_control company_order_control">';
    html += '                <div class="sc-f84c63c4-0 bQQyYT">';
    html += '                    <div class="sc-f84c63c4-1 IPObo">';
    html += '                        <button class="profile_down_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">';
    html += '                                <path fill="#222" fill-rule="evenodd"';
    html += '                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_up_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">';
    html += '                                <path fill="#000" fill-rule="evenodd"';
    html += '                                    d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_delete_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">';
    html += '                                <path fill="#C4C4C4" fill-rule="evenodd"';
    html += '                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                    </div>';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido busjrW diviRed">';
    html += '            <input placeholder="부서명" type="text" value=""';
    html += '                name="careers.'+careerNum+'.divisionName" onKeyPress="if(event.keyCode == 13) return false;"/>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido dGKLjQ">';
    html += '            <input placeholder="직급/직책" type="text" value="" ';
    html += '                name="careers.'+careerNum+'.dutyName" onKeyPress="if(event.keyCode == 13) return false;"/>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 gjMvbv jIBfZE">';
    html += '            <textarea rows="1" placeholder="주요업무 및 성과를 작성해주세요"';
    html += '                name="careers.'+careerNum+'.jobDetailInfo" class="sc-ef790bde-0 bBMxve" style="height: 24px;"></textarea>';
    html += '        </div>';
    html += '    </div>';
    html += '</div>';
    html += '<div class="sc-8925b530-5 btUHJH">';
    html += '    <div class="dpMcbe-2"></div>';
    html += '    <div class="dubyfY"></div>';
    html += '    <div class="sc-8925b530-6 jrTVsw">';
    html += '        <div class="sc-8925b530-11 jodYln">';
    html += '            <div class="sc-8925b530-3 sc-8925b530-4 itgktI gmerqK main_text">';
    html += '                <input placeholder="프로젝트명을 입력해주세요" type="text" value="" name="projects.'+careerNum+'.projectName" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '        <div class="profile_order_control">';
    html += '            <div class="sc-f84c63c4-0 bQQyYT">';
    html += '                <div class="sc-f84c63c4-1 IPObo">';
    html += '                        <button class="profile_delete_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="24" height="24" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#C4C4C4" fill-rule="evenodd"';
    html += '                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                    </div>';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 gjMvbv jIBfZE project_textarea">';
    html += '            <textarea rows="1" name="projects.'+careerNum+'.projectDetailInfo"';
    html += '                placeholder="프로젝트 상세내용을 작성해주세요" class="sc-ef790bde-0 bBMxve"';
    html += '                style="height: 24px;"></textarea>';
    html += '        </div>';
    html += '        <div>';
    html += '            <button type="button" class="btnProject" id="projectBtnId'+careerNum+'">';
    html += '                <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                    width="20" height="20" fill="none" viewBox="0 0 20 20">';
    html += '                    <path fill="#CC77FF" fill-rule="evenodd"';
    html += '                        d="M10 20c5.523 0 10-4.477 10-10S15.523 0 10 0 0 4.477 0 10s4.477 10 10 10ZM9 9V5.5h2V9h3.5v2H11v3.5H9V11H5.5V9H9Z"';
    html += '                        clip-rule="evenodd">';
    html += '                    </path>';
    html += '                </svg> 프로젝트 추가';
    html += '            </button>';
    html += '        </div>';
    html += '    </div>';
    html += '</div>';
    html += '</div>';

    $('.divCareer').last().after(html);
    
    textareaScrollHeight("careers." + careerNum + ".jobDetailInfo");
    textareaScrollHeight("projects." + careerNum + ".projectDetailInfo");
    
  	//경력 가장 바깥 div
    var divCareerParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
    //경력 화살표, 휴지통 부분 div
    var orderControl = divCareerParent.find('.company_order_control');
    console.log("orderControl",orderControl);
    // console.log("first:",divCareerParent.find('.company_order_control:first'));
    
    orderControl.each(function(index){
        console.log("index", index);
        console.log("this", $(this));
        
        //맨 처음 화살표, 휴지통 버튼
        if(index === 0 ){
            $(this).find('.profile_down_button').prop('disabled', false);
            $(this).find('.profile_up_button').prop('disabled', true);
            $(this).find('.profile_delete_button').prop('disabled', true);
        }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
            $(this).find('.profile_down_button').prop('disabled', true);
            $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
        }else { //중간에 있는 화살표, 휴지통 버튼
            $(this).find('button').prop('disabled', false);
        }
    });

    $(document).off('click', '.profile_delete_button').on('click', '.profile_delete_button', function(){

        console.log("-------------------------------------");
        var divCareer = $(this).closest('.divCareer');
        console.log("지금 클릭한 delete 버튼이 포함된 div",divCareer);

        //경력 가장 바깥 div
        var divCareerParent = divCareer.parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');

        divCareer.remove();

        //경력 화살표, 휴지통 부분 div
        var orderControl = divCareerParent.find('.company_order_control');
        console.log("orderControl",orderControl);

        orderControl.each(function(index){
            console.log("index", index);
            console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_up_button').on('click', '.profile_up_button', function(){

        console.log("-------------------------------------");
        console.log("지금 클릭한 up 버튼이 있는 div",$(this).closest('.divCareer'));

        var index = $(this).closest('.divCareer').prevAll('.divCareer').length;
        console.log("up index",index);

        if (index === 0) return;

        $(this).closest('.divCareer').insertBefore($('.divCareer').eq(index - 1));

        //경력 가장 바깥 div
        var divCareerParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
        //경력 화살표, 휴지통 부분 div
        var orderControl = divCareerParent.find('.company_order_control');
        console.log("orderControl",orderControl);

        orderControl.each(function(index){
            console.log("index", index);
            console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_down_button').on('click', '.profile_down_button', function(){

        console.log("-------------------------------------");
        console.log("지금 클릭한 down 버튼이 있는 div",$(this).closest('.divCareer'));

        var index = $(this).closest('.divCareer').prevAll('.divCareer').length;
        console.log("down index",index);

        var parent = $(this).closest('.divCareer');
        var next = parent.next('.divCareer');

        if(next.length !== 0) {
            parent.insertAfter(next);

            //경력 가장 바깥 div
            var divCareerParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
            //경력 화살표, 휴지통 부분 div
            var orderControl = divCareerParent.find('.company_order_control');
            console.log("orderControl",orderControl);
            
            orderControl.each(function(index){
                console.log("index", index);
                console.log("this", $(this));
                
                //맨 처음 화살표, 휴지통 버튼
                if(index === 0 ){
                    $(this).find('.profile_down_button').prop('disabled', false);
                    $(this).find('.profile_up_button').prop('disabled', true);
                    $(this).find('.profile_delete_button').prop('disabled', true);
                }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                    $(this).find('.profile_down_button').prop('disabled', true);
                    $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
                }else { //중간에 있는 화살표, 휴지통 버튼
                    $(this).find('button').prop('disabled', false);
                }
            });
        }
    });
    
    careerNum++;

});


/* 프로젝트 추가 버튼 클릭 시 프로젝트 div 추가 */
//기존 프로젝트추가 버튼
var projectNum = 1;

$(document).on('click', '.btnProject', function(){

    var projectContainer = $(this).closest('.btUHJH');
    var btnProjectPlus = projectContainer.prevObject;
    
    let html = "";
    html += '<div class="sc-8925b530-5 btUHJH">';
    // html += '    <div class="dpMcbe-2"></div>';
    // html += '    <div class="dubyfY"></div>';
    html += '    <div class="sc-8925b530-6 jrTVsw">';
    html += '        <div class="sc-8925b530-11 jodYln">';
    html += '            <div class="sc-8925b530-3 sc-8925b530-4 itgktI gmerqK main_text">';
    html += '                <input placeholder="프로젝트명을 입력해주세요" type="text" value="" name="projects.'+projectNum+'.projectName" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '        <div class="profile_order_control">';
    html += '            <div class="sc-f84c63c4-0 bQQyYT">';
    html += '                <div class="sc-f84c63c4-1 IPObo">';
    html += '                        <button class="project_delete_button" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="24" height="24" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#C4C4C4" fill-rule="evenodd"';
    html += '                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                    </div>';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 gjMvbv jIBfZE">';
    html += '            <textarea rows="1" name="projects.'+projectNum+'.projectDetailInfo"';
    html += '                placeholder="프로젝트 상세내용을 작성해주세요" class="sc-ef790bde-0 bBMxve"';
    html += '                style="height: 24px;"></textarea>';
    html += '        </div>';
    html += '    </div>';
    html += '</div>';

    console.log("프로젝트 추가 버튼 클릭");
    btnProjectPlus.before(html);
    textareaScrollHeight("projects." + projectNum + ".projectDetailInfo");
    
    $(document).off('click', '.project_delete_button').on('click', '.project_delete_button', function(){

        console.log("-------------------------------------");
        var divProject = $(this).closest('.sc-8925b530-5 .btUHJH');
        console.log("지금 클릭한 delete 버튼이 포함된 div",divProject);

        divProject.remove();
    });
    
    projectNum++;
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 자격증 js */

/* 자격증 추가 버튼 클릭 시 자격증 div 추가 */
//기존 지격증추가 버튼
var btnCert = document.querySelector('.btnCert');
var certiNum = 1;

btnCert.addEventListener('click', function(){
	console.log("-------------------------------------");
	
	console.log("자격증 추가 버튼 클릭");

    let html = "";
    html += '<div class="sc-8925b530-5 btUHJH divCert plusDivCert">';
    html += '    <div class="sc-8925b530-8 dpMcbe">';
    html += '    </div>';
    html += '    <div class="sc-8925b530-3 sc-8925b530-7 kwbido dubyfY itgktI">';
    html += '        <div class="year_month_content certiYM">';
    html += '            <!-- value에 입력!!!!!! -->';
    html += '            <input class="year_content" placeholder="YYYY" maxlength="4" type="number" value="" name="certificate['+certiNum+'].certificateYear" onKeyPress="if(event.keyCode == 13) return false;">.';
    html += '            <input class="month_content" placeholder="MM" maxlength="2" type="number" value="" name="certificate['+certiNum+'].certificateMonth" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            <span> 취득년월</span>';
    html += '        </div>';
    html += '    </div>';
    html += '    <div class="sc-8925b530-6 jrTVsw">';
    html += '        <div class="sc-8925b530-11 jodYln">';
    html += '            <div class="sc-8925b530-3 sc-8925b530-4 kwbido gmerqK itgktI main_text">';
    html += '                <input placeholder="자격증명을 입력해주세요" type="text" value=""';
    html += '                    name="certificate['+certiNum+'].certificateName" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '            <div class="profile_order_control certificate_order_control">';
    html += '                <div class="sc-f84c63c4-0 bQQyYT">';
    html += '                    <div class="sc-f84c63c4-1 IPObo">';
    html += '                        <button class="profile_down_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="16" height="16" fill="none"';
    html += '                                viewBox="0 0 16 16">';
    html += '                                <path fill="#222" fill-rule="evenodd"';
    html += '                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_up_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="16" height="16" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#000" fill-rule="evenodd"';
    html += '                                    d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_delete_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="24" height="24" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#C4C4C4" fill-rule="evenodd"';
    html += '                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                    </div>';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido busjrW">';
    html += '            <input placeholder="자격증 번호를 입력해주세요" type="text" value=""';
    html += '                    name="certificate['+certiNum+'].certificateNo" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido jIBfZE">';
    html += '            <textarea name="certificate['+certiNum+'].certificatePublisher"';
    html += '                placeholder="발행처를 작성해주세요" class="sc-ef790bde-0 bBMxve"';
    html += '                onKeyPress="if(event.keyCode == 13) return false;" style="height: 24px;"></textarea>';
    html += '        </div>';
    html += '    </div>';
    html += '</div>';

    $('.divCert').last().after(html);

    //자격증 가장 바깥 div
    var divCertParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
    //자격증 화살표, 휴지통 부분 div
    var orderControl = divCertParent.find('.certificate_order_control');
    console.log("orderControl",orderControl);
    // console.log("first:",divCertParent.find('.certificate_order_control:first'));
    
    orderControl.each(function(index){
        console.log("index", index);
        console.log("this", $(this));
        
        //맨 처음 화살표, 휴지통 버튼
        if(index === 0 ){
            $(this).find('.profile_down_button').prop('disabled', false);
            $(this).find('.profile_up_button').prop('disabled', true);
            $(this).find('.profile_delete_button').prop('disabled', true);
        }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
            $(this).find('.profile_down_button').prop('disabled', true);
            $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
        }else { //중간에 있는 화살표, 휴지통 버튼
            $(this).find('button').prop('disabled', false);
        }
    });
    
    $(document).off('click', '.profile_delete_button').on('click', '.profile_delete_button', function(){

        console.log("-------------------------------------");
        var divCert = $(this).closest('.divCert');
        console.log("지금 클릭한 delete 버튼이 포함된 div",divCert);
        
        //자격증 가장 바깥 div
        var divCertParent = divCert.parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
        
        divCert.remove();

        //자격증 화살표, 휴지통 부분 div
        var orderControl = divCertParent.find('.certificate_order_control');
        console.log("orderControl",orderControl);
        
        orderControl.each(function(index){
            console.log("index", index);
            console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_up_button').on('click', '.profile_up_button', function(){

        console.log("-------------------------------------");
        console.log("지금 클릭한 up 버튼이 있는 div",$(this).closest('.divCert'));
        
        var index = $(this).closest('.divCert').prevAll('.divCert').length;
        console.log("up index",index);

        if (index === 0) return;
        
        $(this).closest('.divCert').insertBefore($('.divCert').eq(index - 1));

        //자격증 가장 바깥 div
        var divCertParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
        //자격증 화살표, 휴지통 부분 div
        var orderControl = divCertParent.find('.certificate_order_control');
        console.log("orderControl",orderControl);
        
        orderControl.each(function(index){
            console.log("index", index);
            console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_down_button').on('click', '.profile_down_button', function(){

        console.log("-------------------------------------");
        console.log("지금 클릭한 down 버튼이 있는 div",$(this).closest('.divCert'));

        var index = $(this).closest('.divCert').prevAll('.divCert').length;
        console.log("down index",index);

        var parent = $(this).closest('.divCert');
        var next = parent.next('.divCert');

        if(next.length !== 0) {
            parent.insertAfter(next);

            //자격증 가장 바깥 div
            var divCertParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
            //자격증 화살표, 휴지통 부분 div
            var orderControl = divCertParent.find('.certificate_order_control');
            console.log("orderControl",orderControl);
            
            orderControl.each(function(index){
                console.log("index", index);
                console.log("this", $(this));
                
                //맨 처음 화살표, 휴지통 버튼
                if(index === 0 ){
                    $(this).find('.profile_down_button').prop('disabled', false);
                    $(this).find('.profile_up_button').prop('disabled', true);
                    $(this).find('.profile_delete_button').prop('disabled', true);
                }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                    $(this).find('.profile_down_button').prop('disabled', true);
                    $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
                }else { //중간에 있는 화살표, 휴지통 버튼
                    $(this).find('button').prop('disabled', false);
                }
            });
        }
    });
    
    certiNum++;

});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 경험 js */

var exp_click = document.querySelector('.exp_gubun'); //이력구분 선택 div
var div_exp_selectbox = document.querySelector('.kTboN'); //이력구분 셀렉트박스
var selectExpOpt = document.querySelectorAll('.dDoUMII'); //이력구분 셀렉트박스 옵션

/* 이력구분 선택 div 클릭했을 때 셀렉트 박스 숨기기, 보이기 */
exp_click.addEventListener('click', function(){
    selects(div_exp_selectbox);
});

/* 경험 이력구분  옵션선택 */
selectExpOpt.forEach(opt => {
    opt.addEventListener('click', function(){
        var selectedText = this.textContent;
        exp_click.textContent = selectedText;
        div_exp_selectbox.classList.add('selectbox_hide');
        div_exp_selectbox.classList.remove('selectbox_show');
    });
});

body.addEventListener('click', function(){
//     hideSelect(div_exp_selectbox);
});

/* 경험 추가 버튼 클릭 시 경험 div 추가 */
//경험추가 버튼
var expNum = 1;

$(document).on('click', '.btnExp', function(){
	console.log("경험 추가 버튼 클릭");

    let html = "";
    html += '<div class="sc-8925b530-5 btUHJH divExp plusDivExp">';
    html += '    <div class="sc-8925b530-8 dpMcbe">';
    html += '    </div>';
    html += '    <div class="sc-8925b530-3 sc-8925b530-7 kwbido dubyfY">';
    html += '        <div class="sc-ec120752-0 eFleNN">';
//     html += '            <input class="hide" type="text" value="" name="etcHistories.'+expNum+'.startTime">';
//     html += '                <input class="hide" type="text" value="" name="etcHistories.'+expNum+'.endTime">';
    html += '            <div class="calendar_area">';
    html += '                <div class="calendar_box">';
    html += '                    <input class="calendar_year profile_input" maxlength="4"';
    html += '                        placeholder="YYYY" type="number" value="" name="etcHistories['+expNum+'].etcYear1" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                    <span>.</span>';
    html += '                    <input class="calendar_month profile_input" maxlength="2"';
    html += '                        placeholder="MM" type="number" value="" name="etcHistories['+expNum+'].etcMonth1" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                </div>';
    html += '                <span class="center_pa">-</span>';
    html += '                <div class="calendar_box">';
    html += '                    <input class="calendar_year profile_input" maxlength="4"';
    html += '                        placeholder="YYYY" type="number" value="" name="etcHistories['+expNum+'].etcYear2" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                    <span>.</span>';
    html += '                    <input class="calendar_month profile_input" maxlength="2"';
    html += '                        placeholder="MM" type="number" value="" name="etcHistories['+expNum+'].etcMonth2" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-ec120752-1 dOPJpb">';
    html += '            <input autocomplete="off" id="etcHistories.'+expNum+'_proceeding"';
    html += '                class="sc-250ec880-0 cXyXtM" type="checkbox"';
    html += '                name="etcHistories['+expNum+'].proceeding">';
    html += '            <label for="etcHistories.'+expNum+'_proceeding" class="sc-1f8961c5-0 dDoUMI">';
    html += '                진행중';
    html += '            </label>';
    html += '        </div>';
    html += '    </div>';
    html += '    <div class="sc-8925b530-6 jrTVsw">';
    html += '        <div class="sc-8925b530-11 jodYln">';
    html += '            <div class="sc-8925b530-3 sc-8925b530-4 kwbido gmerqK main_text">';
    html += '                <input placeholder="활동명/이력제목을 입력해주세요" type="text" value="" name="etcHistories['+expNum+'].etcName" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '            <div class="profile_order_control experience_order_control">';
    html += '                <div class="sc-f84c63c4-0 bQQyYT">';
    html += '                    <div class="sc-f84c63c4-1 IPObo">';
    html += '                        <button class="profile_down_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="16" height="16" fill="none"';
    html += '                                viewBox="0 0 16 16">';
    html += '                                <path fill="#222" fill-rule="evenodd"';
    html += '                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_up_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="16" height="16" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#000" fill-rule="evenodd"';
    html += '                                    d="M3.793 16.207a1 1 0 0 1 0-1.414l7.5-7.5a1 1 0 0 1 1.414 0l7.5 7.5a1 1 0 0 1-1.414 1.414L12 9.414l-6.793 6.793a1 1 0 0 1-1.414 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                        <button class="profile_delete_button" disabled="" type="button">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="24" height="24" fill="none"';
    html += '                                viewBox="0 0 24 24">';
    html += '                                <path fill="#C4C4C4" fill-rule="evenodd"';
    html += '                                    d="M6.25 5.5a3 3 0 0 1 3-3h5.5a3 3 0 0 1 3 3v1.25H21a1 1 0 1 1 0 2h-1.25v9.75a3 3 0 0 1-3 3h-9.5a3 3 0 0 1-3-3V8.75H3a1 1 0 0 1 0-2h3.25V5.5Zm2 1.25h7.5V5.5a1 1 0 0 0-1-1h-5.5a1 1 0 0 0-1 1v1.25Zm-2 2v9.75a1 1 0 0 0 1 1h9.5a1 1 0 0 0 1-1V8.75H6.25Zm3.5 3a1 1 0 0 1 1 1v2.5a1 1 0 1 1-2 0v-2.5a1 1 0 0 1 1-1Zm5.5 1a1 1 0 1 0-2 0v2.5a1 1 0 1 0 2 0v-2.5Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </button>';
    html += '                    </div>';
    html += '                </div>';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido gdfveN">';
    html += '            <div class="sc-9d16a6ce-0 ccWDsyP">';
    html += '                <div class="sc-9d16a6ce-2 loyGiv exp_gubun" id="exptypeFormHidden">';
    html += '이력구분 선택';
    html += '                    <input class="sc-9d16a6ce-3 dCMqUZ btnGubun" type="text"';
    html += '                        name="drop_'+expNum+'_etcType">';
    html += '                    <button type="button">';
    html += '                        <span style="display: flex;">';
    html += '                            <svg xmlns="http://www.w3.org/2000/svg"';
    html += '                                width="16" height="16" fill="none"';
    html += '                                viewBox="0 0 16 16">';
    html += '                                <path fill="#222" fill-rule="evenodd"';
    html += '                                    d="M13.472 5.195c.26.26.26.683 0 .943l-5 5a.667.667 0 0 1-.943 0l-5-5a.667.667 0 1 1 .943-.943L8 9.724l4.529-4.529c.26-.26.682-.26.943 0Z"';
    html += '                                    clip-rule="evenodd">';
    html += '                                </path>';
    html += '                            </svg>';
    html += '                        </span>';
    html += '                    </button>';
    html += '                </div>';
    html += '                <div class="sc-9d16a6ce-1 kTboN selectbox_hide">';
    html += '                    <ul>';
    html += '                        <li>';
    html += '                            <div class="sc-9d16a6ce-4 gSdGYk">';
    html += '                                <label for="expCategory9999" class="sc-1f8961c5-0 dDoUMIIP">선택안함</label>';
    html += '                            </div>';
    html += '                        </li>';
    html += '                        <li>';
    html += '                            <div class="sc-9d16a6ce-4 gSdGYk">';
    html += '                                <label for="expCategory0" class="sc-1f8961c5-0 dDoUMIIP">인턴</label>';
    html += '                            </div>';
    html += '                        </li>';
    html += '                        <li>';
    html += '                            <div class="sc-9d16a6ce-4 gSdGYk">';
    html += '                                <label for="expCategory1" class="sc-1f8961c5-0 dDoUMIIP">대외활동</label>';
    html += '                            </div>';
    html += '                        </li>';
    html += '                        <li>';
    html += '                            <div class="sc-9d16a6ce-4 gSdGYk">';
    html += '                                <label for="expCategory2" class="sc-1f8961c5-0 dDoUMIIP">아르바이트</label>';
    html += '                            </div>';
    html += '                        </li>';
    html += '                    </ul>';
    html += '                </div>';
    html += '            </div>';
    html += '            <div class="text_wrap">';
    html += '                <input placeholder="관련기관을 입력해주세요" type="text" value=""';
    html += '                    name="etcHistories['+expNum+'].etcOrganization" onKeyPress="if(event.keyCode == 13) return false;">';
    html += '            </div>';
    html += '        </div>';
    html += '        <div class="sc-8925b530-3 sc-8925b530-13 kwbido jIBfZE">';
    html += '            <textarea rows="1" name="etcHistories['+expNum+'].etcInfo"';
    html += '                placeholder="상세내용/점수 및 수준을 작성해주세요"';
    html += '                class="sc-ef790bde-0 bBMxve"';
    html += '                style="height: 24px;"></textarea>';
    html += '        </div>';
    html += '    </div>';
    html += '</div>';
    
    $('.divExp').last().after(html);
    textareaScrollHeight("etcHistories[" + expNum + "].etcInfo");
    
    // console.log("동적으로 생성한 input",$(this).parent().find(".ccWDsyP").find("input[name^='drop']"));

    /* 동적으로 생긴 경험 selectbox 내&외 영역 클릭 시 selectbox 닫힘 함수 */
    $(document).mouseup(function(e){
        console.log("타냐");
        
        var selectbox = $('.kTboN');
        if(selectbox.has(e.target).length === 0){
            selectbox.removeClass('selectbox_show');
            selectbox.addClass('selectbox_hide');
        }
    });
    
  	//경험 가장 바깥 div
    var divExpParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
    //경험 화살표, 휴지통 부분 div
    var orderControl = divExpParent.find('.experience_order_control');
    // console.log("orderControl",orderControl);
    // console.log("first:",divExpParent.find('.experience_order_control:first'));
    
    orderControl.each(function(index){
        // console.log("index", index);
        // console.log("this", $(this));
        
        //맨 처음 화살표, 휴지통 버튼튼
        if(index === 0 ){
            $(this).find('.profile_down_button').prop('disabled', false);
        }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
            $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
        }else { //중간에 있는 화살표, 휴지통 버튼
            $(this).find('button').prop('disabled', false);
        }
        
    });

    $(document).off('click', '.profile_delete_button').on('click', '.profile_delete_button', function(){

        // console.log("-------------------------------------");
        var divExp = $(this).closest('.divExp');
        // console.log("지금 클릭한 delete 버튼이 포함된 div",divExp);

        //경험 가장 바깥 div
        var divExpParent = divExp.parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');

        divExp.remove();

        //경험 화살표, 휴지통 부분 div
        var orderControl = divExpParent.find('.experience_order_control');
        // console.log("orderControl",orderControl);

        orderControl.each(function(index){
            // console.log("index", index);
            // console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_up_button').on('click', '.profile_up_button', function(){

        // console.log("-------------------------------------");
        // console.log("지금 클릭한 up 버튼이 있는 div",$(this).closest('.divExp'));

        var index = $(this).closest('.divExp').prevAll('.divExp').length;
        // console.log("up index",index);

        if (index === 0) return;

        $(this).closest('.divExp').insertBefore($('.divExp').eq(index - 1));

        //경험 가장 바깥 div
        var divExpParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
        //경험 화살표, 휴지통 부분 div
        var orderControl = divExpParent.find('.experience_order_control');
        // console.log("orderControl",orderControl);

        orderControl.each(function(index){
            // console.log("index", index);
            // console.log("this", $(this));
            
            //맨 처음 화살표, 휴지통 버튼
            if(index === 0 ){
                $(this).find('.profile_down_button').prop('disabled', false);
                $(this).find('.profile_up_button').prop('disabled', true);
                $(this).find('.profile_delete_button').prop('disabled', true);
            }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                $(this).find('.profile_down_button').prop('disabled', true);
                $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
            }else { //중간에 있는 화살표, 휴지통 버튼
                $(this).find('button').prop('disabled', false);
            }
        });
    });

    $(document).off('click', '.profile_down_button').on('click', '.profile_down_button', function(){

        // console.log("-------------------------------------");
        // console.log("지금 클릭한 down 버튼이 있는 div",$(this).closest('.divExp'));

        var index = $(this).closest('.divExp').prevAll('.divExp').length;
        // console.log("down index",index);

        var parent = $(this).closest('.divExp');
        var next = parent.next('.divExp');

        if(next.length !== 0) {
            parent.insertAfter(next);

            //경험 가장 바깥 div
            var divExpParent = $(this).parents('.sc-fac3ceb6-1.lpsJjJ.mb-3');
            //경험 화살표, 휴지통 부분 div
            var orderControl = divExpParent.find('.experience_order_control');
            console.log("orderControl",orderControl);
            
            orderControl.each(function(index){
                // console.log("index", index);
                // console.log("this", $(this));
                
                //맨 처음 화살표, 휴지통 버튼
                if(index === 0 ){
                    $(this).find('.profile_down_button').prop('disabled', false);
                    $(this).find('.profile_up_button').prop('disabled', true);
                    $(this).find('.profile_delete_button').prop('disabled', true);
                }else if (index === orderControl.length - 1) {  //마지막 화살표, 휴지통 버튼
                    $(this).find('.profile_down_button').prop('disabled', true);
                    $(this).find('.profile_up_button, .profile_delete_button').prop('disabled', false);
                }else { //중간에 있는 화살표, 휴지통 버튼
                    $(this).find('button').prop('disabled', false);
                }
            });
        }
    });

    expNum++;
});


/* 동적으로 생긴 경험 이력구분 선택 영역 클릭 시 셀렉트박스 숨기기, 보이기(jQuery) */
function selectsJ(){
    event.stopPropagation();

    console.log("selectsJ", $(this));

    var div_exp_selectbox = $(this).find('.kTboN');
    console.log("selectsJ div_exp_selectbox",div_exp_selectbox);

    if($(div_exp_selectbox).hasClass('selectbox_hide')){
        $(div_exp_selectbox).removeClass('selectbox_hide');
        $(div_exp_selectbox).addClass('selectbox_show');
    } else {
        $(div_exp_selectbox).removeClass('selectbox_show');
        $(div_exp_selectbox).addClass('selectbox_hide');
    }
}
$(document).on('click', '.ccWDsyP', selectsJ);


/* 동적으로 생긴  경험div에서 이력구분 선택 클릭 후 옵션 선택 시 */
$(document).on('click', '.dDoUMIIP', function(){

    var selectedText = $(this).text(); //이력구분 중 선택한 것
    console.log(">>DD<<",$(this).text());
    
    var exp_click = $(this).parent().parent().parent().parent().siblings('.exp_gubun');
    console.log("ttt",exp_click);
    
    var div_exp_selectbox = $(this).parent().parent().parent().closest('.kTboN');
    console.log("dddd",div_exp_selectbox);

    exp_click.html(selectedText);
});


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 자동완성 js */
// $('#autoComplete').click(function(){
$(document).on('click', '.autoComplete', function(){
	console.log("자동완성버튼");
	//이력서타이틀
	$('.rsm_title_textarea').val("최종 이력서");
	//간단소개
	$('#introTextarea').val("Javascript가 자신있는 기본에 충실한 개발자입니다.");
	//포트폴리오 URL
	$('input[name="links.0.title"]').attr('value', "Github");
	$('input[name="links.0.url"]').attr('value', "https://github.com/vasipoie");
	//최종학력
	$('input[name="educations.0.graduateYear"]').attr('value', "2020");
	$('input[name="educations.0.graduateMonth"]').attr('value', "02");
	$('input[name="eduNm"]').attr('value', "대덕대학교");
	$('input[name="rsmMjrNm"]').attr('value', "컴퓨터공학과");
	$('input[name="grade"]').attr('value', "4.0");
	//경력 회사1개, 프로젝트1개
	$('input[name="careers.0.careerYear1"]').attr('value', "2020");
	$('input[name="careers.0.careerMonth1"]').attr('value', "03");
	$('input[name="careers.0.careerYear2"]').attr('value', "2023");
	$('input[name="careers.0.careerMonth2"]').attr('value', "03");
	$('input[name="careers.0.companyName"]').attr('value', "ITcruit");
	$('input[name="careers.0.divisionName"]').attr('value', "개발부");
	$('input[name="careers.0.dutyName"]').attr('value', "사원");
	$('textarea[name="careers.0.jobDetailInfo"]').val("Storybook과 TypeScript를 활용하여 UI 컴포넌트를 제작하고 적용");
	$('input[name="projects.0.projectName"]').attr('value', "개발자 이력서 메이커 사이트");
	$('textarea[name="projects.0.projectDetailInfo"]').val("개발자를 위한 이력서를 작성할 수 있는 웹사이트를 개발하는 프로젝트 입니다.");
	//자격증2개
	$('input[name="certificate[0].certificateYear"]').attr('value', "2022");
	$('input[name="certificate[0].certificateMonth"]').attr('value', "05");
	$('input[name="certificate[0].certificateName"]').attr('value', "리눅스마스터 1급");
	$('input[name="certificate[0].certificateNo"]').attr('value', "LMS-1502-000517");
	$('textarea[name="certificate[0].certificatePublisher"]').val("한국정보통신진흥협회");
// 	$('input[name="certificate[1].certificateYear"]').attr('value', "2020");
// 	$('input[name="certificate[1].certificateMonth"]').attr('value', "06");
// 	$('input[name="certificate[1].certificateName"]').attr('value', "정보처리기사");
// 	$('input[name="certificate[1].certificateNo"]').attr('value', "16203010595L");
// 	$('textarea[name="certificate[1].certificatePublisher"]').val("한국산업인력공단");
	//경험2개
// 	$('input[name="etcHistories[0].etcYear1"]').attr('value', "2019");
// 	$('input[name="etcHistories[0].etcMonth1"]').attr('value', "01");
// 	$('input[name="etcHistories[0].etcYear2"]').attr('value', "2019");
// 	$('input[name="etcHistories[0].etcMonth2"]').attr('value', "12");
// 	$('input[name="etcHistories[0].etcName"]').attr('value', "제 8회 K-해커톤");
// 	$('input[name="etcHistories[0].etcOrganization"]').attr('value', "과학기술정보통신부");
// 	$('textarea[name="etcHistories[0].etcInfo"]').val("실감콘텐츠 앱 개발 챌린지라는 주제에 맞게 AR 동물원 앱 개발 ");
// 	$('input[name="etcHistories[1].etcYear1"]').attr('value', "2023");
// 	$('input[name="etcHistories[1].etcMonth1"]').attr('value', "10");
// 	$('input[name="etcHistories[1].etcName"]').attr('value', "전자정부 표준 프레임워크 기반 풀-스택 개발자 양성과정");
// 	$('input[name="etcHistories[1].etcOrganization"]').attr('value', "대덕인재개발원");
// 	$('textarea[name="etcHistories[1].etcInfo"]').val("Spring, JSP를 이용한 풀스택 웹 개발 역량 함양");
	
	
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* pdf버튼 */




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 저장하기 js */

$(document).on('click', '.rsmSubmit', function(){
	console.log("----저장하기----");
	
	/* 저장하기 누를 때 항목들 null 체크 */
	var photoCheckFlag = true;
	var introCheckFlag = true;
    var flageGaebal = true;
	var portCheckFlag = true;
	var certCheckFlag = true;
	var expCheckFlag = true;
    
    //사이드바 li들
    var sidebarLi = $('.twm-nav-list-1').children().children();
    // console.log("sidebarLi",sidebarLi);

    var formData = new FormData();

    //토글 on된 버튼의 이름들 담으려고
    var onToggleNmList = [];

    //사이드바에서 토글 on 된 버튼, a태그 text 찾기
    sidebarLi.each(function(idx){
        // console.log("냥",sidebarLi[idx].children);

        //li 꺼내서 findOnToggle에 담고
        var findOnToggle = sidebarLi[idx].children;
        for (var i = 0; i < findOnToggle.length; i++) {
            //class="fTWqAP"는 토글 on된 버튼
            if (findOnToggle[i].classList.contains('fTWqAP')) {
                var onToggle = findOnToggle[i];
                var onToggleNm = $(onToggle).prev('.ewWjoN').text();
                onToggleNmList.push(onToggleNm);
                // console.log("토글 on된 버튼의 a태그 text :",onToggleNm);
                break; // 버튼을 찾았으면 반복문 종료
            }
        }
    });
    
    var rsmTtl; 				//이력서 제목
    var src; 					//사진 img src
    var rsmNewCareer; 			//기본정보 - 신입 or 경력 선택
    var default_new_choice; 	//기본정보 - 신입 선택
    var default_exp_choice; 	//기본정보 - 경력 선택
    var rsmCareerYear; 			//기본정보 - 경력 - 작성한 연차
    var introData; 				//간단소개
    var positionData = []; 		//선택한 개발직무들
    var pstnCateArr = [];		//선택한 개발직무들의 카테고리들
    var positionDataBig = []; 	//선택한 개발직무들
    var availLangData = []; 	//선택한 기술스택(사용언어)
    var availLangDataBig = []; 	//선택한 기술스택(사용언어)
    var portfolioUrlData = []; 	//포트폴리오 URL들
    var portFileData = []; 		//포트폴리오 파일 제목들
    var portfolioFileData = []; //포트폴리오 파일 제목들
    var educationData = []; 	//최종학력 입력정보들
    var careerData = []; 		//경력 입력정보들
    var projectData = []; 		//경력-프로젝트 입력정보들
    var certificateData = []; 	//자격증 입력정보들
    var experienceData = []; 	//경험 입력정보들
    
    onToggleNmList.forEach(function(onToggleNm){
        switch (onToggleNm){
            case '사진' :
                var div_profile_upload = $('#photoId').children();
                // console.log("사진 부분 div",div_profile_upload);
                // console.log("이미지올렸나 확인",$(div_profile_upload).hasClass('profile_image'));

                //사이드바에서 사진 토글 on - 이력서에 사진 업로드 했으면,
                if($(div_profile_upload).hasClass('profile_image')){
                    src = $(div_profile_upload).find('img.profile_image').attr('src');
                    console.log("src :", src);
                    console.log("폼뎅터 store_thumbnailfile:", store_thumbnailfile);
                    formData.append('rsmPhoto', store_thumbnailfile);
                    photoCheckFlag = true;
                    //formData.append("photoFile",new Blob([JSON.stringify(src)],{type:"application/json;charset=utf-8"}));
                }else{
                    if(confirm('사진 항목을 완성해주세요')){
                        photoCheckFlag = false;
                        $('#photoId').attr("tabindex", -1).focus();
                        return false;
                    }
                }
                break;
            
            case '간단소개' :
                //사이드바에서 간단소개 토글 on - 이력서에 간단소개 비어있으면,
                if($('#introTextarea').val() == null || $('#introTextarea').val() == ""){
                    if(confirm('간단소개 항목을 완성해주세요')){
                        $('#introTextarea').focus();
                        introCheckFlag = false;
                        return false;
                    }
                }else{
                    introData = $('#introTextarea').val();
                    introCheckFlag = true;
                    console.log("폼뎅터 introData:", introData);
                    formData.append("rsmIntroduction",introData);
                }
                console.log("작성한 간단소개", introData);
                break;
                
            case '개발직무' :
                //사이드바에서 개발직무 토글 on - 이력서에 개발직무 옵션 선택안했으면,
                if($(".select_wrap").children().length <= 0){
                    
                    if(confirm('개발직무 항목을 완성해주세요')){
                        $('#posiId').attr("tabindex", -1).focus();
                        flageGaebal = false;
                        return false;
                    }
                }else{ //옵션 선택했으면,
                    // console.log("선택한 옵션들",$(".select_wrap").children());

                    $(".select_wrap").children().each(function(idx){
                        // console.log($(this));
                        // console.log(idx);
                        var select_posi_opt = $(this).children().first().text(); //직무명(서버, 웹백엔드)
                        var pstnCate = $(this).attr('class').split(' ')[1]; //직무에 대한 카테고리(category1)
                        positionData.push(select_posi_opt); //positionData[]에 값 넣음
                        pstnCateArr.push(pstnCate); //pstnCateArr[]에 값 넣음
                        console.log("선택된 옵션 이름",select_posi_opt);
                    });

                    let obj = { 
                   		pstnCateArr: pstnCateArr
                   		, pstnArr: positionData 
                   	};
                    // positionDataBig.push(obj);
                    console.log("담기 전 positionData:",positionData);
                    console.log("담기 전 pstnCateArr:",pstnCateArr);
                    console.log("폼뎅터 obj:",obj);
                    // console.log("positionDataBig", positionDataBig);
					flageGaebal = true;
                    formData.append("positionVO",new Blob([JSON.stringify(obj)],{type:"application/json;charset=utf-8"}));
                    // formData.append("resumeVO",new Blob([JSON.stringify(resumeVOPosition)],{type:"application/json;charset=utf-8"}));
                    
                    // for (var i = 0; i < positionData.length; i++) {
                    //     console.log(positionData[i].length);
                    //     console.log(positionData.length);
                        
                    //     var posiInput = document.createElement('input');
                    //     posiInput.type = 'hidden';
                    //     posiInput.name = 'positionVO.pstnArr[' + i + ']';
                    //     posiInput.value = positionData[i];
                    //     document.getElementById('positionFormInput').appendChild(posiInput);
                    // }
                }
                break;
                
            
            case '포트폴리오' :
                var portChildren = $('.bkpht').children('div').length;
                if(portChildren <= 0){ //포트폴리오 부분 전부 휴지통 눌러서 아예 없으면
                    alert('포트폴리오 항목을 완성해주세요');
                    portCheckFlag = false;
                    return false;
                }

                //포트폴리오 URL
                $('.sc-ae33785f-2.dgATeV').each(function(idx) {
                    
                    var inputTitleValue = $(this).find("input[name$='title']").val(); //url제목
                    var inputURLValue = $(this).find("input[name$='url']").val(); //url주소
                    // console.log("url제목", inputTitleValue);
                    // console.log("url주소", inputURLValue);

                    // 입력 값이 비어 있는 경우
                    if (inputURLValue == null || inputURLValue == '') {
                        if(confirm('포트폴리오 URL 항목을 완성해주세요')) {
                            $('#portId').attr("tabindex", -1).focus();
                            portCheckFlag = false;
                            return false;
                        }
                    }else {
						var portUrlData = {
                            portUrlTtl: inputTitleValue,
                            portUrl: inputURLValue
						};
                        portCheckFlag = true;
                        portfolioUrlData.push(portUrlData);
                    }
                });
                console.log("폼뎅터 portfolioUrlData:",portfolioUrlData);
                formData.append("portUrlVO",new Blob([JSON.stringify(portfolioUrlData)],{type:"application/json;charset=utf-8"}));
                // formData.append("resumeVO",new Blob([JSON.stringify(portfolioUrlData)],{type:"application/json;charset=utf-8"}));
                
                // $('input[name="portUrlVO"]').val(JSON.stringify(portfolioUrlData));
                // console.log("포트폴리오url체크inputhidden", $('input[name="portUrlVO"]').val());

                //포트폴리오 파일
                $('.filebox input[class="upload-name"]').each(function(idx) {
        
                    var inputFileName = $(this).attr('name'); //파일 div 이름(files.0.rsmFileName)
                    var inputFileValue = $(this).val(); //첨부파일 이름
                    // console.log(inputFileName); //파일 div 이름(files.0.rsmFileName)
                    // console.log(inputFileValue); //첨부파일 이름
                    
                    // 입력 값이 비어 있는 경우
                    if (inputFileValue == null || inputFileValue == '') {
                        alert('포트폴리오 파일 항목을 완성해주세요');
                        portCheckFlag = false;
                        $('#portId').attr("tabindex", -1).focus();
                    } else {
                        portCheckFlag = true;
                        portFileData.push(inputFileValue);
                    }
                });
                let portObj = { portFileTtlList: portFileData };
                // portfolioFileData.push(portObj);
                
                console.log("담기 전 portFileData:", portFileData);
                console.log("폼뎅터 portObj:", portObj);
                formData.append("portFileVO",new Blob([JSON.stringify(portObj)],{type:"application/json;charset=utf-8"}));
                // formData.append("resumeVO",new Blob([JSON.stringify(portObj)],{type:"application/json;charset=utf-8"}));

                if($('input[id^="files"]')){
                    for (var i = 0; i < $('input[id^="files"]').length; i++) {
                        var findInputFile = $('input[id^="files"]');
                        console.log("포트폴리오 파일 요소:",findInputFile[i]);
                        
                        var portFile = $('input[id^="files"]')[i].files[0];
                        console.log("폼뎅터 portFile:",portFile);
                        
                        // 파일 데이터 추가
                        formData.append("portFile", portFile);
                    }
                }
                break;

            case '자격증' :
                $('.divCert').each(function(index) {

                    var crtfYear = $(this).find('input[name^="certificate"]').eq(0).val();
                    var crtfMonth = $(this).find('input[name^="certificate"]').eq(1).val();
                    var crtfctNm = $(this).find('input[name^="certificate"]').eq(2).val();
                    var crtfctNo = $(this).find('input[name^="certificate"]').eq(3).val();
                    var crtfctPblcnInstNm = $(this).find('textarea[name^="certificate"]').val();

                    if(crtfYear == null || crtfYear == '' 
                        || crtfMonth == null || crtfMonth == ''
                        || crtfctNm == null || crtfctNm == ''
                        || crtfctNo == null || crtfctNo == ''
                        || crtfctPblcnInstNm == null || crtfctPblcnInstNm == ''
                    ){
                        if(confirm('자격증 항목을 완성해주세요')){
                            $('#certId').attr("tabindex", -1).focus();
                            certCheckFlag = false;
                            return false;
                        }
                    }else {
                        var crtfctQlfcAcqsYm = crtfYear + "/" + crtfMonth;
                        var certData = {
                            crtfctNm: crtfctNm
                            , crtfctNo: crtfctNo
                            , crtfctQlfcAcqsYm : crtfctQlfcAcqsYm
                            , crtfctPblcnInstNm: crtfctPblcnInstNm
                        };
                        certCheckFlag = true;
                        certificateData.push(certData);
                    }
                });
                console.log("폼뎅터 certificateData:",certificateData);
                formData.append("certificate",new Blob([JSON.stringify(certificateData)],{type:"application/json;charset=utf-8"}));
                // formData.append("resumeVO",new Blob([JSON.stringify(certificateData)],{type:"application/json;charset=utf-8"}));
                break;

            case '경험' :
                $('.divExp').each(function(index) {
                    var experYear1 = $(this).find('input[name$="etcYear1"]').val(); //연도1
                    var experMonth1 = $(this).find('input[name$="etcMonth1"]').val(); //월1
                    var experYear2 //연도2
                    var experMonth2 //월2
                    var isProceeding = $(this).find('input[name$="proceeding"]').is(':checked'); //진행중 체크
                    var experPrgrsYn = 'N';
                    var expYM2 = $(this).find('.calendar_box:eq(1)').hasClass('read_only') //진행중에 체크 시 뒤에 연도 비활성화
                    // 진행중 체크 여부에 따라 연도와 월 입력란을 비활성화합니다.
                    if(isProceeding && expYM2) {
                        experYear2 = '0000';
                        experMonth2 = '00';
                        experPrgrsYn = 'Y';
                    } else {
                        experYear2 = $(this).find('input[name$="etcYear2"]').val();
                        experMonth2 = $(this).find('input[name$="etcMonth2"]').val();
                    }
                    var experNm = $(this).find('input[name$="etcName"]').val(); //활동명
                    var experType = $(this).find('.exp_gubun')[0].innerText; //이력구분
                    console.log("선택한 이력구분",experType);
                    var experCoNm = $(this).find('input[name$="etcOrganization"]').val(); //관련기관
                    var experCn = $(this).find('textarea[name$="etcInfo"]').val(); //상세내용
                    console.log("작성한 경험",experYear1, experMonth1, experYear2, experMonth2, experPrgrsYn, experNm, experType, experCoNm, experCn);
                    
                    // 데이터가 비어있는지 확인
                    if(experYear1 == '' || experYear1 == null
                        || experMonth1 == '' || experMonth1 == null
                        || experYear2 == '' || experYear2 == null
                        || experMonth2 == '' || experMonth2 == null
                        || experNm == '' || experNm == null
                        || experType == '이력구분 선택'
                        || experCoNm == '' || experCoNm == null
                        || experCn == '' || experCn == null
                    ) {
                        alert('경험 항목을 완성해주세요');
                        expCheckFlag = false;
                        return false;
                    }else {
                        var experBgngYm = experYear1 + "/" + experMonth1;
                        var experEndYm = experYear2 + "/" + experMonth2;

                        // 데이터를 객체로 만들어 배열에 추가합니다.
                        var experData = {
	                        experNm: experNm				//경험명
	                        , experType: experType			//이력구분
	                        , experCoNm: experCoNm			//회사/기관/단체명
	                        , experCn: experCn				//경험내용
	                   		, experBgngYm: experBgngYm		//시작년월
	                   		, experEndYm: experEndYm		//종료년월
	                        , experPrgrsYn: experPrgrsYn	//진행여부
                        };
                        expCheckFlag = true;
                        experienceData.push(experData);
                        
                        // for(let i = 0; i < $(this).length; i++){
                        //     console.log("경험div개수가 나왔으면...",$(this).length);
                        //     console.log("experType : ", experType);
                        //     var experTypeInput = document.createElement('input');
                        //     experTypeInput.type = 'hidden';
                        //     // experTypeInput.name = 'etcHistories.experType[' + i + ']';
                        //     experTypeInput.name = 'etcHistories.experType';
                        //     experTypeInput.value = experType;
                        //     document.getElementById('exptypeFormHidden').appendChild(experTypeInput);
                        // }
                    }
                });
                	console.log("폼뎅터 experienceData:",experienceData);
                	// $('input[name="etcHistories"]').val(experienceData);
                    formData.append("etcHistories",new Blob([JSON.stringify(experienceData)],{type:"application/json;charset=utf-8"}));
                    // formData.append("resumeVO",new Blob([JSON.stringify(experienceData)],{type:"application/json;charset=utf-8"}));

                break;
            default:
                console.log("여긴가")
                break;
        }
    });

    /* 신입, 경력 여부 선택 체크 */
    $('.jYAWjG').each(function() {
        //신입, 경력 선택 버튼 2개
        var default_careerBtn = $(this).find('.default_careerBtn');

        //class="active" 필터링
        var activeClass = default_careerBtn.filter('.active');

        //둘 다 active 클래스가 없으면(선택안한 경우)
        if (activeClass.length === 0) {
            if (confirm('신입/경력 여부를 선택해주세요')) {
                $('#defaultInfoId').attr("tabindex", -1).focus();
                return false; // 반복문 종료
            }
        } else {
            //경력 선택했으면
            if ($('#default_career_exp').hasClass('active')) {
                
                rsmNewCareer = default_exp_choice;
                careerSwitchFlag = false;
                
                var careerYears = $('#default_careerYears').val();
                //경력 선택했는데 연차 안적었으면
                if (careerYears == null || careerYears == '') {
                    if (confirm('경력 연차를 작성해주세요')) {
                        $('#default_careerYears').focus();
                        return false; // 반복문 종료
                    } else {
                        return false; // 반복문 종료
                    }
                } else { //경력 선택, 연차 적음
                    default_exp_choice = $('#default_career_exp').val();
                    rsmNewCareer = default_exp_choice;
                    rsmCareerYear = careerYears;
                    console.log("폼뎅터 경력선택했을때:",rsmNewCareer, rsmCareerYear);

                    formData.append("rsmNewCareer",rsmNewCareer);
                    formData.append("rsmCareerYear",rsmCareerYear);
                    // formData.append("rsmNewCareer",new Blob([JSON.stringify(rsmNewCareer)],{type:"application/json;charset=utf-8"}));
                    
                    // $('input[name="rsmNewCareer"]').val(rsmNewCareer);
                    // $('input[name="rsmCareerYear"]').val(rsmCareerYear);
                    // console.log("신입선택됐나 확인, 연차확인inputhidden", $('input[name="rsmNewCareer"]').val(), $('input[name="rsmCareerYear"]').val());
                    return false; // 반복문 종료
                }
            } else { //신입 선택했으면
                default_new_choice = $('#default_career_new').val();
                careerSwitchFlag = true;
                rsmNewCareer = default_new_choice;
                rsmCareerYear = 0;
                console.log("폼뎅터 신입선택했을때:",rsmNewCareer, rsmCareerYear);
                
                formData.append("rsmNewCareer",rsmNewCareer);
                // formData.append("rsmNewCareer",new Blob([JSON.stringify(rsmNewCareer)],{type:"application/json;charset=utf-8"}));
                
                // $('input[name="rsmNewCareer"]').val(rsmNewCareer);
                // $('input[name="rsmCareerYear"]').val(rsmCareerYear);
                // console.log("신입선택됐나 확인, 연차확인inputhidden", $('input[name="rsmNewCareer"]').val(), $('input[name="rsmCareerYear"]').val());
                return false; // 반복문 종료
            }
        }
    });
    
    /* 이력서 제목 */
    rsmTtl = $('.rsm_title_textarea').val();
    let resumeVOTtl = {rsmTtl : rsmTtl};
    console.log("폼뎅터 rsmTtl:",rsmTtl);
    formData.append("rsmTtl",rsmTtl);
    // formData.append("resumeVO",new Blob([JSON.stringify(resumeVOTtl)],{type:"application/json;charset=utf-8"}));

    /* 이력서 공개, 비공개 val */
    var rsmRls = $('.profile_tooltip')[0].outerText;
    var rsmRlsYn;
    if(rsmRls != null || rsmRls != ''){
        if(rsmRls == '이력서 비공개') {
            rsmRlsYn = 'N';
        }else {
            rsmRlsYn = 'Y';
        }
    }
    let resumeVORlsYn = {rsmRlsYn : rsmRlsYn};
    console.log("폼뎅터 이력서공개, y/n:",rsmRls, rsmRlsYn);
    formData.append("rsmRlsYn",rsmRlsYn);
    // formData.append("resumeVO",new Blob([JSON.stringify(resumeVORlsYn)],{type:"application/json;charset=utf-8"}));

    //이력서 공개여부 input hidden에 val넣기
    // $('input[name="rsmRlsYn"]').val(rsmRlsYn);
    // console.log("이력서공개여부input에 들어갔나", $('input[name="rsmRlsYn"]').val());

    /* 기술스택 */
    // console.log("기술스택",$(".kbmRUr").children());

    //이력서에 기술스택 옵션 작성안했으면,
    if($(".kbmRUr").children().length <= 0){
        if(confirm('기술스택 항목을 완성해주세요')){
            $('#availLangId').attr("tabindex", -1).focus();
            return false;
        }
    }else{ //옵션 작성했으면,
        // console.log("작성한 옵션들",$(".kbmRUr").children());

        $(".kbmRUr").children().each(function(idx){
            // console.log($(this));
            // console.log(idx);
            var select_lang_opt = $(this).children().first().text();
            availLangData.push(select_lang_opt); //availLangData[]에 값 넣음
            console.log("선택한 기술스택 select_lang_opt:",select_lang_opt);
        });

        // let resumeVOLang = {
        //     availLangVO : {
        //         langArr:  availLangData
        //     }
        // }
        let availLangVO = { langArr: availLangData };
        // let obj = {langArr: availLangData};
        // availLangDataBig.push(obj);
        // availLangDataBig.push(availLangVO);
        console.log("폼뎅터 availLangVO:",availLangVO);
        formData.append("availLangVO",new Blob([JSON.stringify(availLangVO)],{type:"application/json;charset=utf-8"}));
        // formData.append("resumeVO",new Blob([JSON.stringify(resumeVOLang)],{type:"application/json;charset=utf-8"}));

		// for (var i = 0; i < availLangData.length; i++) {
        //     console.log(availLangData[i].length)
        //     console.log(availLangData.length)
            
        //     var langInput = document.createElement('input');
        //     langInput.type = 'hidden';
        //     langInput.name = 'availLangVO.langArr[' + i + ']';
        //     langInput.value = availLangData[i];
        //     document.getElementById('availLangFormInput').appendChild(langInput);
		// }
        // console.log("availLangDataBig",availLangDataBig);
    }
    
    /* 최종학력 */
    //졸업년
    var edu_graduateYear = $('input[name="educations.0.graduateYear"]').val();
    //졸업월
    var edu_graduateMonth = $('input[name="educations.0.graduateMonth"]').val();
    var eduEnd;

    if(edu_graduateYear != null && edu_graduateYear != '' && edu_graduateMonth != null && edu_graduateMonth != '') {
        eduEnd = edu_graduateYear +'/'+ edu_graduateMonth;
        // $('input[name="eduEnd"]').val(eduEnd);
        // console.log("졸업년월보자inputhidden", $('input[name="eduEnd"]').val());
    }
    
    //학력구분
    var eduAcdmcr = $('div[data-role="selectBox"]')[0].outerText;
    if(eduAcdmcr == '학력 구분'){
        eduAcdmcr = null;
    }
    // $('input[name="eduAcdmcr"]').val(eduAcdmcr);
    // console.log("학력구분확인inputhidden", $('input[name="eduAcdmcr"]').val());

    //학교명
    var eduNm = $('input[name="eduNm"]').val();
    if(eduNm == null || eduNm == ''){
        eduNm = null;
    }

    //학과명
    var rsmMjrNm = $('input[name="rsmMjrNm"]').val();
    if(rsmMjrNm == null || rsmMjrNm == ''){
        rsmMjrNm = null;
    }

    //학점
    var grade = $('input[name="grade"]').val();
    grade = Number(grade);
    
    //기준학점
    var full = $('.eduGijun')[0].innerText;
    if(full == '기준학점'){
		full = 0;  		
  	}else{
		full = Number(full);
  	}
    console.log("선택한 기준학점", full);

	console.log("edu 졸업년/월/학교명/학과명/학점/기준학점 :",edu_graduateYear, edu_graduateMonth, eduNm, rsmMjrNm, grade, full);
    
    var eduData = {
        eduEnd : eduEnd				//졸업(예정)일
        , eduAcdmcr : eduAcdmcr		//학력구분
        , eduNm : eduNm				//학교명
        , rsmMjrNm : rsmMjrNm		//주전공
        , grade : grade				//학점
        , full : full				//기준학점
    }
    // educationData.push(eduData); //educationData[]안에 {}넣음
    console.log("폼뎅터 eduData:", eduData);
    formData.append("eduVO",new Blob([JSON.stringify(eduData)],{type:"application/json;charset=utf-8"}));
    // formData.append("resumeVO",new Blob([JSON.stringify(eduData)],{type:"application/json;charset=utf-8"}));
    
    
    /* 경력, 프로젝트 */
    if(default_exp_choice == '경력'){
        $('.divCareer').each(function(index) {
            var careerYear1 = $(this).find('input[name$="careerYear1"]').val(); //연도1
            var careerMonth1 = $(this).find('input[name$="careerMonth1"]').val(); //월1
            var careerYear2; //연도2
            var careerMonth2; //월2
            var careerHdof = $(this).find('input[name$="proceeding"]').is(':checked'); //재직중 체크
            var careerYM2 = $(this).find('.calendar_box:eq(1)').hasClass('read_only'); //재직중에 체크 시 뒤에 연도 비활성화
            var careerHdofYn = 'N'; //재직여부
            // 진행중 체크 여부에 따라 연도와 월 입력란을 비활성화합니다.
            if(careerHdof && careerYM2) {
                careerYear2 = '0000';
                careerMonth2 = '00';
                careerHdofYn = 'Y';
            } else {
                careerYear2 = $(this).find('input[name$="careerYear2"]').val();
                careerMonth2 = $(this).find('input[name$="careerMonth2"]').val();
            }
            var careerCoNm = $(this).find('input[name$="companyName"]').val(); //회사명
            var careerDeptNm = $(this).find('input[name$="divisionName"]').val(); //부서명
            var careerJbgdNm = $(this).find('input[name$="dutyName"]').val(); //직급/직책
            var careerTkcgTaskNm = $(this).find('textarea[name$="jobDetailInfo"]').val(); //주요업무 및 성과
            
            //프로젝트
            var prjNameEles = $(this).find('input[name$="projectName"]');
            var prjDetInfo = $(this).find('textarea[name$="projectDetailInfo"]');
            var projData;
            var careerJncmpYm;
            var careerRsgntnYm;

            for(var i = 0; i < prjNameEles.length; i++){
                var projNm = prjNameEles[i].value;
                var projDtlCn = prjDetInfo[i].value;
                
            	// 데이터가 비어있는지 확인
                if(careerYear1 == '' || careerYear1 == null
                    || careerMonth1 == '' || careerMonth1 == null
                    || careerYear2 == '' || careerYear2 == null
                    || careerMonth2 == '' || careerMonth2 == null
                    || careerCoNm == '' || careerCoNm == null
                    || careerDeptNm == '' || careerDeptNm == null
                    || careerJbgdNm == '' || careerJbgdNm == null
                    || careerTkcgTaskNm == '' || careerTkcgTaskNm == null
                    || projNm == '' || projNm == null
                    || projDtlCn == '' || projDtlCn == null
                ) {
                	alert("경력 항목을 완성해주세요"); //삭제할거
                	careerSwitchFlag = false; //위에서 경력 선택했으니 false됐고, 경력 항목 데이터가 비어있으니까 계속 false
                    return false;
                }else {
                    careerJncmpYm = careerYear1 + "/" +  careerMonth1;
                    careerRsgntnYm = careerYear2 + "/" +  careerMonth2;

                    projData = {
                        projNm: projNm						//프로젝트명
                        , projDtlCn: projDtlCn				//프로젝트 상세내용
                    };
                    projectData.push(projData);

    	            // 데이터를 객체로 만들어 배열에 추가합니다.
                    // var carData = {
    	            //     careerCoNm: careerCoNm					//회사명
    	            //     , careerDeptNm: careerDeptNm			//부서명
    	            //     , careerJbgdNm: careerJbgdNm			//직급/직책
    	            //     , careerTkcgTaskNm: careerTkcgTaskNm	//담당업무
    	           	// 	, careerJncmpYm: careerJncmpYm			//입사년월
    	           	// 	, careerRsgntnYm: careerRsgntnYm		//퇴사년월
    	            //     , careerHdofYn: careerHdofYn			//재직여부
                    //     , projectData: projData
                    // };
    	            // careerSwitchFlag = true; //경력 항목 데이터 채웠으니까 true
                    // careerData.push(carData);
                
                    // var projData = {
                    //     projNm: projNm						//프로젝트명
                    //     , projDtlCn: projDtlCn				//프로젝트 상세내용
                    // };
                    // projectData.push(projData);
                }
                // console.log("작성한 경력",careerYear1, careerMonth1, careerYear2, careerMonth2, careerHdofYn, careerCoNm, careerDeptNm, careerJbgdNm, careerTkcgTaskNm, projNm, projDtlCn);
            }
            // var projNm = $(this).find('input[name$="projectName"]').val(); //프로젝트명
            // var projDtlCn = $(this).find('textarea[name$="projectDetailInfo"]').val(); //프로젝트 상세내용

            // 데이터를 객체로 만들어 배열에 추가합니다.
            var carData = {
                careerCoNm: careerCoNm					//회사명
                , careerDeptNm: careerDeptNm			//부서명
                , careerJbgdNm: careerJbgdNm			//직급/직책
                , careerTkcgTaskNm: careerTkcgTaskNm	//담당업무
                , careerJncmpYm: careerJncmpYm			//입사년월
                , careerRsgntnYm: careerRsgntnYm		//퇴사년월
                , careerHdofYn: careerHdofYn			//재직여부
                , projectData: projectData
            };
            careerSwitchFlag = true; //경력 항목 데이터 채웠으니까 true
            careerData.push(carData);
            projectData = []; //다음 회사로 넘어가기 전 초기화
            console.log("작성한 경력",careerYear1, careerMonth1, careerYear2, careerMonth2, careerHdofYn, careerCoNm, careerDeptNm, careerJbgdNm, careerTkcgTaskNm, projNm, projDtlCn);
        });
        console.log("폼뎅터 careerData:", careerData);
        formData.append("careerVO",new Blob([JSON.stringify(careerData)],{type:"application/json;charset=utf-8"}));
        // formData.append("resumeVO",new Blob([JSON.stringify(careerData)],{type:"application/json;charset=utf-8"}));
        // formData.append("projectVO",new Blob([JSON.stringify(projectData)],{type:"application/json;charset=utf-8"}));
        
    } else {
        //신입일 경우 경력 데이터 배열 비워줌
        careerData = [];
        careerSwitchFlag = true;
    }
    
    if(rsmNewCareer == null || rsmNewCareer == ''){
        // alert("신입/경력 여부를 선택해주세요22")
        return false;
    }
    
    if(photoCheckFlag == false){
        // alert("사진 항목을 완성해주세요222");
		return false;
	}
    
    if(introCheckFlag == false){
        // alert("간단소개 항목을 완성해주세요222");
		return false;
	}
    
    if(flageGaebal == false){
        // alert("개발직무 항목을 완성해주세요222");
		return false;
	}
    
    if(portCheckFlag == false){
        // alert("포트폴리오 항목을 완성해주세요333");
        return false;
    }
    
    if(careerSwitchFlag == false){
        // alert("경력 항목을 완성해주세요222");
        return false;
    }
    
    if(certCheckFlag == false){
        // alert("자격증 항목을 완성해주세요222");
        return false;
    }
    
    if(expCheckFlag == false){
        // alert("경험 항목을 완성해주세요222");
        return false;
    }
    
    // $('#rsmForm').submit();
    
    // var obj = {
    // 		rsmTtl : rsmTtl						//이력서 제목
    // 		, rsmNewCareer : rsmNewCareer		//신입 or 경력
    // 		, rsmCareerYear : rsmCareerYear		//경력연차
    // 		, rsmRlsYn : rsmRlsYn				//공개여부
    // 		, rsmPhotoPath : src				//사진경로
    // 		, rsmIntroduction : introData		//간단소개
    // 		, eduEnd: eduEnd					//졸업(예정)일
    // 		, eduAcdmcr: eduAcdmcr				//학력구분
    // 		, eduNm: eduNm						//학교명
    // 		, rsmMjrNm: rsmMjrNm				//주전공
    // 		, grade: grade						//학점
    // 		, availLangVO : availLangDataBig	//기술스택(사용언어)
    // 		, positionVO : positionDataBig		//개발직무
    // 		, portUrlVO : portfolioUrlData		//포트폴리오 URL
    // 		, portFileVO : portfolioFileData	//포트폴리오 파일
    // 		, eduVO : educationData				//최종학력
    // 		, careerVO : careerData				//경력
    // 		, projectVO : projectData			//프로젝트
    // 		, certVO : certificateData			//자격증
    // 		, expVO : experienceData			//경험
    // }
    
    // $.ajax({
    //     type: 'POST',
    //     url: '/resume/register',
    //     beforeSend: function(xhr){ //데이터 전송 전, 헤더에 csrf값 설정
	// 		xhr.setRequestHeader(header, token);
	// 	},
    //     contentType: 'application/json; charset=utf-8',
    //     data: JSON.stringify(obj),
    //     success: function(response) {
    //         // 성공 시 처리
    //     },
    //     error: function(xhr, status, error) {
    //         // 오류 시 처리
    //     }
    // });




    // var formData = new FormData();
    // if(document.getElementById('files.0.rsmFile')){
    //     var portFile = document.getElementById('files.0.rsmFile').files[0]; //일단1개만
    //     // 파일 데이터 추가
    //     formData.append("portFile", portFile);
    // }
	
	// 다른 데이터 추가
    //formData.append("nhJson",new Blob([JSON.stringify(certificateData)],{type:"application/json;charset=utf-8"}));
	
	//이력서 사진 파일
	// formData.append('rsmPhoto', new Blob([JSON.stringify(thumbnailfile)],{type:"application/json;charset=utf-8"}));
	// formData.append('rsmPhoto', thumbnailfile);
	// console.log("AJAX보내기 전 store_thumbnailfile",store_thumbnailfile);
	// console.log(formData.values);
	
	// AJAX 요청 설정
	// FormData의 key 확인
	for (const [key, value] of formData.entries()) {
		console.log("--------formdata 확인--------");
		console.log(key, value);
	};
	
	
	$.ajax({
        type: 'POST',
        url: '/resume/register',
        beforeSend: function(xhr){ //데이터 전송 전, 헤더에 csrf값 설정
            xhr.setRequestHeader(header, token);
        },
        data: formData,
        processData: false,
        contentType: false,
        success: function(res) {
            // console.log(data);
            console.log(res);
//             alert("이력서가 등록되었습니다");
			
			Swal.fire({
            	text : "이력서가 등록되었습니다",
            	icon : "info"
            }).then(() => {
			    window.location.href = res;
			});

//             window.location.href = res;
            
        },
        error: function(xhr, status, error) {
            console.log(xhr);
            console.log(status);
            console.log(error);
//             alert("서버에러가 발생했습니다. 다시 시도해주세요");

            Swal.fire({
            	text : "서버에러가 발생했습니다. 다시 시도해주세요",
            	icon : "error"
            });
        }
	});


});

</script>
</body>

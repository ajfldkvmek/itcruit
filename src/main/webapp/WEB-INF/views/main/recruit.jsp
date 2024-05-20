<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
<style>

	.pt-5 {
		display: none;
	}
	
	/* 지원서 작성 버튼 속성 */
	.btn-success {
	    color: #fff;
	    background-color: #cd7bfe;
	    border-color: #cd7bfe;
	}

	.btn-success:hover {
	    color: #fff;
	    background-color: #a135bc;
	    border-color: #a135bc;
	}

	/* 채용달력 영역에 세로선으로 구분하려고 */
/* 	.vertical-divider { */
/* 	  border-right: 1px solid #000; */
/* 	  min-height: 100vh; /* 콘텐츠보다 충분히 큰 값으로 설정 */ */
/* 	  /* 또는 */ */
/* 	  height: 500px; /* 고정된 높이 설정 */ */
/* 	} */
    p {
        word-wrap: break-word;
    }
    
    
	#cont {
		margin: 50px auto;
		width: 50%;
		height: 70%;
		background-color: white;
		
		color: black;
	}
	
	/* 풀캘린더 헤드툴바 글자크기 설정 */
	.fc-header-toolbar .fc-toolbar-title {
        font-size: 20px; 
    }
    
    /* 풀캘린더 헤드툴바 center속성을 가로졍렬 설정 */
 	.fc-toolbar-chunk {
        display: flex;
        align-items: center;
    }
    
    /* 날짜의 폰트 크기, 색상을 수정합니다 */
    .fc-daygrid-day-number {
        font-size: 13px;
        color: #000000;
    }

	/* 풀캘린더 요일 폰트 수정 */
	.fc-col-header-cell-cushion {
		color: #000000;
	}
	
	
  	/* 풀캘린더 요일 폰트 수정 */
  	.fc-event-time {
  	 	display: none;
  	}
  	
  	/* 풀캘린더 스케줄 시작시간 수정 */
  	.fc-event-title {
  		color: #000000;
  	}
  	
  	/* 풀캘린더 날짜 표시 위치 수정 */
  	.fc-daygrid-day-top {
        display: flex;
        justify-content: flex-start;
    }
  	
    .fc .fc-button-primary {
    	background-color: #cc77ff;
    	border: none;
    }
  
  	.fc .fc-button-primary:disabled {
    	background-color: #E4B7FF;
    	border: none;
    }
  	
</style>
<script>
$(document).ready(function() {
    // 지역상세 select box를 비활성화
    $('.js-choice-detail').prop('disabled', true);

    // 지역 select box가 변경될 때마다 이벤트 핸들러를 실행
    $('.js-choice-region').change(function() {
        if ($(this).val() !== '') {
            // 지역이 선택되면 지역상세 select box를 활성화
            $('.js-choice-detail').prop('disabled', false);
        } else {
            // 지역이 선택되지 않으면 지역상세 select box를 비활성화
            $('.js-choice-detail').prop('disabled', true);
        }
    });
});
</script>

<c:choose>
    <c:when test="${not empty pageContext.request.userPrincipal}">
        <script>
            var loginUser = "${pageContext.request.userPrincipal.name}";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            var loginUser = "";
        </script>
    </c:otherwise>
</c:choose>
<main>
	
<div class="modal fade" id="detailModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="card-header-title mb-0">채용 정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			
			<div class="modal-body">

				<div style="background-color: white;">
					<div class="card bg-transparent border rounded-3 h-100">
							<div class="card-body">
								<img id="entImg" src="#" class="card-img-top" alt="course image" style="width: 30%; height: 150px;">
							</div> 
					</div>
				</div>
				<br>
				
			</div>
		
		</div>
	</div>
</div>


	<!-- Modal end-->
	
	<c:set var="calInfoVO" value="${calInfoVO }" />
	
	<div class="container">
	
	<div class="row mb-3 align-items-center">
	    <!-- Search bar -->
	    <div class="col-3">
	        <form class="border rounded p-2">
	            <div class="input-group input-borderless">
	                <input class="form-control me-1" type="search" id="entNm" placeholder="검색">
	            </div>
	        </form>
	    </div>
	
	    <!-- 직무 calInfoVO.pstnCmmncdNm -->
	    <div class="col-3">
	        <form class="border rounded p-2 input-borderless">
	            <select class="form-select form-select-sm js-choice"
	                aria-label=".form-select-sm"
	                id = "pstnCmmncdNm"
	                >
	                <option value="">직무</option>
	                <c:forEach var="pstn" items="${calInfoVO.pstnCmmncdNm}" varStatus="status">
	                    <option>${pstn}</option>
	                </c:forEach>
	            </select>
	        </form>
	    </div>
	    
	   <div class="col-2">
			<form class="border rounded p-2 input-borderless">
				<select class="form-select form-select-sm js-choice"
					aria-label=".form-select-sm" id = "lang">
					<option value="">언어</option>
					<c:forEach var="lang" items="${calInfoVO.lang}" varStatus="status">
	                    <option>${lang}</option>
	                </c:forEach>
				</select>
			</form>
	    </div>
	    
	   <div class="col-2">
				<form class="border rounded p-2 input-borderless">
					<select class="form-select form-select-sm js-choice"
						aria-label=".form-select-sm"
						id = "cmmncdGrpCd"
						>
						<option value="">지역</option>
						<c:forEach var="cmmncdGrpCd" items="${calInfoVO.cmmncdGrpCd}" varStatus="status">
	                   		<option value="${cmmncdGrpCd}">${cmmncdGrpCd}</option>
	                	</c:forEach>
					</select>
				</form>
		</div>
		
		<div class="col-2">
				<form class="border rounded p-2 input-borderless" id="localList">
					<select class="form-select form-select-sm js-choice"
						aria-label=".form-select-sm"
						id = "cmmncdNm1">
						<option value="">지역상세</option>
					</select>
				</form>
		</div>	    
	
	</div>
		
	</div>
	
	<div class="container">
	
        <div class="row mb-2 align-items-center">
            
<!--             사이드바 left -->
<!--             <div class="col-sm-1 vertical-divider"> -->
               
<!--             </div> -->

            <!-- 달력 -->
            <div class="col-sm-10 vertical-divider">
              <div id="Wrapper">
				<div id='calendar'></div>
			 </div>
            </div>

			
			<!-- 사이드바 카드형식으로 노출하기 -->
            <div id="recentListContainer" class="col-sm-2">
            	<span style="font-size: 12px;">최근본공고</span><hr/>
			    <div class="card mb-1">
			        <span id="clicklist"></span>
			    </div>
			</div>
            	
        </div>
        
    </div>

	
	
	<script>
	
		
		//최근 본 목록 담을 배열
		var recentPostings = [];
		
		var entNo  =   "";
		
		//db에서 뽑아낸 데이터 json파일로 가져와서 달력에 넣는 방식
		var modalBody = document.querySelector('.modal-body');
		var modalHeader = document.querySelector('.modal-header');
		
		//딜력에 노출할 데이터 검색어 설정
		var date;	//날짜
		var entNm;	//회사명
		var pstnCmmncdNm; //모집분야
		var lang;	//언어
		var cmmncdGrpCd;//근무지
		var cmmncdNm1;//상세
		
		var localList = document.getElementById("localList");
		

		document.addEventListener('DOMContentLoaded', function() {
		//var eventSources = ${eventSources};
        //캘린더 헤더 옵션
        const headerToolbar = {
            left: 'title',
            center: '', 
            right: 'prev,today,next'
        }
                 
        const calendarEl = document.querySelector('#calendar'); //달력지정

        const calendarOption = {
        	
            contentHeight: 'auto',
           
            expandRows: true, // 화면에 맞게 높이 재설정
             	slotMinTime: '09:00', // Day 캘린더 시작 시간
             	slotMaxTime: '18:00', // Day 캘린더 종료 시간
          
			// 맨 위 헤더 지정
            headerToolbar: headerToolbar,
            initialView: 'dayGridMonth',  
            locale: 'kr',        // 언어 설정
            selectable: true,    // 영역 선택
            editable: false,      // event(일정) 
            /* 시작일 및 기간 수정가능여부
            eventStartEditable: false,
            eventDurationEditable: true,
            */
           
            //이벤트 숨김
            //eventDisplay: 'block',
            
            //contentHeight: 800,
            nowIndicator: true,
            //events: eventSources,
            
            datesSet: function(info) {
            
            	var startOfMonth = info.view.currentStart;
	            var startYear = startOfMonth.getFullYear();
	            
	      		var startMonth;
	      		if(startOfMonth.getMonth()+1 < 10) {
	      			startMonth = "0"+(startOfMonth.getMonth()+1);
	      		} else {
	      			startMonth = (startOfMonth.getMonth()+1)
	      		}
	      		
			    date = startYear+"-"+startMonth;
			    
			    refreshCalendar();
		    }
        }

	    $(document).ready(function() {
	    
	    	//검색어 입력시 ajax로 달력 새로 그리기
		    $('#entNm').on('keyup', function() {
		    	refreshCalendar();
		    });
		   
		    //모집 분야 선택시
		    $('#pstnCmmncdNm').on('change', function() {
		    	refreshCalendar();
		    });
		    
		    //언어 선택
		    $('#lang').on('change', function() {
		    	refreshCalendar();
		    });
		    
		    //상세지역 선택
		    $(document).on('change', '#cmmncdNm1', function() {
			    refreshCalendar();
			});

		    
		    
		    //지역선택
		    $('#cmmncdGrpCd').on('change', function() {
		    	var grpNm = $('#cmmncdGrpCd').val();
		    	var localdata = {
		    		cmmncdGrpNm : grpNm
		    	}
		  		$.ajax({
		    		
					type : "post",
					url : "/recruit/locallist.do",
					contentType : "application/json; charset=utf-8",
					data : JSON.stringify(localdata),
					beforeSend: function(xhr) {
	             	xhr.setRequestHeader(header, token);
	           	    },
		          	success : function(res) {
		          		html = '<select class="form-select form-select-sm js-choice" aria-label=".form-select-sm" id = "cmmncdNm1">';
		          		html += '<option value="">지역상세</option>';
		          		for(var i = 0; i < res.length; i++){
		          			html += '<option value="'   +       res[i] +     '">'    +     res[i] +       '</option>';
		          		}
		          		html += '</select>';
		          		
		          		localList.innerHTML = html;
					}
				});
		  						
				refreshCalendar();
				
		    });
		    
		});
		

        // 캘린더 생성
        const calendar = new FullCalendar.Calendar(calendarEl, calendarOption);
       
        calendar.render();
		
		//달력 새로 그리기 위한 함수
		function refreshCalendar() {
			entNm = $("#entNm").val();
			pstnCmmncdNm = $("#pstnCmmncdNm").val(); //모집분야
			lang = $("#lang").val();	//언어
			cmmncdGrpCd = $("#cmmncdGrpCd").val();//근무지
			cmmncdNm1 = $("#cmmncdNm1").val();//상세
			
			var calDate = {
				time: date,
				entNm : entNm,
				pstnCmmncdNm : pstnCmmncdNm,
				lang : lang,
				cmmncdGrpCd : cmmncdGrpCd,
				cmmncdNm1 : cmmncdNm1,
			}
// 			console.log(calDate);
			
		   $.ajax({
				type : "post",
				url : "/recruit/list.do",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(calDate),
				beforeSend: function(xhr) {
             	xhr.setRequestHeader(header, token);
           	    },
	          	success : function(res) {
	          		calendar.removeAllEvents();
			        calendar.addEventSource(res);
			        calendar.render();
				}
			})
		}
	
        calendar.on("eventClick", info => {
        	
        	var html = '';
            //여기서 위 처럼 프로세스 번호 가져와서
            //모달창으로 해당 프로세스 정보 띄우기
			var recruitNo = info.event.extendedProps.recruitNo;
			entNo = info.event.extendedProps.entNo;
			entNm = info.event.title.substring(3);
			
			//각 채용공고별로 클릭수 체크
			//pstn_cmmncd_nm , recruit_no를 기준으로
			//
			
			printModalFunction(recruitNo);
			
			addToRecentList(recruitNo,entNo, entNm);
			//loginUser가 ""이고(비로그인 상태이고) recentPostings가 2보다 크면 로그인 유도
			if(loginUser==""){
				if(recentPostings.length > 3 ){
					Swal.fire({
					    text: "더 이용하시려면 로그인 해 주세요",
					    icon: "info"
					}).then(() => {
					    window.location.href = "/main/loginForm.do";
					});
				}	
			}
			$("#detailModal").modal("show");
			
        });

        function addToRecentList(recruitNo, entNo, entNm) {
            var flag = false;
            var data = [];

            if(recentPostings.length > 0){
                for(var i = 0; i < recentPostings.length; i++){
                    console.log(recentPostings[i]);
                    if(recentPostings[i].includes(recruitNo)) {
                        console.log("일치하는 정보 있음");
                        flag = true;
                    }
                }
            }
            
            if(!flag) {
                data.push(recruitNo);
                data.push(entNo);
                data.push(entNm);
                recentPostings.push(data);
            }
            console.log(recentPostings);
            if (recentPostings.length > 15) {
                recentPostings.shift(); // 가장 오래된 항목 삭제
            }
            
            updateRecentList();
        }

        function updateRecentList() {
            var recentListContainer = document.getElementById("recentListContainer");
            var cardHeader = recentListContainer.querySelector(".card-header");
            $("#clicklist").html(""); // 기존 목록 지우기
			//0:recruitNo 1:entNo 2:entNm
            recentPostings.forEach(dataSet => {
                var card = '<p id="item-' + dataSet[0] + '">'+ dataSet[2] +'</p>';
                $("#clicklist").append(card);
//                 printModalFunction(res)

                // 클릭 이벤트 핸들러 추가
                $('#item-' + dataSet[0]).on('click', function() {
                	printModalFunction(dataSet[0]);
                	$("#detailModal").modal("show");
                });
            });
        
		}
//         $("#detailModal").modal("show");


        function printModalFunction(res){
        	
        	var html = "";
        	
        	$.ajax({
				type : "post",
				url : "/recruit/getModal.do",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify({
					recruitNo : res
				}),
				beforeSend: function(xhr) {
                	xhr.setRequestHeader(header, token);
          		},
          		success : function(res) {
          			recruit = res;
          			
          			var html ='';
          			html += '<h5 class="card-header-title mb-0">'+ recruit[0].entNm +'</h5>';
    				html += '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
    				modalHeader.innerHTML = html;
    				
    				
          			html = '<div class="card-body">';
        			html += '<div class="table-responsive border-0 rounded-3">';
        			html += '<table class="table table-dark-gray align-middle p-4 mb-0 table-hover">';
        			
        			html += '<thead>';
        			html += '<tr>';
        			html += '<th scope="col" class="border-0 rounded-start">채용형태</th>';
        			html += '<th scope="col" class="border-0" style="text-align: center;">모집분야</th>';
        			html += '<th scope="col" class="border-0" style="text-align: center;">모집기간</th>';
        			html += '<th scope="col" class="border-0" style="text-align: center;">조회수</th>';
        			html += '<th scope="col" class="border-0 rounded-end">지원하기</th>';
        			html += '</tr>';
        			html += '</thead>';
        			
        			html += '<tbody>';
        			for(var i = 0; i < recruit.length; i++) {
        									
        				html += '<tr>';
        				html += '<td>';
        				html += '<h6 class="table-responsive-title mb-0 ms-2">';
        				html += recruit[i].recruitCareerCodeNm +'</h6>';
        				html += '</td>';
        				html += '<td style="text-align: center;">';
        				html += '<h6 class="mb-0 fw-light">'
        				html +=  recruit[i].pstnCmmncdNm +'</h6>';
        				html += '</div>';
        				html += '</div>';
        				html += '</td>';
        				html += '<td style="text-align: center;">';
        				html += recruit[i].recruitStrtDt.replace("T", " ");
        				html +=  ' ~ ';
        				html += recruit[i].recruitEndDt.replace("T", " ");
        				html += '</td>';
        				
        				html += '<td style="text-align: center;">';
        				html += recruit[i].recruitHit+'</td>';
        				
//         				if (now < startDate) {
//         		            // 현재 날짜가 모집 시작 날짜 이전이면 "시작 안함" 표시
//         		            html += '<button class="btn btn-sm btn-secondary me-1 mb-1 mb-md-0" disabled>';
//         		            html += '시작 안함</button>';
//         		        } else if (now > endDate) {
//         		            // 현재 날짜가 모집 종료 날짜 이후이면 "지난 공고" 표시
//         		            html += '<button class="btn btn-sm btn-secondary me-1 mb-1 mb-md-0" disabled>';
//         		            html += '지난 공고</button>';
//         		        } else {
//         		            // 현재 날짜가 모집 기간 내이면 "지원서 작성" 버튼 활성화
//         		            html += '<a href="https://www.naver.com" class="btn btn-sm btn-success me-1 mb-1 mb-md-0">';
//         		            html += '지원서 작성</a>';
//         		        }
// 						recruit[i].pstnCmmncdNm	recruitNo
// html += '<a href="/main/introForm.do?recruitNo=' + recruitNo + "&pstnCmmncdNm=" +pstnCmmncdNm;
//         				/main/introForm.do?recruitNo=" + recruitNo + "&pstnCmmncdNm=" + pstnCmmncdNm
//         				'<a href="/main/introForm.do?recruitNo=' + recruitNo + '&pstnCmmncdNm=' + pstnCmmncdNm + '" class="btn btn-sm btn-success me-1 mb-1 mb-md-0">';
						html += '<td>';
// 						/main/introForm.do?recruitNo=" + recruitNo + "&pstnCmmncdNm=" + recruit[i].pstnCmmncdNm
// 						'<a href="/main/introForm.do?recruitNo=' + recruitNo + '&pstnCmmncdNm=' + pstnCmmncdNm + '" class="btn btn-sm btn-success me-1 mb-1 mb-md-0">';
        				html += '<a href="/main/recruitDetail.do?recruitNo=' +recruit[0].recruitNo + '&pstnCmmncdNm=' + recruit[i].pstnCmmncdNm +'"';
        				html += 'class="btn btn-sm btn-success me-1 mb-1 mb-md-0">';
        				
        				html += '지원서작성</a>';
        				html += '</td>';
        				html += '</tr>';
        			}
        			html += '</tbody>';
        			html += '</table>';
        			html += '</div>';
        			html += '</div>';
          			
        			console.log(html);
          			modalBody.innerHTML = html;
				}
			})
        }
        
       
       });
    </script>
    
</main>



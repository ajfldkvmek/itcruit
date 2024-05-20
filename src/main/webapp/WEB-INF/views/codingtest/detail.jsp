<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>Programming Challenge Interface</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
	// ajax 요청시 사용할 csrf 글로벌 변수설정
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
</script>

<!-- 부트스트랩 cdn -->
<!-- 코드미러 관련 설정 시작 -->
<link rel=stylesheet href="${pageContext.request.contextPath}/resources/codemirror/doc/docs.css">
<!-- 코드미러 기본 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/codemirror/lib/codemirror.css">

<!-- 전체화면 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/codemirror/addon/display/fullscreen.css">


<!-- /resources/codemirror -->
<!-- 에디터 테마 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/codemirror/theme/eclipse.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/codemirror/theme/monokai.css">

<script src="${pageContext.request.contextPath}/resources/codemirror/lib/codemirror.js"></script>
<script src="${pageContext.request.contextPath}/resources/codemirror/mode/javascript/javascript.js"></script>
<script src="${pageContext.request.contextPath}/resources/codemirror/addon/selection/active-line.js"></script>
<script src="${pageContext.request.contextPath}/resources/codemirror/addon/edit/matchbrackets.js"></script>

<!-- 전체화면 js -->
<script src="${pageContext.request.contextPath}/resources/codemirror/mode/xml/xml.js"></script>
<script src="${pageContext.request.contextPath}/resources/codemirror/addon/display/fullscreen.js"></script>

<!-- 코드미러 관련 설정 끝 -->

<style>

  body { 
    font-family: Arial, sans-serif;
    background-color: #121212;
    color: #ffffff; 
    margin: 0;
    padding: 0;
  }
  
  .container { 
    display: flex; 
    justify-content: space-between; 
    flex-wrap: wrap;
	height: 80vh;
  }

  .section { 
    background-color: #1e1e1e; 
    padding: 20px;
    margin-bottom: 20px; 
    border-radius: 5px;
    margin-top: 0;
    overflow: auto; 
	height: 40vh;
	}
  
	/*
	
	.code-editor { 
    height: 200px; 
    width: 100%; 
	height: 80%;
    background-color: #ffffff; 
    color: #333333; 
    border: none;
    padding: 10px;
    margin-bottom: 20px; /
    border-radius: 5px;
    box-sizing: border-box; 

  }
	
	*/  
  .result { 
    background-color: #262626; 
    padding: 10px;
    border-radius: 5px;
	height: 75%;
  }
  
  /* 코드 미러 관련 스타일 */
  .CodeMirror {border: 1px solid black; font-size:13px}
  

  /* 결과창 */
    .result textarea {
        width: 100%;
        overflow-x: auto;
        white-space: pre-wrap;
    }
  
  /* div 영역의 크기 설정*/
	.left {
        width: 29%;
		margin-right: 10px;
		height: 80%;
    }

    .right {
        width: 69%;
		margin-left: 10px;
    }
	
	#codeResult {
        resize: none;
        background-color: #1e1e1e;
		color: #a9b7c6;
		height: 80%;
		font-size: 17px;
    }
	
	.qstn-btn:hover {
	  color: #fff;
	  background-color: #6c757d;
	  border-color: #6c757d;
	  transform: scale(1.05);
	}
	
	/* 버튼 꾸미기 - 질문 */
	.qstn-btn {
	  color: #fff;
	  text-align: center;
	  vertical-align: middle;
	  user-select: none;
	  background-color: #6c757d;
	  border: 1px solid #6c757d;
	  padding: .375rem .75rem;
	  font-size: 1rem;
	  line-height: 1.5;
	  border-radius: .25rem;
	  transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	}
	
	/* 버튼 꾸미기 - 테스트 */
	.test-btn {
	  margin-right: 10px;
	  color: #fff;
	  text-align: center;
	  vertical-align: middle;
	  user-select: none;
	  background-color: #198754;
	  border: 1px solid #198754;
	  padding: .375rem .75rem;
	  font-size: 1rem;
	  line-height: 1.5;
	  border-radius: .25rem;
	  transition: color .15s ease-in-out, background-color .15s ease-in-out, 
	  			border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	  float: right;
	}
	
	.test-btn:hover {
	  color: #fff;
	  background-color: #198754;
	  border-color: #198754;
	  transform: scale(1.05);
	}
	
	/* 버튼 꾸미기 - 제출 */
	.submit-btn {
	  margin-right: 10px;
	  color: #fff;
	  text-align: center;
	  vertical-align: middle;
	  user-select: none;
	  background-color: #0d6efd;
	  border: 1px solid #0d6efd;
	  padding: .375rem .75rem;
	  font-size: 1rem;
	  line-height: 1.5;
	  border-radius: .25rem;
	  transition: color .15s ease-in-out, background-color .15s ease-in-out, 
	  			border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	  float: right;
	}
	
	.submit-btn:hover {
	  color: #fff;
	  background-color: #0d6efd;
	  border-color: #0d6efd;
	  transform: scale(1.05);
	}

	
	.login-btn {
	  margin-right: 10px;
	  color: #fff;
	  text-align: center;
	  vertical-align: middle;
	  user-select: none;
	  background-color: #31d2f2;
	  border: 1px solid #31d2f2;
	  padding: .375rem .75rem;
	  font-size: 1rem;
	  line-height: 1.5;
	  border-radius: .25rem;
	  transition: color .15s ease-in-out, background-color .15s ease-in-out, 
	  			border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	  float: right;
	}
	
	.navbar-application a {
	    color: yellow; /* 원하는 색상으로 변경 */
	}

</style>
</head>

<body>

	<header>
        <!-- Logo Nav START -->
        <nav class="navbar navbar-expand-xl">
			<div class="navbar navbar-dark navbar-expand-lg navbar-application navbar-breadcrumb">
			  <a class="navbar-brand" href="/">
<!-- 			   	 <img alt="logo" width="24" src="/assets/bi-symbol-light-4a9edc980025418d6883d7519df4acf2b6c65f068508931dff0881d1c5ad4721.png"> --></a>  
				
				<a href="/codingtest/list.do">코딩테스트 문제</a> >
				<a href="/codingtest/list.do?pastQstnCtgryNm=${codingtestVO.pastQstnCtgryNm }">${codingtestVO.pastQstnCtgryNm }</a> >
				<a href="/codingtest/list.do?qstnSubject=${codingtestVO.qstnSubject }">${codingtestVO.qstnSubject }</a> >
				<span>${codingtestVO.qstnTtl }</span> 

			</div>
        </nav>
    </header>



<div class="container">

  <!-- Left Column -->
  <div class="left">
    <!-- Problem Statement -->
    <div class="section">
      <h2>문제 설명</h2>
	  <hr/>
      <p>${codingtestVO.qstnCn }</p>
	 
    </div>

    <!-- Input/Output Examples -->
    <div class="section">
      <h3>입출력 예</h3>
	  <hr/>
      <div class="input-output">
        <strong>${codingtestVO.qstnExmpl }</strong><br>
      </div>
    </div>
   
   
    <form action="/codingtest/question.do" method="post" id="goQustion">
    	<input type="hidden" id="qstnNo" name="qstnNo" value="${codingtestVO.qstnNo }">
    	<input type="hidden" id="qstnSubject" name="qstnSubject"  value=" ${codingtestVO.qstnSubject }">
    	<input type="hidden" id="pastQstnCtgryNm" name="pastQstnCtgryNm"  value="${codingtestVO.pastQstnCtgryNm }">
    	<sec:csrfInput/>
    </form>
  
    <button class="qstn-btn" id="autoInput">자동완성</button>
    <input type="hidden" id="inputCode" 
    	value="public class Solution {

	static int totalNumber = 0;
	
	public int solution(int num) {
		
		if(num % 2 == 1)
			totalNumber += num;
		
		
		return totalNumber;
	}
	
}">
    
  </div>

  <!-- Right Column -->
  <div class="right">
    <!-- Code Input -->
    <div class="section">
	    <span style="float: left;">언어: 
			<select id="selectLang">
				<option selected value="c">C</option>
				<option value="cpp">C++</option>
				<option value="cs">C#</option>
				<option value="java">JAVA</option>
				<option value="javascript">JAVASCRIPT</option>
				<option value="python">PYTHON</option>
			</select>
		</span>	
      <span style="float: right;">테마: <!-- selectTheme -->
		  <select onchange="selectTheme()" id=select>
			<option selected>default</option>
<!-- 			<option>3024-day</option> -->
<!-- 			<option>3024-night</option> -->
<!-- 			<option>ayu-dark</option> -->
<!-- 			<option>cobalt</option> -->
<!-- 			<option>darcula</option> -->
			<option>eclipse</option>
<!-- 			<option>midnight</option> -->
			<option>monokai</option>
<!-- 			<option>panda-syntax</option> -->
		</select>
	 </span>
	<br/>
							
		<form action="/codingtest/solve.do" method="post" id="testForm">
			<input type="hidden" id="lang" name="lang" value="c">
			<input type="hidden" id="flag" name="flag" value="">
			<input type="hidden" id="qstnNo" name="qstnNo" value="${codingtestVO.qstnNo }">
			<input type="hidden" id="qstnScr" name="qstnScr"  value="${codingtestVO.qstnScr }">
			<textarea id="code" name="code">${codingtestVO.c }
		</textarea>
			<sec:csrfInput/>
		</form>
		
		<span>※코드블럭을 선택하시고 f11을 눌러 전체화면 모드를 사용할 수 있습니다.</span>
		
	</div>

    <!-- Result -->
    <div class="section">
      <h3>결과창</h3>
      <div class="result">
		<!-- 여기에 테스트 결과가 나올 예정 -->
        <textarea id="codeResult" name="codeResult"></textarea>
      </div>
    </div>
	
	<c:choose>
		<c:when 
			test="${empty sessionScope['SPRING_SECURITY_CONTEXT'].authentication.principal.username}">
			<button type="button" class="login-btn" id="login-btn"
			onclick="redirectToLoginPage()">로그인</button>
		</c:when>		
		<c:otherwise>
			<button type="button" class="submit-btn" id="submit-btn">제출하기</button>
			<!-- 여기에 테스트 버튼 float right -->
			<button type="button" class="test-btn" id="test-btn">테스트</button>
		</c:otherwise>
	</c:choose>
<!-- 	<!-- 여기에 제출 버튼 float right --> 
<!-- 	<button type="button" class="submit-btn" id="submit-btn">제출하기</button> -->
<!-- 	<!-- 여기에 테스트 버튼 float right --> 
<!-- 	<button type="button" class="test-btn" id="test-btn">테스트</button> -->
	
	
  	<input type="hidden" id="c" name="c" value="${codingtestVO.c }">
  	<input type="hidden" id="cs" name="cs" value="${codingtestVO.cs }">
  	<input type="hidden" id="cpp" name="cpp" value="${codingtestVO.cpp }">
  	<input type="hidden" id="java" name="java" value="${codingtestVO.java }">
  	<input type="hidden" id="javascript" name="javascript" value="${codingtestVO.javascript }">
  	<input type="hidden" id="python" name="python" value="${codingtestVO.python }">
	
  </div>
  
  
</div>

<script>

	
//  id >> inputCode autoInput
	const autoInput = document.getElementById("autoInput");
	autoInput.addEventListener("click", function() {
		const inputCode = document.getElementById("inputCode").value;
		editor.setValue(inputCode);
	});


	function redirectToLoginPage() {
	    window.location.href = "/main/loginForm.do";
	}

	
	function submitForm() {
	    document.getElementById("goQustion").submit();
	}
	
	var solve = $("#testForm");
	
	var c = $("#c").val();
	var cs = $("#cs").val();
	var cpp = $("#cpp").val();
	var java = $("#java").val();
	var javascript = $("#javascript").val();
	var python = $("#python").val();
	var myLang = $("#lang");
	var flag = $("#flag");
	
	
	var codeResult = $("#codeResult");
	
	// 코드미러 스크립트 시작 ##########################################################
    var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
      lineNumbers: true,
      styleActiveLine: true,
	  matchBrackets: true,
      extraKeys: {
        "F11": function(cm) {
          cm.setOption("fullScreen", !cm.getOption("fullScreen"));
        },
        "Esc": function(cm) {
          if (cm.getOption("fullScreen")) cm.setOption("fullScreen", false);
        }
      }
    });
  
  
  var input = document.getElementById("select");
  function selectTheme() {
    var theme = input.options[input.selectedIndex].textContent;
    editor.setOption("theme", theme);
    location.hash = "#" + theme;
  }
  var choice = (location.hash && location.hash.slice(1)) ||
               (document.location.search &&
                decodeURIComponent(document.location.search.slice(1)));
  if (choice) {
    input.value = choice;
    editor.setOption("theme", choice);
  }
  CodeMirror.on(window, "hashchange", function() {
    var theme = location.hash.slice(1);
    if (theme) { input.value = theme; selectTheme(); }
  });
  
  // 코드미러 스크립트 끝 ##########################################################
  
  $(function(){
	  //언어 선택시 바뀔 코드 부분 시작
    $("#selectLang").on('change', function(){
        var lang = $(this).val();
        myLang.val(lang);
        var code = '';
        switch(lang) {
            case 'c':
                code = c;
                break;
            case 'cpp':
                code = cpp;
                break;
            case 'cs':
                code = cs;
                break;
            case 'java':
                code = java;
                break;
            case 'javascript':
                code = javascript;
                break;
            case 'python':
                code = python;
                break;
        }
       		//codearea.val(code);
       		//alert("코드는: " +code);
        	editor.setValue(code);
        	//$("#code").val(editor.setValue(code));
	    });
 	 //언어 선택시 바뀔 코드 부분 끝
    
 	 
 	 //테스트 버튼클릭시 
 	 $("#test-btn").click(function() {
 		flag.val(false);
       	
        var formData = {
    		qstnMcode : $("#qstnMcode").val(),
    		lang : $("#lang").val(),
    		flag : flag.val(),
    		qstnNo : $("#qstnNo").val(),
    		code : editor.getValue(),
    		qstnScr : $("#qstnScr").val()
        }
        
        console.log("formData : ", formData);
        
        
        $.ajax({
        	url: '/codingtest/solve.do',
            type: 'POST',
    		data: JSON.stringify(formData),
    		beforeSend: function(xhr) {
                xhr.setRequestHeader(header, token);
            },
            contentType : "application/json; charset=utf-8",
            success: function(data){
            	codeResult.val(data);
            },
            error: function(data){
            	alert("서버에러");
            }
        });
       
    });
 
 	 //제출 버튼클릭시 
 	 $("#submit-btn").click(function() {
 		flag.val(true);
        var formData = {
    		qstnMcode : $("#qstnMcode").val(),
    		lang : $("#lang").val(),
    		flag : flag.val(),
    		qstnNo : $("#qstnNo").val(),
    		code : editor.getValue(),
    		qstnScr : $("#qstnScr").val()
        }
        console.log("formData : ", formData);
        $.ajax({
        	url: '/codingtest/solve.do',
            type: 'POST',
    		data: JSON.stringify(formData),
    		beforeSend: function(xhr) {
                xhr.setRequestHeader(header, token);
            },
            contentType : "application/json; charset=utf-8",
            success: data => {
            	codeResult.val(data);
            	if(data.includes("통과")){
            		swal({
                        title: "점수획득!",
                        text: "목록으로 이동하시겠습니까?",
                        buttons: true,
                        
                        //dangerMode: true,
                      }).then((page) => {
                        if (page) {
                          location.href="/codingtest/list.do";
                        } else {
                          
                        }
                      });
            	} 
            },
            error: function(data){
            	alert("서버에러");
            }
        });
       
    });
 	 
	});
  
	
</script>

</body>
</html>
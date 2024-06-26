<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<style>
.postForm{
    padding: 50px;
}

.postForm-title{
	width: 100%;
    border: none;
	font-size: 30px;
}

.content{
	width: 100%;
	height: 400px;
}

input[type="text"], textarea {
    outline: none; /* 클릭 시 테두리 제거 */
    border: 1px solid white; /* 기본적인 테두리 설정 */
/*     padding: 8px; */
/*     margin-bottom: 10px; */
}

input[type="text"]:focus, textarea:focus {
    border-color: #ffffff; /* 클릭 시 테두리 색상 변경 */
}

.submitBtn{
    border: none;
	padding: 10px 20px 10px 20px;
    border-radius: 10px;
	float: right;
}
.submitBtn:hover{
	background-color: lightgray;
}

</style>

<!-- **************** MAIN CONTENT START **************** -->
<main>
<!-- =======================
Page Banner START -->
<section class="bg-light py-5">
	<div class="container">
		<div class="row g-4 g-md-5 position-relative">
			<!-- SVG decoration -->
			<figure class="position-absolute top-0 start-0 d-none d-sm-block">	
				<svg width="22px" height="22px" viewBox="0 0 22 22">
					<polygon class="fill-purple" points="22,8.3 13.7,8.3 13.7,0 8.3,0 8.3,8.3 0,8.3 0,13.7 8.3,13.7 8.3,22 13.7,22 13.7,13.7 22,13.7 "></polygon>
				</svg>
			</figure>

			<!-- Title and Search -->
			<div class="col-lg-10 mx-auto text-center position-relative">
				<!-- SVG decoration -->
				<figure class="position-absolute top-50 end-0 translate-middle-y">
					<svg width="27px" height="27px">
						<path class="fill-orange" d="M13.122,5.946 L17.679,-0.001 L17.404,7.528 L24.661,5.946 L19.683,11.533 L26.244,15.056 L18.891,16.089 L21.686,23.068 L15.400,19.062 L13.122,26.232 L10.843,19.062 L4.557,23.068 L7.352,16.089 L-0.000,15.056 L6.561,11.533 L1.582,5.946 L8.839,7.528 L8.565,-0.001 L13.122,5.946 Z"></path>
					</svg>
				</figure>
				<!-- Title -->
<!-- 				<h1 class="display-6">Hello, how can we help?</h1> -->
				<!-- Search bar -->
<!-- 				<div class="col-lg-8 mx-auto text-center mt-4"> -->
<!-- 					<form class="bg-body shadow rounded p-2"> -->
<!-- 						<div class="input-group"> -->
<!-- 							<input class="form-control border-0 me-1" type="text" placeholder="Ask a question..."> -->
<!-- 							<button type="button" class="btn btn-blue mb-0 rounded"><i class="bi bi-search"></i></button> -->
<!-- 						</div> -->
<!-- 					</form> -->
<!-- 				</div> -->
			</div>

			<!-- Category START -->
      <div class="col-12">
				<div class="row g-4 text-center">
				  <!-- <p class="mb-0">Choose a category to quickly find the help you need</p> -->
					<!-- Category item -->
					<div class="col-sm-6 col-md-4">
						<div class="card card-body card-border-hover p-0">
							<a href="/notice/notice.do" class="p-3">
								<h2><i class="bi bi-megaphone"></i></h2>
								<h6 class="mb-0">공지사항</h6>
							</a>
						</div>
					</div>

					<!-- Category item -->
					<div class="col-sm-6 col-md-4">
						<div class="card card-body card-border-hover p-0">
							<a href="/faq/faq.do" class="p-3">
								<h2><i class="fas fa-hands-helping transition-base"></i></h2>
								<h6 class="mb-0">FAQ</h6>
							</a>
						</div>
					</div>

					<!-- Category item -->
					<div class="col-sm-6 col-md-4">
						<div class="card card-body card-border-hover p-0" style="border: 3px solid slategray;">
							<a href="/inquiry/form" class="p-3">
								<h2><i class="bi bi-chat-square-text"></i></h2>
								<h6 class="mb-0">문의게시판</h6>
							</a>
						</div>
					</div>

					<!-- Category item -->
					<!-- <div class="col-sm-6 col-md-3">
						<div class="card card-body card-border-hover p-0">
							<a href="#" class="p-3">
								<h2><i class="fas fa-flag transition-base"></i></h2>
								<h6 class="mb-0">Getting started</h6>
							</a>
						</div>
					</div> -->
				</div> <!-- Row END -->
      </div>
			<!-- Category END -->
		</div>
	</div>
</section>
<!-- =======================Page Banner END -->

<!-- =======================Page content START -->
<section class="pt-5 pb-0 pb-lg-5">
	<div class="container">
	
		<div class="row g-4 g-md-5">
			<!-- Main content START -->
			<div class="col-12" >
				<!-- Title -->
				<h3 class="mb-4">문의</h3>

				<div style="border: 1px solid gray; border-radius: 5px;">

				<form class="postForm" id="insertForm" method="post" action="/inquiry/insert.do" enctype="multipart/form-data">
				<input type="text" class="postForm-title" id="title" name="bbsTtl" value="" placeholder="제목을 입력해주세요" required><hr>
				<textarea class="content" id="content" name="bbsCn" required></textarea><br>

				<div class="form-group" >
					<div class="custom-file" style="border: 1px solid lightgray; padding: 5px;">
						<input type="file" class="custom-file-input" id="boFile" name="boFile" multiple="multiple"> 
							<label class="custom-file-label" for="customFile">파일을 선택해주세요</label>
					</div>
				</div>
				<br> 
				<button class="submitBtn" id="submitBtn" type="submit">등록</button><br>
				 <sec:csrfInput/>
			</form>
		    </div>

				
			</div>
			<!-- Main content END -->
		
		</div><!-- Row END -->
	</div>
</section>
<!-- =======================Page content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<script type="text/javascript">
$(function(){
	//CKEDITOR
	CKEDITOR.replace("content", {
		filebrowserUploadUrl: '/imageUpload.do?${_csrf.parameterName}=${_csrf.token}',
		height: "400px"
	});
	
	
});	
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#wrap {
	margin: 100px auto;
	width: 700px;
	min-height: 800px
}
/* #link{margin-left: 1000px; margin-top: 20px} */
#loginTitle {
	text-align: center;
	st
}

.font30 {
	font-size: 30px;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="/third_prj/resources/css/bootstrap.min.css">


<title>스터디그룹 개설하기</title>

<script src="http://localhost:8080/third_prj/resources/js/jquery-3.3.1.slim.min.js"></script>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>
<link rel="stylesheet" href="http://localhost:8080/third_prj/resources/css/font.css"/>

<script type="text/javascript">
	$(function() {
		$('#summernote').summernote({
			placeholder : '공지사항입니다  :)',
			tabsize : 2,
			height : 200,
			lang : 'ko-KR',
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("#request").click(function() {
			if ($("#subject").val() == "") {
				alert("주제를 선택해주세요.");
				$("#subject").focus();
				return;
			}//end if
			if ($("#loc").val() == "") {
				alert("지역을 선택해주세요.");
				$("#loc").focus();
				return;
			}//end if
			if ($("#name").val() == "") {
				alert("스터디 이름을 입력해주세요.");
				$("#name").focus();
				return;
			}//end if
			if ($("#detail").val() == "") {
				alert("스터디의 상세설명을 입력해주세요.");
				$("#detail").focus();
				return;
			}//end if

		});//click
	});//ready
</script>
<script type="text/javascript">
	function schfile() {
		document.getElementById("real_file").click();
		document.getElementById("file_sub").value = document
				.getElementById("real_file").value;
	}
	function previewFile() {
		var preview = document.querySelector('#img');
		var file = document.querySelector('input[type=file]').files[0];
		var reader = new FileReader();
		reader.addEventListener("load", function() {
			preview.src = reader.result;
		}, false);
		if (file) {
			reader.readAsDataURL(file);
		}
	}
</script>

</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/layout/navbar.jsp"></c:import>
	<!--  -->
<form action="/study_group/createStudy.do">	
	<div id="wrap">

		 <!-- 점보트론 : 전광판 -->
    <section class="text-center bg-white mb-0" style="margin-top:30px; margin-bottom:20px;">
       <div class="container">
          <h1 class="jumbotron-heading">스터디 그룹 개설하기</h1>
       </div>
    </section>
    <div style="height:20px;"></div>
    <!-- 점보트론 : 전광판 -->
		
			<div class="form-group" style="margin-bottom: 70px; margin-top: 40px;" >

				<img alt="" src="http://localhost:8080/third_prj/resources/images/sub.png"
					style="width: 50px; height: 50px; margin-bottom: 20px; margin-right: 15px;">
				<label class="font30">어떤 <strong>주제</strong> 와 관련된 스터디인가요?
				</label> <select class="form-control" id="subject">
					<option value="">주제를 선택해주세요</option>
					<option value="언어" >언어</option>
					<option value="취업">취업</option>
					<option value="취미">취미</option>
					<option value="기타">기타</option>
				</select>
			</div>

			<div class="form-group" style="margin-bottom: 70px;">
				<img alt="" src="http://localhost:8080/third_prj/resources/images/loc.png" style="width: 50px; height: 50px; margin-bottom: 20px; margin-right: 15px;"> <label class="font30">새로운 스터디 그룹의 주 <strong>지역</strong>은 어디인가요?
				</label>
				<select class="form-control" id="loc">
					<option value="">지역을 선택해주세요</option>
					<option value="신촌">신촌</option>
					<option value="홍대">홍대</option>
					<option value="종각">종각</option>
					<option value="건대">건대</option>
					<option value="노원">노원</option>
					<option value="강남">강남</option>
				</select>
			</div>

			<div class="form-group" style="margin-bottom: 70px;">
				<img alt="" src="http://localhost:8080/third_prj/resources/images/name.png" style="width: 50px; height: 50px; margin-bottom: 20px; margin-right: 15px;"> <label class="font30">스터디의 <strong>이름</strong>을 정해주세요
				</label> <input type="text" class="form-control" id="name" placeholder="스터디의 이름을 입력해주세요(24자까지 입력가능합니다.)" id="name">
			</div>

			<div class="form-group" style="margin-bottom: 70px;">
				<img alt="" src="http://localhost:8080/third_prj/resources/images/Image.png" style="width: 50px; height: 50px; margin-bottom: 20px; margin-right: 15px;"> <label for="exampleFormControlTextarea1" style="font-size: 30px;"> <strong>대표이미지</strong>를 선택해주세요
				</label>
				<div class="input-group mb-3">
					<input type='file' name='file' id='real_file' onchange="previewFile()" style='display: none;' /> <input type="text" id='file_sub' style="width: 700px; border: 0px; display: none" readonly="readonly"> <a href="<?echo $PHP_SELF;?>" onclick="schfile(); return false;"><img width="700" height="300" id="img" src="http://localhost:8080/third_prj/resources/images/preview_Image.png" border="0" title='찾아보기' alt='찾아보기'></a>
				</div>
			</div>

			<div class="form-group" style="margin-bottom: 70px;">
				<img alt="" src="http://localhost:8080/third_prj/resources/images/detail.png" style="width: 50px; height: 50px; margin-bottom: 20px; margin-right: 15px;"> <label style="font-size: 26px;">스터디 <strong>주제</strong>와 이 방의 <strong>규칙</strong>등을 자세히 설명해주세요
				</label>
				<div style="resize: none; width: 700px; height: 300px;">
					<input type="text" class="form-control" id="summernote">
					<!-- <textarea id="detail" class="form-control" rows="3"
					style="resize: none; width: 700px; height: 300px;"
					class="form_control" name="contents"
					placeholder="스터디의 상세설명을 입력해주세요"></textarea> -->
				</div>
			</div>

			<div class="row" style="margin-bottom: 60px;">
				<a class="btn btn-secondary btn-lg" href="#void" role="button" style="margin-left: 250px; margin-right: 10px;">취소</a> 
				<input type="submit" value="승인요청" class="btn btn-primary btn-lg" name="request" id="request" style="right: 100">
			</div>
	</div>
</form>
	<!-- footer -->
	<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="http://localhost:8080/third_prj/resources/js/popper.min.js"></script>
	<script src="http://localhost:8080/third_prj/resources/js/bootstrap.min.js"></script>


</body>
</html>








































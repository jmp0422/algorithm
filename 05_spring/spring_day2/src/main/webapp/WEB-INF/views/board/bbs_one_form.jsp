<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: #18de02;
}

button {
	background: pink;
}

.t1 { /* .은 클래스 선택!, 여러개선택!  */
	background: yellow;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>


	<!-- 이쪽에 메뉴바 포함 할꺼임 -->
	<jsp:include page="../common/menubar.jsp" />

	<div class="content">
		<br>
		<br>
		<div class="innerOuter">
			<a href="bbs_list"><button id="b1">게시판 전체 목록</button></a> <a href="bbs">
				<button id="b1">첫페이지로</button>
			</a>
			<form action="bbs_one" method="get">
				<table border="1" class="table table-dark table-hover">
					<tr>
						<td class="t1">검색할 타이틀 :</td>
						<td><input name="title" value="게시글 5"></td>
					</tr>
					<tr>
						<td colspan="2" class="t1">
							<button id="b2" class="btn btn-danger">검색할 title 데이터 전송</button>
						</td>
					</tr>
				</table>

			</form>



		</div>
		<br>
		<br>
	</div>


	<!-- 이쪽에 푸터바 포함할꺼임 -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>







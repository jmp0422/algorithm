<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: yellow;
}

td {
	width: 100px;
	text-align: center;
}

.top {
	background: black;
	color: white;
}

.down {
	background: lime;
}
</style>
</head>
<body>

   <jsp:include page="../common/menubar.jsp"/>
    
    <div class="content">
        <br><br>
        <div class="innerOuter">

	<hr>
	<table>
		<tr>
			<td class="top">no</td>
			<td class="top">title</td>
			<td class="top">content</td>
			<td class="top">writer</td>
		</tr>

		<c:forEach items="${list}" var="bag"> 

<tr>
				<td class="down">${bag.no}</td>
				<td class="down"><a href="bbs_one.multi?title=${bag.title}">${bag.title}</a>
				</td>
				<td class="down">${bag.content}</td>
				<td class="down">${bag.writer}</td>
			</tr>

		</c:forEach>
	</table>
	
	
	        </div>
        <br><br>
    </div>
    
    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>
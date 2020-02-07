<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul><%
		if(session.getAttribute("name")==null){
			%>
			<li><a href="logingo">로그인</a></li>
			<%
		}
	%>
	<%
		if(session.getAttribute("name")!=null){
			%>
				<li><a href="logout">로그아웃</a></li>
				<li><a href="insertgo">계약정보입력</a></li>
				<li><a href="selectallgo">전체조회</a></li>
				<li><a href="bohumking">보험왕조회</a></li>
			<%
		}
	%>
		
		<li><a href="selectonego">개인별조회</a></li>
	</ul>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.*,staff_tbl.DTO" import="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><td>부서명</td><td>직급</td><td>이름</td><td>총계약금액</td></tr>
	<%
		DecimalFormat df = new DecimalFormat("#,###");
		DTO d = (DTO)request.getAttribute("d");
		out.print("<tr><td>"+d.getBname()+"</td>");
		out.print("<td>"+d.getSrank()+"</td>");
		out.print("<td>"+d.getSname()+"</td>");
		out.print("<td>"+df.format(d.getSum())+"</td></tr>");
	%>
</table>
<br>
	<table border="1">
	<tr><td>증권번호</td><td>가입자명</td><td>계약금액</td><td>계약일자</td></tr>
	<%
		List<DTO> list = (List)request.getAttribute("list");
		for(int i=0;i<list.size();i++){
			DTO dlist = list.get(i);
			out.print("<tr><td>"+dlist.getIno()+"</td>");
			out.print("<td>"+dlist.getIname()+"</td>");
			out.print("<td>"+df.format(dlist.getIamount())+"</td>");
			out.print("<td>"+dlist.getIdate()+"</td>");
		}
	%>
	</table>
</body>
</html>
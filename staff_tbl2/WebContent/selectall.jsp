<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,staff_tbl.DTO" import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr><td>증권번호</td><td>가입자명</td><td>계약금액</td><td>계약직원이름</td><td>계약일자</td></tr>
	<%
		DecimalFormat df = new DecimalFormat("#,###");
		List list = (List) request.getAttribute("list");
		for(int i=0;i<list.size();i++){
			DTO d = (DTO)list.get(i);
			out.print("<TR><TD>"+d.getIno()+"</TD>");
			out.print("<TD>"+d.getIname()+"</TD>");
			out.print("<TD>"+df.format(d.getIamount())+"</TD>");
			out.print("<TD>"+d.getSno()+"</TD>");
			out.print("<TD>"+d.getIdate()+"</TD></tr>");
		}
	
	%>
	</table>
</body>
</html>
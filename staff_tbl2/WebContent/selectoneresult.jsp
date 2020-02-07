<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,staff_tbl.DTO" import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr><td>가입자명</td><% out.print("<td>"+request.getAttribute("iname")+"</td>"); %></tr>
		<tr><td>증권번호</td><td>계약금액</td><td>계약직원이름</td><td>계약일자</td></tr>
	<%
		DecimalFormat df = new DecimalFormat("#,###");
		List<DTO> list = (List)request.getAttribute("list");
		if(list.size()==0){
			%>
				<script>
					alert("계약 내용이 존재하지 않습니다");
				</script>
			<%
		}
		else{
			for(int i=0;i<list.size();i++){
				DTO d = (DTO)list.get(i);
				out.print("<tr><td>"+d.getIno()+"</td>");
				out.print("<td>"+df.format(d.getIamount())+"</td>");
				out.print("<td>"+d.getSname()+"</td>");
				out.print("<td>"+d.getIdate()+"</td></tr>");
				
			}
		}
	%>
	</table>
</body>
</html>
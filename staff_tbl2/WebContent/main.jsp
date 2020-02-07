<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin: 0px; padding: 0px;
	}
	html,body{
		width: 100%;height:100%;
	}
	.divall{
		width: 100%;height:100%;
	}
	.header{
		height:10%;
		line-height: 100px;
	}
	.nav{
		height: 5%;
	}
	.body{
		height: 78%;
	}
	.footer{
		height: 7%;
		line-height: 50px;
	}
	h3{
		text-align: center;
	}
	li{
		display: inline-block;
	}
	p,h2{
		text-align: center;
	}
	
</style>
</head>
<body>
	<div class="divall">
		<div class="header">
			<jsp:include page="header.jsp"/>
		</div>
		<div class="nav">
			<jsp:include page="nav.jsp"/>
		</div>
		<div class="body">
			<jsp:include page="${target}.jsp"/>
		</div>
		<div class="footer">
			<jsp:include page="footer.jsp"/>
		</div>
	</div>
	<%if(request.getAttribute("result")!=null){
		if(request.getAttribute("result").equals("true")){
			%>
				<script>
					alert("로그인 성공")
				</script>
			<%
		}
		else{
			%>
				<script type="text/javascript">
					alert("로그인 실패")
				</script>
			<%
		}
	}
		
	%>
	<%
		if(request.getAttribute("logout")!=null){
			%>
				<script type="text/javascript">
					alert("로그아웃 되었습니다")
				</script>
			<%
		}
	%>
	<%if(request.getAttribute("insertresult")!=null){
		if(request.getAttribute("insertresult").equals("true")){
			%>
				<script>
					alert("성공적으로 저장되었습니다")
				</script>
			<%
		}
		else{
			%>
				<script type="text/javascript">
					alert("저장에 실패하였습니다")
				</script>
			<%
		}
	}
		
	%>
</body>
</html>
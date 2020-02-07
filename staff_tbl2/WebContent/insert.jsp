<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function check(){
		if(!insfm.ino.value){
			alert("증권번호가 입력되지 않았습니다")
			insfm.ino.focus();
			return false;
		}
		if(!insfm.iname.value){
			alert("가입자명이 입력되지 않았습니다")
			insfm.iname.focus();
			return false;
		}
		if(!insfm.iamount.value){
			alert("계약금액이 입력되지 않았습니다")
			insfm.iamount.focus();
			return false;
		}
		if(!insfm.sno.value){
			alert("직원번호가 입력되지 않았습니다")
			insfm.sno.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h4>계약정보입력</h4>
	<form action="insert" name="insfm" onsubmit="return check()">
		<table>
			<tr>
				<td>증권번호</td>
				<td><input type="text" name="ino"></td>
			</tr>
			<tr>
				<td>가입자명</td>
				<td><input type="text" name="iname"></td>
			</tr>
			<tr>
				<td>계약금액</td>
				<td><input type="text" name="iamount"></td>
			</tr>
			<tr>
				<td>직원번호</td>
				<td><input type="text" name="sno"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="저장"></td>
			</tr>
		</table>
	</form>
</body>
</html>
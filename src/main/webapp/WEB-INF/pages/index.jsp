<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>

		<!--css,js-->	
		<style type="text/css">
			*{margin:0;padding:0;}
		</style>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<script type="text/javascript" src="../../js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
	</head>

	<frameset rows="15%,85%">
		<frame src="<%=path%>/head">
		<frameset cols="15%,85%">
			<frame src="<%=path%>/left">
			<frame src="<%=path%>/right" name="mywork">
		</frameset>
	</frameset>
</html>
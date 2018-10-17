<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%String path=request.getContextPath(); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>login.html</title>	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">   
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
</head>
<body class="body_login">

<form name="loginForm" method="post" action="" >

	<div class="login_middle_center"><!--这个是起居中定位作用-!-->
		<div class="login_bj"><!--这个是背景大图片Height=684px,width=1000px-!-->
			
			<div class="login_bj_main"><!--这个定位了登录输入框位置-!-->
				<div class="login_ems_logo">					
					<span style="font-size:20px;font-weight: bold;color:#6E6E6E;font-style:Microsoft YaHei;letter-spacing:8px;">自定义框架系统</span>
 				</div>
 				<p><p>
 				<div class = "form-inline">
		            <div class = "form-group">
		            	<label>用户名:</label>
		            	<input type = "text" class = "form-control" id="username" name="username" placeholder = "请输入用户名" value="" style="width:120px;">
		            </div>
		            <p>
		            <div class = "form-group">
		            	<label>密码:&nbsp;&nbsp;&nbsp;</label>
		            	<input type = "password" class = "form-control" id="password" name="password" placeholder = "请输入密码" value="" style="width:120px;">
		            </div>
           		 </div>
				 
				<!-- <div class="login_input_row">这个验证码背景-!
					<div class="text"><@s.text name="login_valid_code"/></div>
					<div class="inputValid" >
						注册码 charType:
						<input type="text" name="certCode" <#if errCode==2>style="border:1px solid red;"</#if> class="input_text_w" value="" size="7" >
					</div>
					<div class="imgValid" >
						<div style="clear:both;"></div>
						<img id='cert_img' border="0"  src="${base}/ValidCode.jpg?width=100&height=31&charFontSize=24&charType=0&charCount=3"	onclick="refreshValiCode()" />
					</div>
					<div style="color:#FF7F27;text-align:left;">
						<#if errMsg?exists>${errMsg}</#if>
					</div>
				</div> -->
				<p>
				<div><!--登录的按钮背景宽度-!-->
					&nbsp;&nbsp;&nbsp; 
					<input class="btn btn-primary" type="button" onclick="hehe();" value='登陆' /> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="btn btn-primary" type="reset" value='重置' />
				</div>
			</div>
		</div> 			
	</div>

</form>
	
<div class="login_bottom_logo"></div>
<div class="login_bottom_text"></div>
</body>
<script type="text/javascript">
//判断密码，用户名是否为空
	function hehe(){
		var username=$("#username").val();
		var password=$("#password").val();
		if(username==null||username==""){
			alert("请输入用户名");
			return;
		}
		if(password==null||password==""){
			alert("请输入密码");
			return;
		}
//用ajax访问servlet，进行用户名和密码的验证	
		$.ajax({
			type :'get',//请求方式		
			url: '<%=path%>/logined',
			dataType :'text',//返回数据格式有xml  html   json  text
			data:{"username":username,"password":password},
			success:function(data){//与服务器交互成功的回调函数
				alert("data="+data);
				if(data=="error"){
					alert("您输入的信息不匹配");
				}else{
					window.location.href="<%=path%>/index";
				}
			}
		});
	}
</script>
</html>

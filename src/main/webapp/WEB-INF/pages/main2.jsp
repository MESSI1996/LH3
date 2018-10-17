<%@page import="com.tz.zz.pojo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
 	String path=request.getContextPath();
 	List<User> userlist=(List<User>)request.getAttribute("userlist");
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="content-type" content="text/html; charset=UTF-8">   
	<script type="text/javascript" src="<%=path%>/js/jquery-1.11.0.js" ></script>
		<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" />
		<script type="text/javascript" src="<%=path%>/js/bootstrap.js" ></script>
</head>
<body style="text-align=center;">
	<ul class = "nav nav-tabs" id = "navTabs"> 
			 	<!--如果不是A标签，就用 data-target属性表示目标内容-->
			 	<li class="active"><a href="#userTab" data-toggle="tab">用户管理</a></li>  			 	
			 </ul>
	<form name="查询" >
		<input style="text-align: center;;width:300px;height:40px;border:1px solid grey;border-radius:15px ;" type="text" name="username" id="username1"  placeholder="请输入用户名" />
		<input class="btn btn-primary" type="button" onclick="QUERY();" value="查询" /> 
		<button class = "btn btn-default" type="button" id="addBtn" onclick="ADD();"
        					data-toggle="modal" data-target="#addModal" data-keyboard="true">新增</button>
		<table id="userListTable">
										<thead>
											<tr>												
												<th style="text-align: center;width: 200px;height: 20px;border: 1px solid lightslategray;">用户姓名</th>
												<th style="text-align: center;width: 200px;height: 20px;border: 1px solid lightslategray;border-bottom: 1px solid lightslategray;">用户ID</th>
												<th style="text-align: center;width: 200px;height: 20px;border: 1px solid lightslategray;border-bottom: 1px solid lightslategray;">出生日期</th>
												<th style="text-align: center;width: 200px;height: 20px;border: 1px solid lightslategray;border-bottom: 1px solid lightslategray;">性别</th>
												<th style="text-align: center;width: 200px;height: 20px;border: 1px solid lightslategray;border-bottom: 1px solid lightslategray;">住址</th>
											</tr>
										</thead>
										<tbody style="text-align: center;">
										
										</tbody>
	</table>
	</form>
	<br/><br/><br/><br/><br/><br/>
	<form name="delete" action="<%=path%>/delete" method="get">
		<input style="text-align: center;;width:300px;height:40px;border:1px solid grey;border-radius:15px ;" type="text" name="username" id="username2" placeholder="请输入用户名"/>
		<input  class="btn btn-primary" type="button" onclick="DELETE();" value="删除" /> 
		<button class = "btn btn-default" type="button" id="addBtn" onclick="ADD();"
        					data-toggle="modal" data-target="#updateModal" data-keyboard="true">更新</button>
	</form>
	<br/>
			<form name = "addFormBoot" method = "post" action="<%=path%>/Add">
			 	<div class = "modal fade" id = "addModal">
	        		<div class = "modal-dialog modal-lg">
	        			<div class = "modal-content">
	        				<div class ="modal-header">
	        					<button type = "button" class = "close" data-dismiss = "modal">
	        						<span aria-hidden = "true">&times;</span>
	        						<span class = "sr-only">Close</span>
	        					</button>
	        					<h4 class = "modal-title">用户信息添加</h4>
	        				</div>
	        				<div class = "modal-body">
	        					 <div class="form-inline">
										<div class="form-group">
											<label>用户名称: </label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
											<input type="text" class = "form-control" name = "username" id="username" />
										</div>
									 
									
									<div class="form-group">
										<label>密码:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="password" class ="form-control" name = "password"  id="password"/>
									</div>	
									<br/><br/>
									<div class="form-group">
										<label>生日:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="birth"/>
									</div>	
									
									<div class="form-group">
										<label>性别:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="sex"/>
									</div>	
									
									<br/><br/>
									<div class="form-group">
										<label>住址:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="address"/>
									</div>	
									
								 </div>
								 <p>
								
	        				</div>
	        				<div class = "modal-footer">
	        					<button id ="myBtnClose" class ="btn btn-default" type="button" data-dismiss = "modal">退出</button>
	        					<input class="btn btn-primary" type="button" onclick="ADD();" value="保存" /> 
	        				</div>
	        			</div>
	        		</div>
	        	</div>
	        	</form>
	        	
	        	
	        	
	        	
	        	<form name = "updateForm" method = "post" action="<%=path%>/Update">
			 	<div class = "modal fade" id = "updateModal">
	        		<div class = "modal-dialog modal-lg">
	        			<div class = "modal-content">
	        				<div class ="modal-header">
	        					<button type = "button" class = "close" data-dismiss = "modal">
	        						<span aria-hidden = "true">&times;</span>
	        						<span class = "sr-only">Close</span>
	        					</button>
	        					<h4 class = "modal-title">用户信息更新<span style="color:red;">(提供准确ID修改信息，ID不可修改)</span></h4>
	        				</div>
	        				<div class = "modal-body">
	        					 <div class="form-inline">
	        					 	<div class= "col-md-6 ">
										<div class="form-group">
											<label>用户名称: </label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
											<input type="text" class = "form-control" name = "username" id="username4" />
										</div>
									</div>
									 
									
									<div class="form-group">
										<label>密码:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="password" class ="form-control" name = "password"  id="password1"/>
									</div>	
									
									<br/><br/>
									<div class="form-group">
										<label>生日:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="birth1"/>
									</div>	
									
									<div class="form-group">
										<label>性别:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="sex1"/>
									</div>	
									
									<br/><br/>
									<div class="form-group">
										<label>住址:</label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "text"  id="address1"/>
									</div>	
									
								 </div>
								 <br/>
								 <div class="form-inline">
									<div class="form-group">
										<label>ID: </label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
										<input type="text" class ="form-control" name = "id" id="id1"/>
									</div>	
								 </div>
	        				</div>
	        				<div class = "modal-footer">
	        					<button id ="myBtnClose" class ="btn btn-default" type="button" data-dismiss = "modal">退出</button>
	        					<input class="btn btn-primary" type="button" onclick="UPDATE();" value=保存 /> 
	        				</div>
	        			</div>
	        		</div>
	        	</div>
	        	</form>
	<br/>
</body>

 <script type="text/javascript"> 
//判断密码，用户名是否为空
	function ADD(){
		var username=$("#username").val();
		var password=$("#password").val();
		
		var sex=$("#sex").val();
		var birth=$("#birth").val();
		var address=$("#address").val();
		if(username==null||username==""){
			alert("请输入用户名");
			return;
		}
		if(password==null||password==""){
			alert("请输入密码");
			return;
		}
		if(address==null||address==""){
			alert("请输入住址");
			return;
		}
		
		
//用ajax访问servlet，进行用户名和密码的验证	
		$.ajax({
			type :'get',//请求方式		
			url: '<%=path%>/insert',
			dataType :'text',//返回数据格式有xml  html   json  text
			data:{"username":username,"password":password,"sex":sex,"birth":birth},
			//data:$("#add").serialize(),//传递表单等参数的另一种方式，直接取到所有属性
			success:function(data){//与服务器交互成功的回调函数
				//alert("data="+data);
				if(data=="error"){
					alert("新增信息失败");
				}else{
					alert("新增用户成功");
				}
			}
		});
	}
	
	
	function QUERY(){
		var username=$("#username1").val();
		if(username==null||username==""){
			alert("请输入用户名");
			return;
		}
		$.ajax({
			type :'get',//请求方式		
			url: '<%=path%>/query',
			dataType :'json',//返回数据格式有xml  html   json  text
			data:{"username":username},
			//data:$("#add").serialize(),//传递表单等参数的另一种方式，直接取到所有属性
			success:function(data){//与服务器交互成功的回调函数
				//alert("data="+data);
			var htmlTable="";
			$.each(data,function(){
				htmlTable=htmlTable+"<tr>";
				htmlTable=htmlTable+"<td>";
				htmlTable=htmlTable+this.username;
				htmlTable=htmlTable+"</td>";
				htmlTable=htmlTable+"<td>";
				htmlTable=htmlTable+this.id;
				htmlTable=htmlTable+"</td>";
				htmlTable=htmlTable+"<td>";
				htmlTable=htmlTable+this.birthday;
				htmlTable=htmlTable+"</td>";
				htmlTable=htmlTable+"<td>";
				htmlTable=htmlTable+this.sex;
				htmlTable=htmlTable+"</td>";
				htmlTable=htmlTable+"<td>";
				htmlTable=htmlTable+this.address;
				htmlTable=htmlTable+"</td>";
			});
			$("#userListTable").find("tbody").html(htmlTable);
			}
		});
	}
	
	
	function DELETE(){
		var username=$("#username2").val();
		if(username==null||username==""){
			alert("请输入用户名");
			return;
		}
		
		$.ajax({
			type :'get',//请求方式		
			url: '<%=path%>/delete',
			dataType :'text',//返回数据格式有xml  html   json  text
			data:{"username":username},
			//data:$("#add").serialize(),//传递表单等参数的另一种方式，直接取到所有属性
			success:function(data){//与服务器交互成功的回调函数
				//alert("data="+data);
				if(data=="error"){
					alert("删除信息失败");
				}else{
					alert("删除用户成功");
				}
			}
		});
		
		
	}

	
	
	function UPDATE(){
		var username=$("#username4").val();
		var password=$("#password1").val();
		var address=$("#address1").val();
		var sex=$("#sex1").val();
		var birth=$("#birth1").val();
		var id=$("#id1").val();
		if(username==null||username==""){
			alert("请输入用户名");
			return;
		}
		if(password==null||password==""){
			alert("请输入密码");
			return;
		}
		if(address==null||address==""){
			alert("请输入住址");
			return;
		}
		if(sex==null||sex==""){
			alert("请输入性别");
			return;
		}
		if(birth==null||birth==""){
			alert("请输入生日");
			return;
		}
		if(id==null||id==""){
			alert("请输入ID");
			return;
		}
		$.ajax({
			type :'get',//请求方式		
			url: '<%=path%>/update',
			dataType :'text',//返回数据格式有xml  html   json  text
			data:{"username":username,"password":password,"address":address,"sex":sex,"birth":birth,"id":id},
			//data:$("#add").serialize(),//传递表单等参数的另一种方式，直接取到所有属性
			success:function(data){//与服务器交互成功的回调函数
				//alert("data="+data);
				if(data=="error"){
					alert("更新信息失败");
				}else{
					alert("更新信息成功");
				}
			}
		});
	}
 </script>







</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% 
	String path=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
		

		<!--css,js-->	
		<style type="text/css">
			*{margin:0;padding:0;}
			body{font-size:12px;color:#fff;font-family:"微软雅黑";}
			a{text-decoration:none;}
			.nav{width:100%;height:100%;background:#2789be;position:absolute;}
			.nav ul li{list-style:none;width:280px;border-bottom:1px solid #fff;transition:all 0.6s ease;position:relative;overflow:hidden;}
			.nav ul li:hover{background:#000;transition:all 0.6s ease;}
			.nav ul li a{color:#fff;font-size:16px;text-align:center;display:block;line-height:45px;position:relative;z-index:1;}
			.nav ul li span{width:100%;height:45px;display:block;background:#27a993;
			position:absolute;left:280px;top:0;transition:all 0.6s ease;
			}
			.nav ul li:hover span{position:absolute;left:0;transition:all 0.6s ease;}

		</style>
		<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.js" ></script>
	</head>

<body>
	<div >
			<!--
            	作者：896913570@qq.com
            	时间：2016-04-27
            	描述： collapseJS知识点
            -->
            
            <div class ="panel-group" id = "panelContainer">
            	<div class = "panel panel-default">
					<div class = "panel-heading">
						<div class = "h4 panel-title">							
							<a   id = "collapseA" href="#collapseAContent" 
								data-toggle = "collapse" data-parent="#panelContainer">
								系统管理
							</a>
						</div>
					</div>
					<div id = "collapseAContent" class = "panel-collapse collapse in">
						<div class = "panel-body">
							<p><a href="<%=path%>/main2" target="mywork">员工管理</a></p><!-- 注意此处路径问题			 -->
							<p>角色管理</p>		
							<p>菜单管理</p>		
						</div>
					</div>
				</div>
				
				
				
				
				
				<div class = "panel panel-default">
					<div class = "panel-heading">
						<div class = "h4 panel-title">
							<!-- -->
							<a  id = "collapseD" href="#collapseDContent" data-toggle = "collapse" data-parent="#panelContainer">
								新闻链接
							</a>
						</div>
					</div>
					<div id = "collapseDContent" class = "panel-collapse collapse">
						<div class = "panel-body">
							
							<p><a href="http://baidu.com" target="mywork">百度</a></p>		
						</div>
					</div>
			 </div>
				
            </div>
		</div>
	<!-- <div class="nav">
		<ul>
			<li><a href="http://www.baidu.com" target="mywork" >百度</a><span></span></li>
			<li><a href="http://www.baidu.com" target="mywork">菜单一</a><span></span></li>
			<li><a href="http://www.baidu.com" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
			<li><a href="#" target="mywork">菜单一</a><span></span></li>
		</ul>
	</div> -->

</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="dao.GamesDAO" import="entity.Games"
 %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>阿鲁巴游戏商店 | Home :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="./js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="index.jsp">主页</a></li>
						<li><a href="#">网站地图</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
							<li><a href="#">注册</a></li>
							<li><a href="#">登录</a></li>
							<li><a href="#">消费记录</a></li>
							<li><a href="#">会员中心</a></li>
							<li><a href="#">我的账户</a></li>
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<a href="index.html"><img src="./images/Mylogo.png" alt="" /></a>
					</div>
						<div class="header_top_right">
						  <div class="cart">
						  	   <p><span>Cart</span><div id="dd" class="wrapper-dropdown-2"> (empty)
						  	   	<ul class="dropdown">
										<li>you have no items in your Shopping cart</li>
								</ul></div></p>
						  </div>
							  <div class="search_box">
					     		<form>
					     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
					     		</form>
					     	</div>
						 <div class="clear"></div>
					</div>
						  <script type="text/javascript">
								function DropDown(el) {
									this.dd = el;
									this.initEvents();
								}
								DropDown.prototype = {
									initEvents : function() {
										var obj = this;
					
										obj.dd.on('click', function(event){
											$(this).toggleClass('active');
											event.stopPropagation();
										});	
									}
								}
					
								$(function() {
					
									var dd = new DropDown( $('#dd') );
					
									$(document).click(function() {
										// all dropdowns
										$('.wrapper-dropdown-2').removeClass('active');
									});
					
								});
					    </script>
			   <div class="clear"></div>
  		    </div>     				
   		</div>
   </div>
 <div class="main">
 	<div class="wrap">
     <div class="content">
     	<div class="content_top">
    		<div class="back-links">
    		<p><a href="MyJsp.jsp">主页</a> &gt;&gt;&gt;&gt; <a href="#" class="active"></a></p>
    	    </div>
    		<div class="clear"></div>
    	</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>登录</h2>
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>用户名</label></span>
						    	<span><input name="userName" type="text"></span>
						    </div>
						    <div>
						    	<span><label>密码</label></span>
						    	<span><input name="password" type="password"></span>
						    </div>

						   <div>
						   		<span><input type="submit" value="登录"  class="mybutton"></span>
						  </div>
					    </form>
				  </div>
  				</div>

			  </div>		
         </div> 
    </div>
 </div>
   <div class="footer">
   	  <div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>其他信息</h4>
						<ul>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">客户服务</a></li>
						<li><a href="#">高级搜索</a></li>
						<li><a href="contact.html">联系我们</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>为什么购买我们的游戏</h4>
						<ul>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">客户服务</a></li>
						<li><a href="#">隐私政策</a></li>
						<li><a href="contact.html">网站地图</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>我的账户</h4>
						<ul>
							<li><a href="Login.jsp">登录</a></li>
							<li><a href="MyJsp.jsp">购物车</a></li>
							<li><a href="#">我的愿望单</a></li>
							<li><a href="contact.html">帮助</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>联系</h4>
						<ul>
							<li><span>18672980500-黄经理</span></li>
							
						</ul>
						<div class="social-icons">
							<h4>合作网站</h4>
					   		  <ul>
							      <li><a href="#" target="_blank"><img src="./images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="./images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="./images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="./images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>
			 <div class="copy_right">
				<p>Company Name © All rights Reseverd | Design by  <a href="http://w3layouts.com">W3Layouts</a> </p>
		   </div>			
        </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>



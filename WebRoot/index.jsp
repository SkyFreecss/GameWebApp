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
<link href="./css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="./js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript" src="./js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
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
						<a href="index.jsp"><img src="./images/Mylogo.png" alt="" /></a>
					</div>
						<div class="header_top_right">
						  <div class="cart">
						  	   <p><span>购物车</span><div id="dd" class="wrapper-dropdown-2"> (empty)
						  	   	<ul class="dropdown">
										<li>您的购物车中没有任何物品</li>
								</ul></div></p>
						  </div>
							  <div class="search_box">
					     		<form>
					     			<input type="text" value="搜索你想要的Game" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索你想要的Game';}"><input type="submit" value="">
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
										// 所有的下拉菜单
										$('.wrapper-dropdown-2').removeClass('active');
									});
					
								});
					    </script>
			 <div class="clear"></div>
  		</div>     
				<div class="header_bottom">
					<div class="header_bottom_left">				
						<div class="categories">
						   <ul>
						  	   <h3>分类</h3>
							      <li><a href="#">RPG</a></li>
							      <li><a href="#">ACT</a></li>
							      <li><a href="#">AVG</a></li>
							      <li><a href="#">AAG</a></li>
							      <li><a href="#">SLG</a></li>
							      <li><a href="#">RTS</a></li>
							      <li><a href="#">FTG</a></li>
							      <li><a href="#">STG</a></li>
							      <li><a href="#">FPS</a></li>
							      <li><a href="#">TPS</a></li>
						  	 </ul>
						</div>					
		  	         </div>
						    <div class="header_bottom_right">					 
						 	    <!------ 滑动块 ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider">
							                <img src="./images/4.jpg" data-thumb="./images/4.jpg" alt="" />
							                <img src="./images/2.jpg" data-thumb="./images/2.jpg" alt="" />
							                <img src="./images/1.jpg" data-thumb="./images/1.jpg" alt="" />
							                <img src="./images/3.jpg" data-thumb="./images/3.jpg" alt="" />
							                 <img src="./images/5.jpg" data-thumb="./images/5.jpg" alt="" />
							            </div>
							        </div>
						   		</div>
						<!------滑动块结束 ------------>
			         </div>
			     <div class="clear"></div>
			</div>
   		</div>
   </div>
   <!------------页面头部结束 ------------>
  <div class="main">
  	<div class="wrap">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>新产品</h3>
    		</div>
    	</div>
	      <div class="section group">
	       <!-- 游戏遍历开始 -->
	       <%
	       GamesDAO gamesDao = new GamesDAO();
	       ArrayList<Games> list = gamesDao.getAllGames();
	      for(int i=0;i<list.size();i++)
	      {
	       Games game = list.get(i);
	        %>
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="show.jsp?id=<%=game.getId() %>"><img src="./images/<%=game.getPicture() %>" alt="" /></a>
					 <h2><%=game.getName() %></a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥<%=game.getPrice() %></span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
				<%
				}
				 %>
			<!-- 游戏遍历结束 -->
			</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>热门游戏</h3>
    		</div>
    	  </div>
			<div class="section group">
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="preview.html"><img src="./images/CJML.jpg" alt="" /></a>
					 <h2><a href="preview.html">超级玛丽建造</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥620.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
					 
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="preview.html"><img src="./images/Worlf.jpg" alt="" /></a>
					 <h2><a href="preview.html">一夜九次狼</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥620.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
					 
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					<a href="preview.html"><img src="./images/FBYX.jpg" alt="" /></a>
					 <h2><a href="preview.html">风暴英雄</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥899.75</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				    
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					<a href="preview.html"><img src="./images/ZJHX.jpg" alt="" /></a>
					 <h2><a href="preview.html">装甲核心</a></h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥599.00</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					<a href="preview.html"><embed src="./images/ZESN.gif" alt=""></embed></a>
					 <h2><a href="preview.html">罪恶少女3（VR版）</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">￥679.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">添加到购物车</a></h4>
							     </div>
							 <div class="clear"></div>
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
							<li><a href="contact.html">登录</a></li>
							<li><a href="index.html">购物车</a></li>
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



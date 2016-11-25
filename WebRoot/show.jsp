<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="dao.GamesDAO" import="entity.Games"
 %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    	
    	GamesDAO gamedao = new GamesDAO();
    	Games game = gamedao.getGamesById(Integer.parseInt(request.getParameter("id")));
    	
    	if(game!=null)
    	{
    	 %>
<head>
<title>阿鲁巴游戏商店</title>
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
   	 	<div class="content_top">
    		<div class="back-links">
    		<p><a href="index.html">主页</a> &gt;&gt;&gt;&gt; <a href="#" class="active">中国</a></p>
    	    </div>
    		<div class="clear"></div>
    	</div>
   	 	<div class="section group">
				<div class="cont-desc span_1_of_2">
				  <div class="product-details">				
					<div class="grid images_3_of_2">
						<img src="./images/<%=game.getBigpicture() %>" alt="" />
				  </div>
				<div class="desc span_3_of_2">
					<h2><%=game.getName() %></h2>
					<p></p>					
					<div class="price">
						<p>价格: <span>￥<%=game.getPrice() %></span></p>
					</div>
					<div class="available">
						<ul>
						  <li><span>发行商:</span> &nbsp;<%=game.getCompany() %></li>
						  <li><span>目前库存量:</span>&nbsp; 566</li>
					    </ul>
					</div>
				<div class="share-desc">
					<div class="share">
						<p>购买数量 :</p><input class="text_box" type="text" value="1">				
					</div>
					<div class="button"><span><a href="#">添加到购物车</a></span></div>					
					<div class="clear"></div>
				</div>
				 <div class="wish-list">
				 	<ul>
				 		<li class="wish"><a href="#">添加到愿望单</a></li>
				 	    
				 	</ul>
				 </div>
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			 <h2>详细信息 :</h2>
			   <p><%=game.getSummary() %></p>
	           <p><%=game.getDetails() %></p>
	   </div>
   </div>
   <%
   }
    %>
				<div class="rightsidebar span_3_of_1 sidebar">
					<h2>特价商品</h2>

					 	<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="#"><img src="./images/DOOM.jpg" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="#">毁灭战士4</a></h3>
								   <p><span>￥299</span> &nbsp; ￥199</p>
								     <span><a href="#">添加到购物车</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>	
					 		<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="#"><img src="./images/GTFX2.jpg" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="#">国土防线2</a></h3>
								   <p><span>￥350</span> &nbsp; ￥250</p>
								     <span><a href="#">添加到购物车</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>	
					 		<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="#"><img src="./images/HITMAN6.jpg" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="#">杀手6</a></h3>
								   <p><span>￥299</span> &nbsp; ￥199</p>
								     <span><a href="#">添加到购物车</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>	
					 		<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="#"><img src="./images/SMHY4.jpg" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="#">神秘海域4</a></h3>
								   <p><span>￥399</span> &nbsp; ￥299</p>
								     <span><a href="#">添加到购物车</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>	
					 		<div class="special_movies">
					 	    <div class="movie_poster">
					 		  <a href="#"><img src="./images/JZBY.jpg" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><a href="#">镜之边缘 催化剂</a></h3>
								   <p><span>￥250</span> &nbsp; ￥150</p>
								     <span><a href="#">添加到购物车</a></span>
								 </div>
								<div class="clear"></div>
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



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>做菜找我</title>
<meta name="renderer" content="webkit">
<link rel="stylesheet" type="text/css" href="css/newcai.css">
<link rel="stylesheet" type="text/css" href="css/newcai1.css">
<link rel="stylesheet" type="text/css" href="css/newcai2.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">
<link rel="stylesheet" href="../../../pro2/default.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/default.css">
<link rel="stylesheet" href="css/single.css">
</head>
<style type="text/css">
.header-nav {
	background-color: black;
	padding-top: 0px;
	margin-top: 0px;
}

#sub_menu_1, #sub_menu_2 {
	display: none;
}

.dropdown-menu {
	text-align: center !important;
}

.set_image_all {
	cursor: pointer;
	position: relative;
}

.set_image_all .set_image_item {
	position: relative;
	display: inline-block;
	z-index: 11;
	visibility: visible;
}

.set_image_all .set_image_top {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 10;
}

.set_image_all .set_image_top>div {
	display: inline-block;
	overflow: hidden;
}

.set_image_all .set_image_top>div>img {
	height: 100%;
}

.grade {
	vertical-align: top;
}
</style>
<body>

	<header>
		<div class="header-nav">
			<div role="navigation">
				<a href="#" rel="home" class="hd-logo" title="美食餐厅"><img
					src="images/logo2.png"></a>
				<ul class="hd-nav">
					<li class="search-box-li">
						<div>
							<input type="text" name="search-keyword" placeholder="输入关键词"
								form="search-keyword"><i class="iconfont search-submit">&#xe617;</i>
						</div> <i class="search-exit"></i>
					</li>
					<li><a href="index.html" name="index">网站首页<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="privateorder.html" name="productlist">私人订制<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="article.html" name="article">美食资讯<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="shop_index.html" name="contact">果蔬商城<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="map.html" name="about">趣吃导航<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="communities.html" name="about">美食分享<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
				</ul>


				<div class="sec_menu">
					<ul>
						<li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
						<li><a>欢迎，</a></li>&nbsp;
						<li><a>用户名</a></li>&nbsp;
						<li onclick="f('sub_menu_1')">
							<div class="btn-group">
								<button type="button"
									class="btn btn-inverse dropdown-toggle btn-xs"
									data-toggle="dropdown">
									<span class="caret"></span>
								</button>

								<ul class="dropdown-menu" role="menu" id="sub_menu_1">
									<li class="sma-menu"><a href="self.html"><img
											src="images/menu11.png">个人中心</a></li>
									<br>
									<li><a href="comment.html"><img
											src="images/menu22.png">&nbsp;我的评论</a></li>
									<br>
									<li><a href="order.html"><img src="images/menu33.png">&nbsp;我的订单</a></li>
									<br>
									<li><a href="#"><img src="images/menu44.png">&nbsp;退出登录</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="search-box">
				<form method="post" action="#" id="search-keyword">
					<input type="text" name="search-keyword" placeholder="请输入您的内容">
					<span> </span>
				</form>
			</div>
		</div>
		<script src="js/jquery1-1.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/main.js"></script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
			function f(str) {
				var sub_menu = document.getElementById(str);
				var dis_v = sub_menu.style.display;

				if (dis_v == "block")
					sub_menu.style.display = "none";
				else
					sub_menu.style.display = "block";
			}
		</script>
	</header>

	<div class="wrap" style="position: relative; top: 80px;">
		<div class="w clear">
			<div class="space_left">
				<div class="userTop clear">
					<h1 class="recipe_De_title">
						<a id="recipe_title" title="${food.foodName}">${food.foodName}</a>
					</h1>
				</div>
				<div class="space_box_home">
					<div class="recipDetail">
						<input type="hidden" id="recipe_id" value="348852">
						 <input type="hidden" id="recipe_uid" value="7885543"> 
						 <input type="hidden" id="recipe_title" value="白灼秋葵">
						<div class="recipe_De_imgBox" id="recipe_De_imgBox"
							style="max-height: 500px; max-width: 600px">
							<a class="J_photo" title="白灼秋葵的做法"><span></span><img
								src=${ctx}/${food.title} alt="白灼秋葵的做法"> </a>
							<p class="J_photo">
								<span class="De_bg">&nbsp;</span> <span class="De_photo">1张图片</span>
							</p>
						</div>
						<div></div>

						<blockquote class="block_txt" id="block_txt"></blockquote>
						<div class="mo mt20">
							<h3>食材明细</h3>
						</div>
						<fieldset class="particulars">
							<legend>主料</legend>
							<!-- 展示主食 -->
							<div class="recipeCategory_sub_R clear">
								<ul>
								<c:forEach items="${foodmain}"  var="foodmainone">
									<li><span class="category_s1"> <a target="_blank"
											title="秋葵的做法"><b>${foodmainone.key}</b></a>
									</span> <span class="category_s2">${foodmainone.value}</span></li>
								</c:forEach>								
								</ul>
							</div>
						</fieldset>
						<fieldset class="particulars">
							<legend>辅料</legend>
							<!-- 展示辅料 -->
							<div class="recipeCategory_sub_R clear">
								<ul>
									<c:forEach  items="${foodingredients}" var="onefoodingre">
									<li><span class="category_s1"> <a target="_blank"
											title="油的做法"><b>${onefoodingre.key}</b></a>
									</span> <span class="category_s2">${onefoodingre.value}</span></li>
									</c:forEach>	
								</ul>
							</div>
						</fieldset>
						<div class="recipeCategory_sub_R mt30 clear">
							<ul>
							<c:forEach items="${foodother }" var="foodotherone">
								<li><span class="category_s1"> <a title="中辣"
										target="_blank">${foodotherone.key}</a>
								</span> <span class="category_s2">${foodotherone.value}</span></li>			
							</c:forEach>							
							</ul>
						</div>
						<div class="mo mt20">
							<h3>${food.foodName}的做法步骤</h3>
						</div>
						<div class="recipeStep">
							<ul>					
								<c:forEach items="${foodImg}" var="onestep" varStatus="loop">
									<li>
									<div class="recipeStep_img">
										<img src=${onestep} >
									</div>
									<div class="recipeStep_word">
										<div class="recipeStep_num">${loop.count}</div>
										${foodstep[loop.count-1]}
									</div>
									</li>
									</c:forEach>
							</ul>
						</div>
						<div class="recipeTip mt16">
						所属分类： 
						<c:forEach items="${foodtype}" varStatus="loop">
							<a href="#" target="_blank" >${foodtype[loop.count-1]}</a>&nbsp;&nbsp;
						</c:forEach>
						</div>
						<br>
						<div style="font-size: 16px; float: left">星级评分：</div>
						<div id="star_grade1" style="float: left"></div>
	
						<br>
						<script type="text/javascript" src="js/jquery.min1.js"></script>
						<script type="text/javascript" src="js/markingSystem.js"></script>
							<!-- 获取评价级别 -->
					<script type="text/javascript">
						$(function(){
							$("#star_grade1").click(function(){
								url="${ctx}/fooddetail?foodId=1";
								var mystargrade=$(".grade").html();
								 alert(mystargrade+"评价成功"); 
				            	params="stargrade="+mystargrade;
				            	 $.get(url,params,function(d){
				            		alert("评价成功");
				            	}) 
							})						
						})	
					</script>
								<!-- 设置评价内容 -->
						<script type="text/javascript">
							$("#star_grade1")
									.markingSystem(
											{
												backgroundImageInitial : 'images/love_gary.png',
												backgroundImageOver : 'images/love_red.png',
												num : 5,
												havePoint : false,
												haveGrade : true,
												unit : '星',
												grade : 0,
												height : 30,
												width : 30,
											})
						</script>
						<div class="timeline clear">
							<ul id="getRecommendNewRecipe">
							</ul>
						</div>
						<div id="comment_top"></div>
						<div class="recipeComment mt30" id="comment"></div>
					</div>
				</div>
			</div>
			<div class="space_right">
				<div id='div-gpt-ad-1508681717585-2'
					style='height: 250px; width: 300px;'>
					<script>
						googletag.cmd.push(function() {
							googletag.display('div-gpt-ad-1508681717585-2');
						});
					</script>
					<div class="mo"
						style="background: rgba(0, 0, 0, 0) url(images/biao.png) no-repeat scroll left center;">
						<h3 style="margin-left: 6px; text-indent: 2px;">小窍门</h3>
					</div>
					<div class="recipeTip"
						style="text-indent: 2em; width: 300px; height: auto;">
						${food.foodTip}
					</div>
				</div>
				<div id='div-gpt-ad-1508681717585-3'
					style='height: 250px; width: 300px; margin-top: 20px'>
					<script>
						googletag.cmd.push(function() {
							googletag.display('div-gpt-ad-1508681717585-3');
						});
					</script>
				</div>
			</div>
		</div>
	</div>
<style type="text/css">
.footer-area {
	padding: 10px 0
}

.footer-area .w {
	padding-top: 10px;
	border-top: 1px solid #e8e8e8
}

.footer-area a {
	color: #666
}

.footer-area a:hover {
	color: #ff6767
}

.ft1 {
	clear: none;
	float: left;
	font-size: 11px;
	color: #666;
	width: 680px;
	padding-top: 10px
}

.ft1 .c3b {
	color: #c90;
	font-size: 14px;
	font-weight: 700;
	margin-bottom: 6px
}

.ft1 .c3b a {
	color: #f50
}

.ft1 .c3c {
	color: #aaa;
	font-size: 12px;
	margin-bottom: 6px
}

.ft2, .ft3, .ft4 {
	clear: none;
	float: right;
	text-align: center
}

.ft3 {
	margin: 0 25px
}
</style>




	<!-- <footer style="position: absolute;top:3400px;  height: 120px;">
    <div>
        <ul class="footer-top">
            <li><a href="index.html">网站首页</a></li>
            <li><a href="privateorder.html">私人订制</a></li>
            <li><a href="article.html">美食资讯</a></li>
            <li><a href="shop_index.html">果蔬商城</a></li>
            <li><a href="map.html">趣吃导航</a></li>
            <li><a href="communities.html">美食分享</a></li>
        </ul>
    </div>
    <div>
        <ul class="footer-body">
            <li>
                <span>电话:</span><span>8888-66666666</span>
            </li>
            <li>
                <span>邮箱:</span><span>quchi@chaoyuezu.com</span>
            </li>
            <li>
                <span>地址:</span><span>河北省石家庄市河北师范大学</span>
            </li>
        </ul>
        <P>designed and developed with by Daye Aladdin Technology Co., Ltd.</P>
    </div>
</footer> -->
</body>
</html>


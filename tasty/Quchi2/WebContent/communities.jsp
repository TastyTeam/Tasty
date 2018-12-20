<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美食家社区_美食爱好者的家园，吃货俱乐部_美食天下</title>
<meta name="keywords" content="美食家,美食博客,美食空间,美食社区,吃货,吃货俱乐部,美食俱乐部" />
<meta name="description"
content="汇聚千万美食爱好者的原创社区，创建属于自己的美食博客与个人空间。菜谱、日志、随拍，一起玩的吃货俱乐部！" />
<link rel="stylesheet" type="text/css" href="css/h1.css">
<link rel="stylesheet" type="text/css" href="css/h2.css">
<link rel="stylesheet" type="text/css" href="css/h3.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" href="css/pagination.css">
<style>
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

.i {
	float: left;
	margin-left: 10px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="head.jsp" />
	</header>
	<div class="wrap" style="position: absolute; top: 100px; left: 180px;">
		<div class="w clear">
			<div class="space_left">

				<div class="ui_title mt10">
					<!--div class="ui_title_wrap"-->
					<h3 class="on" style="line-height: 10px; color: #ff6767;">话题</h3>
				</div>

				<div class="pin_list clear">
					<ul>
					<!-- 循环实现文章的查询 -->
					<c:forEach items="${communityarticle}" var="onearticle">
					<li>
							<div class="u">
								<a target="_blank"><img width="40" height="40"
									class="imgLoad" src="images/img.jpg"></a>
								<div>
									<a class="t" target="_blank">${onearticle.user.userName}</a> <span>${onearticle.time}</span>
								</div>
							</div>
							<div class="c clear">
								<div class="pp">
									<a href="remark?id=${onearticle.communityid}" target="_blank"
										style="text-decoration: none;">${onearticle.content}</a>
								</div>
								<a class="clear" target="_blank">
								 <!-- 图片查询 -->						    
								 <c:forEach items="${fn:split(onearticle.img,';')}" var="oneImg">
								    <img	class="imgLoad" src="${ctx }/${oneImg}"
									 style="width: 100px; height: 100px;">
									
								</c:forEach>
								</a> <span></span>
							</div>
						</li>
					</c:forEach>						
					</ul>
				</div>

				<div class="pagination" id="clickforeclipse" 
></div>
				<!-- CDN 依赖文件 -->
				<script type="text/javascript" src="js/jquery.min.js"></script>
				<script type="text/javascript" src="js/underscore.js"></script>
				<script type="text/javascript" src="js/pagination.build.js"></script>					
				<script type="text/javascript">
					$(document).ready(function() {
						new pagination({
							pagination : $('.pagination'),
							maxPage : 7, //最大页码数,支持奇数，左右对称
							startPage : 1, //默认第一页
							currentPage : "${num}", //当前页码
							totalItemCount : "${allpageNum}" , //项目总数,大于0，显示页码总数
							totalPageCount : 10, //总页数
							callback : function(pageNum) {
								console.info(pageNum);
								window.location.href="communities?pageNum="+pageNum;
			 		
							}
						});
					});
				</script>
			</div>
			<div class="space_right">
				<div class="zhen_r_list clear mt10" style="position: relative;">
					<div>
						<p
							style="width: 130px; height: 26px; color: #ff6767; font-size: 22px;">热门话题</p>
					</div>
					<hr style="position: relative; top: 0px;">


					<ul style="position: relative; right: 60px; width: 360px;">

						 <c:forEach  items="${hotarticle}" var="onehotarticle">
						<li>
							<p>
								<a href="remark?id=${onehotarticle.communityid}" title="本期热点新闻"
									target="_blank" style="font-size: 12px; color: #000;">${onehotarticle.content }</a>
							</p>
						</li>
						</c:forEach> 
					</ul>
					<div
						style="background: #ff6767; border: 1px solid #ff6767; color: #fff; border-radius: 3px; cursor: pointer; font-size: 16px; height: 38px; margin-right: 16px; width: 140px; line-height: 38px; text-align: center; position: relative; top: 60px; left: 10px;">
						<a href="huati.jsp"
							style="font-size: 18px; color: #fff; text-align: center;">发布话题</a>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- <footer style="position: relative; top: 1930px;">
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
				<li><span>电话:</span><span>8888-66666666</span></li>
				<li><span>邮箱:</span><span>quchi@chaoyuezu.com</span></li>
				<li><span>地址:</span><span>河北省石家庄市河北师范大学</span></li>
			</ul>
			<P>designed and developed with by Daye Aladdin Technology Co.,
				Ltd.</P>

		</div>
		<div></div>

	</footer> -->


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
</body>
</html>

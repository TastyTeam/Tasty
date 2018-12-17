<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>趣吃</title>
<link rel="stylesheet" type="text/css" href="css/hx.css">
<link rel="stylesheet" type="text/css" href="css/hx1.css" />
<link rel="stylesheet" type="text/css" href="css/hx2.css">
<link rel="stylesheet" type="text/css" href="css/default.css">

<style>
.comment-add {
	width: 100%;
	margin: 20px 0 0
}

.comment-post {
	float: inherit
}

.vote {
	padding: 12px 0 0 60px;
	color: #666;
	font-size: 16px
}

.pai_box .s1 {
	display: inline-block;
	margin: 0 5px 0 0;
	padding: 0 4px;
	border-radius: 3px;
	background: #BA2020;
	color: #fff;
	font-size: 12px
}

.pai_box .s2 {
	display: inline-block;
	margin: 0 5px 0 0;
	padding: 0 4px;
	border-radius: 3px;
	background: #43D159;
	color: #fff;
	font-size: 12px
}

.pai_box h1 {
	padding: 0 0 10px 0px;
	font-size: 22px;
	display: inline-block
}

.pai_box p {
	padding: 0 0 10px 60px;
	font-size: 18px;
	line-height: 170%
}

.pai_box p img {
	display: block;
	width: auto;
	max-width: 580px;
}

.pai_box .u a {
	color: #999;
}

.pai_box .u {
	padding: 0 0 10px 60px;
	color: #999;
}

.pai_box .u a.t {
	color: #6599ff;
	font-size: 14px
}

.pai_box .u span {
	margin: 0 0 0 20px
}

.pai_box .add_caidan {
	margin: 0 0 0 10px
}
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
</style>
</head>

<body>
	<header>
		<jsp:include page="head.jsp" />
	</header>
	<div class="wrap">
		<div class="w clear"
			style="position: absolute; top: 100px; left: 180px; float: left;">
			<div class="space_left">
				<div class="ui_title">
					<!--div class="ui_title_wrap clear "-->
					<h3 class="on" style="line-height: 10px; color: #ff6767;">美食随手拍</h3>
				</div>
				<div class="pai_box">
					<a class="img" title="梦桃缘" href="images/1.png" target="_blank"><img
						src="images/1.png" width="48" height="48"></a> <input
						type="hidden" id="pai_id" value="951158" data-id="951158">
					<div class="u">
						<a target="_blank" href="###" class="t">${onearticle.user.userName}</a><span>2018-11-29
							08:12:43</span>
					</div>
					<p>${onearticle.content}</p>
					<!-- 图片查询 -->
					<c:forEach items="${fn:split(onearticle.img,';')}" var="oneImg">
						<p>
							<img src="${oneImg}" class="imgLoad" width="600px"
								height="600px" />
						</p>					
								</c:forEach>
				</div>
				<div class="recipeComment mt30" id="comment">
					<div data-dom="wrap" class="comment-wrap">
						<div class="comment-list mt10">
						<a name="miao"></a>
							<div data-dom="list">
								<ul>
									<c:forEach items="${listc }" var="l">
										<c:if test="${uname==l.user.userName }">						
											<li id="J_comment_item_154357700483794"
												data-id="154357700483794">
												<div class="pic">
													<a href="#"><img src="images/1.png" width="48"
														height="48"></a>
												</div>
												<div class="detail">
													<div class="tools">
														<div class="left">
															<a title="点击进入 lala2 的主页"
																href="//home.meishichina.com/space-11204974.html"
																target="_blank">${l.user.userName }</a><span>${l.commentTime }</span>
														</div>

													</div>
													<div class="content">${l.commentDiscussion }</div>
												</div>
											</li>
										</c:if>
										<c:if test="${uname!=l.user.userName }">
											<li id="J_comment_item_154357700483794"
												data-id="154357700483794">
												<div class="pic">
													<a href="#"><img src="images/1.png" width="48"
														height="48"></a>
												</div>
												<div class="detail">
													<div class="tools">
														<div class="left">
															<a title="点击进入 lala2 的主页"
																href="//home.meishichina.com/space-11204974.html"
																target="_blank">${l.user.userName }</a><span>${l.commentTime }</span>
														</div>
														<div class="right">
															<a href="###" class="J_event" data-type="reply"
																onclick="s('${l.user.userName}')">回复</a>
														</div>
													</div>
													<div class="content">${l.commentDiscussion }</div>
												</div>

											</li>
											
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="comment-post comment-add  islogin" data-dom="add">
							<form action="remark" method="post">
								<div class="comment-post-text">
									<div class="comment-post-text-inner">
										<textarea class="text ui-webkit-scrollbar" title="发表评论也可提交哦"
											id="t" name="rmark"></textarea>
									</div>
								</div>
								<div
									style="width: 640px; height: 30px; border: 1px solid #aaa; background-color: #d3d3d3;">
									<div class="left">
										<span class="tips" style="line-height: 30px;">点击发表可提交哦</span>
									</div>
									<div class="right">
										<a href="#miao"><input class="comment-btn J_event" type="submit" value="发表评论"
											data-type="add_submit" id="fa2"
											style="background-color: #ba2020; color: #fff; height: 30px;"></a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					var a;
					function s(a) {
						var d = document.getElementById("t");
						d.focus();
						d.innerText = "@" + a + ":";
					}
				</script>
				<div class="clear mt10"></div>
			</div>








			<div class="space_right">
				<div class="zhen_r_list clear mt10" style="position: relative;">
					<div>
						<p
							style="width: 130px; height: 26px; color: #ff6767; font-size: 22px;">健康与话题</p>
					</div>
					<hr style="position: relative; top: 0px;">


					<ul style="position: relative; right: 60px; width: 360px;">


						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">生活规律，劳逸结合，睡眠充足精神好</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">平衡膳食，规律进餐，隐性饥饿不可要</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">多吃果蔬，远离烟酒，充分摄入维生素</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">每日营养，关注吸收，健康体重要注意</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">卫生习惯，避免热寒，预防诱因是必须</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">坚持锻炼，强健体魄，精力充沛生活好</a>
							</p>

						</li>
						<li>

							<p>
								<a title="ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器" target="_blank"
									style="text-decoration: none; font-size: 16px; color: #000;">适当放松，愉悦心情，心理减压别忘了</a>
							</p>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
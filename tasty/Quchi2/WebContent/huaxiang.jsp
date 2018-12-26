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
<link rel="stylesheet" href="imgs/font-icon/iconfont.css">
<link rel="stylesheet" href="css/demo1.css">
<link rel="stylesheet" href="css/default.css">
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
<script type="text/javascript"> 
 function f(str){ 
        var sub_menu = document.getElementById(str); 
        var dis_v = sub_menu.style.display; 
          
        if(dis_v == "block") 
          sub_menu.style.display = "none"; 
        else 
          sub_menu.style.display = "block"; 
            
      } 

</script>
</head>

<body>
	<header>
		<%-- <jsp:include page="head.jsp" /> --%>
		<div class="header-nav">
        <div role="navigation">
            <a href="#" rel="home" class="hd-logo" title="美食餐厅"><img src="images/logo2.png"></a>
            <ul class="hd-nav">
                <li class="search-box-li">
                    <div><input type="text" name="search-keyword" placeholder="输入关键词" form="search-keyword"><i
                            class="iconfont search-submit">&#xe617;</i></div>
                    <i class="search-exit"></i></li>
                <li><a href="index.jsp" name="index">${lists.get(0).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="privateorder" name="productlist">${lists.get(1).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="article" name="article">${lists.get(2).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="shop_index.jsp" name="contact">${lists.get(3).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="map" name="about">${lists.get(4).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="communities?pageNum=1" name="about">${lists.get(5).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
            </ul>
			 <div class="header">
        <div class="icon-box" style="margin-top:-19px;">
            <i class="iconfont icon">&#xe637;</i>
        </div>
    </div>
            <!-- <div class="motai"></div> -->
            <c:if test="${uname==null}">
            <ul>
                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                <li><a href="login.jsp">登录</a></li>&nbsp;&nbsp;
                <li><a href="register.jsp">注册</a></li>
                <li><a href="index.jsp"><i class="iconfont nav-bottom">&#xe61f;</i></a></li>
            </ul>
            </c:if>
          	<c:if test="${uname!=null}">
            <div class="sec_menu">
                            <ul>
                                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                                <li><a>欢迎，</a></li>&nbsp;
                                <li><a>${uname}</a></li>&nbsp;
                                <li onclick = "f('sub_menu_1')">
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-inverse dropdown-toggle btn-xs" data-toggle="dropdown" >
                                        <span class="caret"></span>
                                    </button>
                                   
                                    <ul class="dropdown-menu" role="menu" id="sub_menu_1">
                            			<li class="sma-menu"><a href="self"><img src="images/menu11.png">个人中心</a></li><br>
                            			<li><a href="comment"><img src="images/menu22.png">&nbsp;我的评论</a></li><br>
                            			<li><a href="myorder"><img src="images/menu33.png">&nbsp;我的订单</a></li><br>
                            			<li><a href="SingOut"><img src="images/menu44.png">&nbsp;退出登录</a></li>
                    				</ul>
                                 
                                    </div>
                                </li>
                            </ul>
                            </div>
                     </c:if>
        </div>
    </div>
<div class="chatbar" style="z-index:100;">
        <div class="chatbar-box">
            <div class="chatbar-contacts">
               
                <ul class="chatbar-contacts-uls">
                    <!-- <li>
                        <i class="iconfont">&#xe752;</i>
                        <p>大大</p>
                    </li> -->
                </ul>
            </div>
            <div class="chatbar-messages">
                <div class="messages-title">
                    <i class="iconfont">&#xe752;</i>
                    <h4>sss</h4>
                    <i class="iconfont return-icon">&#xe61a;</i>
                </div>
                <div class="messages-text" id="messages-text">
                    <ul class="messages-text-uls">
                        <li class="messages-text-lis">
                            <h4><i></i><span>小趣</span><span class="time">2017/2/23 13:56</span></h4>
                            <p>你好，很高兴认识你</p>
                        </li>
                    </ul> 
                </div>
                <div class="messages-box">
                    <textarea class="messages-content" name="" id="messages-your" cols="30" rows="10"></textarea>
                    <input class="message-btn" type="button" value="发送" id="message-btn">
                </div>
            </div>
        </div>
    </div>

   <script src="js/jquery.min.js"></script>
   <script src="js/demo.js"></script>
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
					<a class="img" title="梦桃缘" href="images/img.jpg" target="_blank"><img
						src="images/img.jpg" width="48" height="48"></a> <input
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
													<a href="#"><img src="images/img.jpg" width="48"
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
													<a href="#"><img src="images/img.jpg" width="48"
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
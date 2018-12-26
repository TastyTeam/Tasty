<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
    <title>美食城</title>
    <link rel="stylesheet" href="imgs/font-icon/iconfont.css">
    <link rel="stylesheet" href="css/demo1.css">
    <link rel="stylesheet" href="../../../pro2/default.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">
<link rel="stylesheet" href="css/button.css">
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

<style>
.header-nav{
    background-color: black;
    padding-top: 0px;
    margin-top: 0px;
}
#sub_menu_1,#sub_menu_2{ 
    display: none; 
} 
.dropdown-menu{
    text-align: center !important;
} 
</style>
</head>
<!-- <body style="height: 100%;"> -->


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
        <div class="icon-box">
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
                                <li><a></a></li>&nbsp;
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


<!-- </body> -->
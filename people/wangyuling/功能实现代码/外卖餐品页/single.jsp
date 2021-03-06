<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <title>美食城</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">    
<link rel="stylesheet" href="css/default.css">
<meta charset="utf-8">
<link rel="stylesheet" href="css/single.css">
<link rel="stylesheet" href="css/button.css">
 <script src="js/jquery1-1.js"></script>
<script type="text/javascript">
    $(function () {
        var ie6 = document.all;
        var dv = $('#top1'), st;
        dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
        $(window).scroll(function () {
            st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
            if (st > parseInt(dv.attr('otop'))) {
                if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果
                    dv.css({ position: 'absolute', top: st });
                }
                else if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: 0 });
            } else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
        });
    });
</script>
<script type="text/javascript">
    function add(){
                 var num=document.getElementById("shopCart");
                 num.value=parseInt(num.value)+1;
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
<body>
   <header>
    <div class="header-nav">
        <div role="navigation">
            <a href="#" rel="home" class="hd-logo" title="美食餐厅"><img src="images/logo2.png"></a>
            <ul class="hd-nav">
                <li class="search-box-li">
                    <div><input type="text" name="search-keyword" placeholder="输入关键词" form="search-keyword"><i
                            class="iconfont search-submit">&#xe617;</i></div>
                    <i class="search-exit"></i></li>
                <li><a href="index.html" name="index">网站首页<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="privateorder.html" name="productlist">私人订制<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="article.html" name="article">美食资讯<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="shop_index.html" name="contact">果蔬商城<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="map.html" name="about">趣吃导航<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="communities.html" name="about">美食分享<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
            </ul>
            <div class="sec_menu">
                            <ul>
                                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                                <li><a>欢迎，</a></li>&nbsp;
                                <li><a>用户名</a></li>&nbsp;
                                <li onclick = "f('sub_menu_1')">
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-inverse dropdown-toggle btn-xs" data-toggle="dropdown" >
                                        <span class="caret"></span>
                                    </button>                             
                                    <ul class="dropdown-menu" role="menu" id="sub_menu_1">
                            			<li class="sma-menu"><a href="self.html"><img src="images/menu11.png">个人中心</a></li><br>
                            			<li><a href="comment.html"><img src="images/menu22.png">&nbsp;我的评论</a></li><br>
                            			<li><a href="order.html"><img src="images/menu33.png">&nbsp;我的订单</a></li><br>
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
                <span>
                    </span>
            </form>
        </div>
    </div>
</header>
<div class="header">
    <div class="content-wrapper">
        <div class="avatar">
            <img width="64" height="64" src="${ctx }/${restaurant.shopImg}">
        </div>
        <div class="content">
            <div class="title">
                <span class="brand"></span>
                <span class="name">${restaurant.shopName}</span>
            </div>
            <div class="description">
                趣吃专送 /${restaurant.arriveTime}分钟送达
            </div>
            <div class="support">
                <span class="icon decrease"></span>
                <span class="text">${restaurant.fullReduce}</span>
            </div>
        </div>
    </div>
<div class="name3">
            <table>
                <tr>
                    <td>起送价</td>
                    <td>配送费</td>
                    <td>平均送达速度</td>
                </tr>
                <tr>
                    <td style="font-size: 20px;">${restaurant.sendFare}元</td>
                    <td style="font-size: 20px;">${restaurant.sendFareMore}</td>
                    <td style="font-size: 20px;">${restaurant.arriveTime}分钟</td>

                </tr>
            </table>
    </div>
    <div class="background">
        <img width="100%" height="100%" src=${restaurant.shopImg }>
    </div>
    <div class="detail fade-transition" style="display: none;">
        <div class="detail-wrapper clearfix">
            <div class="detail-main">
                <h1 class="name">${restaurant.shopName }</h1>
                <div class="star-wrapper">
                    <div class="star star-48">
                        <span class="star-item on"></span><span class="star-item on"></span><span class="star-item on"></span><span class="star-item on"></span><span class="star-item off"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail-close">
            <i class="icon-close"></i>
        </div>
    </div>
</div>
     <div class="kong">
     </div>   
    <div class="top" id="top1">
        
        <table>
            <tr>
       <c:forEach items="${dishtypelist}" var="dishtype">
                    <td> <a href="#${dishtype }">${dishtype.dishesName}</a></td>
        </c:forEach>
            </tr>    
        </table>
    </div>
   <div class="gonggao">
       <div class="title">
            <p><b>&nbsp;&nbsp;商家公告</b></p>
        </div>
        <div class="nei" >
            <p>${restaurant.shopIntroduce }</p>
        </div>
    </div>
 <!--菜品菜二重循环 -->
     <c:forEach items="${dishtypelist}" var="dishtype">
                   <a name=${dishtype}></a>  
                 <div class="bottom1">  
        		  <p><b> ${dishtype.dishesName}</b></p> 
               <c:forEach items="${dishtype.setfastfood}" var="fastfoodone">  
                 <div class="b1">         
                <a href="#"><img src="${ctx }/${fastfoodone.fastfoodImg }" width="100px" height="100px"></a>
                <span class="t1"><b>${fastfoodone.fastfoodName }</b></span>
                <span class="t2">${fastfoodone.introduce }</span>
                <span class="t3"><b>￥${fastfoodone.fastfoodPrice }</b> <a href="###" class="button button-primary button-pill button-small"  onclick="add();">加入购物车</a>
                </span>
                </div>   
    		    </c:forEach>     	
        </div>
        </c:forEach>
        <footer>
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
            <div>
        
        </div>
         <div>
         <a href="ordercontent.html"><input type="button"  value="0" class="num1" id="shopCart"  style="background-image: url(images/che5.jpg);" /></a>
        </div>
        </footer> 

        
</div>
</body>


</html>
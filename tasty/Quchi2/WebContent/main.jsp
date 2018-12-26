<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
    <title>美食城</title>

    <link rel="stylesheet" href="../../../pro2/default.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">

<style>



</style>
</head>
<body style="height: 100%;">

<header>
<jsp:include page="head.jsp"></jsp:include>
<div class="header-carousel container">

        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">

                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/banner.jpg" style="width:100%;" alt="First slide">
                </div>
                <div class="item">
                    <img src="images/banner2.jpg" style="width:100%;" alt="Second slide">
                </div>
                <div class="item">
                    <img src="images/banner3.jpg" style="width:100%;" alt="Third slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel"
               data-slide="prev"></a>
            <a class="carousel-control right" href="#myCarousel"
               data-slide="next"></a>
        </div>

    </div>
</header>

<main class="main-first-bgcolor">
    <div>
    	
        <div class="main-head">
            <p>
                <span>我们提供</span>
            </p>
        </div>
        <div class="main-we-provide">
        <ul>
        <c:forEach items="${ourprovide }" var="ourprovide1">
           
                <li><span><img src="${ourprovide1.provideImg }" alt=""></span>
                    <h2>${ourprovide1.provideName }</h2>
                    <p>${ourprovide1.provideText }</p></li>
                
            
         </c:forEach>
         </ul>
        </div>
    </div>
<c:if test="${not empty indexfood }">
    <div>
        <div class="main-head">
            <p>
                <span>私人订制</span>
            </p>
        </div>
    </div>
<!-- </main>
<main> -->
    <div class="aui-nav-content-box">
        <!-- <div class="aui-nav-list-box">
                <ul class="main-submenu">
                    <li><a href="#">主食</a></li>
                    <li><a href="#">汤羹</a></li>
                    <li><a href="#">甜品</a></li>
                    <li><a href="#">饮料</a></li>
                </ul>
        </div> -->
       
		
        <div class="aui-nav-list-tab">
         
            <div class="aui-nav-list-item" style="display:block">
                <div class="aui-page-list">
                    <div class="aui-page-img">
                    
                        <ul class="main-submenu-info main-submenu-first">
                        <c:forEach var="privateorderfood" items="${indexfood}">
                                <li><a href="fooddetail?foodId=${privateorderfood.foodId}">
                                    <div class="food-name">
                                        <p>${privateorderfood.foodName}</p>
                                        <p>Rose fried broccoli</p>
                                    </div>
                                    <div class="food-price">
                                        <!-- <p>￥<span>25</span></p> -->
                                    </div>
                                    <div class="img-bg"></div>
                                    <img width="330px" height="330px" src="${privateorderfood.title}"></a></li>
                                </c:forEach> 
                        </ul>
                      
                    </div>  
                </div>    
            </div>   
        
            <div class="aui-nav-list-item" style="display:none">
                    <div class="aui-page-list">
                        <div class="aui-page-img">
                            <ul class="main-submenu-info main-submenu-first">
                                    <li><a href="#">
                                        <div class="food-name">
                                            <p>玫瑰香酥西兰花</p>
                                            <p>Rose fried broccoli</p>
                                        </div>
                                        <div class="food-price">
                                            <p>￥<span>25</span></p>
                                        </div>
                                        <div class="img-bg"></div>
                                        <img src="images/foodlist6.jpg"></a></li>
                                    <li><a href="#">
                                        <div class="food-name">
                                            <p>玫瑰香酥西兰花</p>
                                            <p>Rose fried broccoli</p>
                                        </div>
                                        <div class="food-price">
                                            <p>￥<span>25</span></p>
                                        </div>
                                        <div class="img-bg"></div>
                                        <img src="images/foodlist6.jpg"></a></li>
                                    <li><a href="#"><img src="images/foodlist6.jpg"></a></li>
                                    <li><a href="#"><img src="images/foodlist6.jpg"></a></li>
                                    <li><a href="#"><img src="images/foodlist6.jpg"></a></li>
                                    <li><a href="#"><img src="images/foodlist6.jpg"></a></li>
                            </ul>
                              
                        </div>
                    </div>
                </div> 
        </div>
    </div> 
     
                        <a class="more" href="privateorder">MORE</a>
    </div></c:if>
</main>
<main>
    <div>
        <div class="main-head">
            <p><span>美食资讯</span></p>
        </div>
    </div>
    <ul class="main-submenu main-submenu-second">
    <c:forEach items="${articletype}" var="onearticle">
    <li><a href="#">${onearticle.articleTypeName}</a></li>
    </c:forEach>
        
      
    </ul>
    <ul class="main-submenu-info ">
        
        <li><a href="#">
            <div class="activity-duration">
                <img src="images/activity-duration.png">
                <p>6-1日</p>
            </div>
            <img src="images/foodnewlist1.jpg">
            <h1 class="food-head">周末轻松制作美味甜品</h1>
            <p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
        </a></li>
        <li><a href="#">
            <div class="activity-duration">
                <img src="images/activity-duration.png">
                <p>6-1日</p>
            </div>
            <img src="images/foodnewlist1.jpg">
            <h1 class="food-head">周末轻松制作美味甜品</h1>
            <p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
        </a></li>
        <li><a href="#">
            <div class="activity-duration">
                <img src="images/activity-duration.png">
                <p>6-1日</p>
            </div>
            <img src="images/foodnewlist1.jpg">
            <h1 class="food-head">周末轻松制作美味甜品</h1>
            <p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
        </a></li>
   
    
       

    </ul>
    <a class="more" href="article">MORE</a>
</main>
<main>

</main>

<br>
<br>

<jsp:include page="footer.jsp"></jsp:include>

</body>

<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"> 
//tab切换
$(function(){
	$('.aui-nav-list-box ul li').hover(function(){
		$(this).addClass('aui-current').siblings().removeClass('aui-current');
		$('.aui-nav-list-tab>div:eq('+$(this).index()+')').show().siblings().hide();
	})
});

//导航浮动

</script>
</html>
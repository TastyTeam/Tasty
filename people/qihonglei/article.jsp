<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>美食城</title>

    <link rel="stylesheet" href="../../../pro2/default.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="author" content="www.yunalading.com" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">

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
                            <li><a href="index.jsp" name="index">网站首页<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="privateorder.html" name="productlist">私人订制<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="article" name="article">美食资讯<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="shop_index.html" name="contact">果蔬商城<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="map.html" name="about">趣吃导航<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="communities.html" name="about">美食分享<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                        </ul>
            
                        <div class="motai"></div>
                       <ul>
                			<li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                			<li><a href="login.html">登录</a></li>&nbsp;&nbsp;
                			<li><a href="register.html">注册</a></li>
               				<li><a href="index.html"><i class="iconfont nav-bottom">&#xe61f;</i></a></li>
            			</ul>
            
                    </div>
                    <div class="search-box">
                        <form method="post" action="#" id="search-keyword">
                            <input type="text" name="search-keyword" placeholder="请输入您的内容">
                            <span>
                                </span>
                        </form>
            
                    </div>
            
                </div>
            
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
                                <img src="images/banner.jpg" style="width:100%" alt="First slide">
                            </div>
                            <div class="item">
                                <img src="images/banner3.jpg" style="width:100%;" alt="Second slide">
                            </div>
                            <div class="item">
                                <img src="images/banner5.jpg" style="width:100%;" alt="Third slide">
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
<main>

    <div>
        <div class="main-head">
            <p><span>美食资讯</span></p>
        </div>
    </div>
    <div class="aui-nav-content-box">
        <div class="aui-nav-list-box">
                            <ul class="main-submenu main-submenu-second" >
                            <c:forEach items="${articleTypeName }" var="articleTypeName1">
                                <li><a href="#">${articleTypeName1.articleTypeName }</a></li>
                                
                             </c:forEach>
                            </ul>
        </div>

      
        <div class="aui-nav-list-tab" >
            <div class="aui-nav-list-item" style="display:block" >
                <div class="aui-page-list" >
                    <div class="aui-page-img">
                    <ul class="showMoreNChildren" pagesize="3">
                     <c:forEach items="${article  }" var="article1">
                      	 <c:if test="${article1.articletype.articleTypeId == 1 }">
                            <ul class="article-list" >
                                <li>
                                    <div class="article-date">
                                        <strong>12</strong>
                                        <p>${article1.publicTime }</p>

                                    </div>
                                    <div class="article-info">
                                        <a href="article_list_content?articleId=${article1.articleId }">
                                            <h3>${article1.articleName }</h3>
                                            <p id="test">${article1.content }</p>
                                        </a>
                                    </div>
                                    
                                </li>
                                <br>
                              </ul>
                             </c:if>
                     </c:forEach> 
                     </ul>
                    
                    </div>   
                </div>                
            </div>
        <br>

            <div class="aui-nav-list-item" style="display:none">
                    <div class="aui-page-list">
                        <div class="aui-page-img">
                        <ul class="showMoreNChildren" pagesize="3">
                             <c:forEach items="${article }" var="article1">
                      	 <c:if test="${article1.articletype.articleTypeId == 2 }">
                            <ul class="article-list">
                                <li>
                                    <div class="article-date">
                                        <strong>12</strong>
                                        <p>${article1.publicTime }</p>

                                    </div>
                                    <div class="article-info">
                                        <a href="article_list_content?articleId=${article1.articleId }">
                                            <h3>${article1.articleName }</h3>
                                            <p>${article1.content }</p>
                                        </a>
                                    </div>
                                    <br>
                                </li>
                                 <br>
                            </ul>
                             </c:if>
                     </c:forEach> 
                     </ul>
                        </div>   
                    </div>                
                </div>
                <br>
                
                <div class="aui-nav-list-item" style="display:none">
                        <div class="aui-page-list">
                            <div class="aui-page-img">
                            <ul class="showMoreNChildren" pagesize="3">
                         <c:forEach items="${article }" var="article1">
                      	 <c:if test="${article1.articletype.articleTypeId == 3 }">
                            <ul class="article-list">
                                <li>
                                    <div class="article-date">
                                        <strong>12</strong>
                                        <p>${article1.publicTime }</p>

                                    </div>
                                    <div class="article-info">
                                        <a href="article_list_content?articleId=${article1.articleId }">
                                            <h3>${article1.articleName }</h3>
                                            <p>${article1.content }</p>
                                        </a>
                                    </div>
                                </li>
                                 <br>
                            </ul>
                             </c:if>
                     </c:forEach> 
                     </ul>
                            </div>   
                        </div>                
                    </div>
                    <div class="aui-nav-list-item" style="display:none">
                            <div class="aui-page-list">
                                <div class="aui-page-img">
                                <ul class="showMoreNChildren" pagesize="3">
                     <c:forEach items="${article }" var="article1">
                      	 <c:if test="${article1.articletype.articleTypeId == 4 }">
                            <ul class="article-list">
                                <li>
                                    <div class="article-date">
                                        <strong>12</strong>
                                        <p>${article1.publicTime }</p>

                                    </div>
                                    <div class="article-info">
                                        <a href="article_list_content?articleId=${article1.articleId }">
                                            <h3>${article1.articleName }</h3>
                                            <p>${article1.content }</p>
                                        </a>
                                    </div>
                                </li>
                                 <br>
                            </ul>
                             </c:if>
                     </c:forEach> 
                     </ul>
                                </div>   
                            </div>                
                        </div>

                    
            </div>
        
            </div>

    <br>
    <section class="article-btn">
        <span class="article-prev-btn"></span>
        <span class="article-next-btn"></span>
    </section>
    <nav aria-label="Page navigation" class="article-page">
        <%-- <ul class="pagination">
            <li>第${page.currentPageNum }页，共有${page.totalCount }条数据，一共${page.totalPageNum }页</li>
            <li><a
				href="article?pageNum=1">首页</a></li>
            <li><a
				href="article?pageNum=${page.prePageNum }">上一页</a></li>
            <li><a
				href="article?pageNum=${page.nextPageNum }">下一页</a></li>
            <li><a
				href="article?pageNum=${page.totalPageNum }">末页</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">下一页</span>
                </a>
            </li>
        </ul> --%>
    </nav>
</main>

    <!--footer-->
    <footer >
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
</footer>




</body>

<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery1.more.js"></script>
<script type="text/javascript"> 
//tab切换
$(function(){
	$('.aui-nav-list-box ul li').hover(function(){
		$(this).addClass('aui-current').siblings().removeClass('aui-current');
		$('.aui-nav-list-tab>div:eq('+$(this).index()+')').show().siblings().hide();
	})
});

//调用显示更多插件。参数是标准的 jquery 选择符      
$.showMore(".showMoreNChildren");

</script>

</html>
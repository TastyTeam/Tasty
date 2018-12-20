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


    <script src="js/jquery1-1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/clipboard.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>

<header>
<jsp:include page="head.jsp" />

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
<main>
    <div>
        <div class="main-head">
            <p><span>美食资讯</span></p>
        </div>
    </div>
    <ul class="main-submenu main-submenu-second">
        <li><a href="#">最新新闻</a></li>
        <li><a href="#">餐厅新闻</a></li>
        <li><a href="#">美食热闻</a></li>
        <li><a href="#">甜品站</a></li>
    </ul>
    <div class="article-list-banner"><img src="images/foodnews1.jpg"></div>

</main>
<main>
    <div class="article-content-box">
        <header class="article-content-header"> ${article.articleName } </header>
        <div class="share">
            <span>分享到:</span>
            <div class="bdsharebuttonbox sharebox">
                <a href="javascript:void(0);" class="copy-url-btn" data-clipboard-action="copy" data-clipboard-target="#current-url"><div id="current-url" style="width:0px;height:0px;overflow:hidden;"></div>复制网址</a>
                <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a>
                <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a>
                <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间">QQ空间</a>
                <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a>
                <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">人人网</a>
            </div>
        </div>
        <article class="article-content">
            <p>${article.content }</p>
            
        </article>
        <footer class="article-footer-btn">
<!--             <a>上一篇</a>
            <a>下一篇</a> -->
        </footer>
    </div>
</main>


    <!--footer-->
   <jsp:include page="footer.jsp"></jsp:include>


<script>
    var clipBoardContent="";
    clipBoardContent += this.location.href;
    $('#current-url').html(clipBoardContent);

    // button的class的值
    var clipboard = new Clipboard('.copy-url-btn');
    clipboard.on('success', function(e) {
        alert('复制成功');
    });

    clipboard.on('error', function(e) {
        alert('复制失败，请手动进行复制');
    });
</script>
<script>




    window._bd_share_config = {
    "common": {
        "bdSnsKey": {},
        "bdText": "",
        "bdMini": "2",
        "bdPic": "",
        "bdStyle": "0",
        "bdSize": "16"
    }, "share": {}
};
with (document)0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
</body>

</html>
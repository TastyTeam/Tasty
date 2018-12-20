<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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


  <script type="text/javascript" src="js/index1.js"></script>
  <script type="text/javascript" src="js/indexmore.js"></script>

<style type="text/css">
*{margin:0px; padding:0px;}
body{background:#fff;}
#header{background:#333333}
html, body, div, dl, dt, dd, ol, ul, li, h1, h2, h3, h4, h5, h6, p, blockquote, pre, button, fieldset, form, input, legend, textarea, th, td {
    margin: 0;
    padding: 0;
}

a {
    text-decoration: none;
    color: #08acee;
}

button {
    outline: 0;
}

img {
    border: 0;
}

button,input,optgroup,select,textarea {
    margin: 0;
    font: inherit;
    color: inherit;
    outline: none;
}

li {
    list-style: none;
}

a {
    color: #666;
}

a:hover {
    color: #eee;
}

.clearfix::after {
    clear: both;
    content: ".";
    display: block;
    height: 0;
    visibility: hidden;
}

.clearfix {
}

/* 必要布局样式css */
.cation-content {
    width: 1200px;
    margin: 0 auto;
    padding: 0;
}

.cation-middle {
    line-height: 48px;
    background: #fff;
    padding: 10px 20px 10px 30px;
    font-size: 16px;
    margin-left: 50px;
}

.cation-list {
    overflow: hidden;
}

.cation-list dt {
    float: left;
    width: 64px;
    font-weight: 700;
    line-height: 48px;
    position: relative;
    color: #333;
}

:before, :after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.cation-list dt:after {
    content: "";
    position: absolute;
    right: 12px;
    top: 22px;
    border: 1px solid #333;
    border-width: 0 1px 1px 0;
    width: 4px;
    height: 4px;
    -webkit-transform: rotate(-45deg);
    -moz-transform: rotate(-45deg);
    transform: rotate(-45deg);
}

.cation-list dd {
    border-bottom: 1px dotted #e0e0e0;
    margin-left: 64px;
    overflow: hidden;
}

.cation-list dd a {
    color: #8d8d91;
    font-size: 16px;
    line-height: 14px;
    height: 14px;
    float: left;
    border-right: 1px solid #e0e0e0;
    padding: 0 18px;
    margin: 17px 0;
}

.cation-list dd a.on, .cation-list a:hover {
    color: #fc8080;
}

.cation-list dd a:last-child {
    border-right: 0 none;
}

.cation-list:last-of-type dd {
    border-bottom: 0 none;
}
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

 <link href="css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/current.js"></script>
</head>
<script src="js/jquery.js"></script>
<script src="js/upload.js"></script>
<body>
	
<header>
<jsp:include page="head.jsp"></jsp:include>   
          
</div>
<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"> 
 function f(str){ 
        var sub_menu = document.getElementById(str); 
        var dis_v = sub_menu.style.display; 
          
        if(dis_v == "block") 
          sub_menu.style.display = "none"; 
        else 
          sub_menu.style.display = "block"; 
            
      } 
 
 
/* 	 var foodother= ${typename1.foodOther };
	 var kind=foodother.split(";", 2);
	 var time=kind.split(":",0); */


</script>
  
</header>
<div class="cation-content">
            <div style="height:50px"></div>
             <div style="height:50px"></div> <!-- 可以删除 -->
            <div class="cation-middle">
                
                <c:forEach items="${foodtype }" var="foodtype1">
                <dl class="cation-list">
                  <dt>${foodtype1.typeName } </dt>
                  <dd>
                  <a href="#" rel="" name="${foodtype1.foodTypeId }" class="all on">全部</a>
               	  
                  <c:forEach items="${foodtype1.childTypes }" var="foodtype2">
                  
                  <a href="privateorder" rel="${foodtype2.typeName }" 
                  name="${foodtype1.foodTypeId }" class="default" >${foodtype2.typeName }</a>
                   </c:forEach>
                  </dd>
                 
                  </dl>
                </c:forEach>
               
            </div>
        </div>


        <script type="text/javascript">
            $(function(){
                new SelectTag({
                    child : ".default", //所有默认
                    over : 'on', //当前选中
                    all : ".all" // 默认全部
                });
            })
        </script>

<main>
   
    <div class="private">

        <ul class="main-submenu-info " id="showMoreNChildren" pagesize="3">
        	<c:forEach items="${typeName }" var="typename1">
           <li><a href="fooddetail?foodId=${typename1.foodId }">
               <div class="activity-duration">
                   <img  src="images/activity-duration.png">
                   <p id="time">${typename1.foodOther } </p>
               </div>
               <img src="${typename1.title }" width="330px" height="330px">
              
               <h1 class="food-head">${typename1.foodName }</h1>
               <!-- <p class="food-info"> 每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p> -->
           </a></li>
           </c:forEach>
           
       </ul>
     
     
     </div>
     <!-- <div id='showMorehandle' class="more">MORE</div> -->
</main>

<br>
<br>

    <!--footer-->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.more.js"></script>
<script type="text/javascript">
    //调用显示更多插件。参数是标准的 jquery 选择符      
    $.showMore("#showMoreNChildren");
    </script>
</html>
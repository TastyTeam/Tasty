<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>我的发布</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">  
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
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
<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>

	
<style>
 .comment a:hover{color: #e25111;
} 
 .comment a:visited{color: #e25111;} 
.menu{
    margin-top: 0px;
}
header{
    padding-top: 0px;
}
body{background-color: #f7f7f7;}
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
.main{width: 100%;margin-top: 100px;margin-right:0px;float:left;}
.main-left{
    width: 160px;height:500px;float:left;margin-left: 70px;
}
.main-left a:hover{text-decoration: none;}
.main-left a{text-decoration: none;color: #333;}
.main-left tr td h4{color: black;font-family: "微软雅黑";font-weight: bold;}
.main-right {border: 1px solid #eeeeee;margin-left: 230px;height: auto;width: 1000px;background-color: white;margin-top: 15px;}
.main-right tr td h4{font-weight: bold;}
.comment{width: 95%;margin: 0 auto;}
.comment-tr-1{width: 95%;}
.comment-td-1{width: 160px;}
.comment-td-2{width: 830px; }

footer{
    float: left;
    width: 100%;
    margin-top: 50px;
} 
</style>
</head>
<body style="height: 100%;">
<!-- 导航栏 -->
<div class="menu">
<jsp:include page="head.jsp"></jsp:include>
</div>

<!-- 左侧菜单 -->
<div class="main">
    <div class="main-left">
        <table style="border-collapse:separate; border-spacing:0px 15px;">
            <br>
            <tr>
               <td><h4><img src="images/left1.png">我的资料</h4></td>
            </tr>
            <tr>
                <td><a href="self">&nbsp; &nbsp;&nbsp;&nbsp;个人中心</a></td>
            </tr>
            <tr>
                <td><h4><img src="images/left2.png">我的订单</h4></td>
            </tr>
            <tr>
                <td><a href="">&nbsp; &nbsp;&nbsp;&nbsp;商城订单</a></td>
            </tr>
            <tr>
                <td class="waimai"><a href="myorder">&nbsp; &nbsp;&nbsp;&nbsp;外卖订单</a></td>
            </tr>
            <tr>
                <td><h4><img src="images/left3.png"> 我的发布</h4></td>
            </tr>
            <tr>
                <td class="comment"><a href="comment">&nbsp; &nbsp;&nbsp;&nbsp;话题内容</a></td>
            </tr>
        </table>
    </div>
    <div class="main-right">
        <br>
        <table>
            <tr>
                <td><h4>&nbsp;&nbsp;&nbsp;&nbsp; 我的发布</h4></td>
            </tr>           
        </table>
        <hr>

        <div class="comment">
        <c:forEach items="${MyCommunity.communitySet }" var="MyCommunity1">
        <table>
            <tr class="comment-tr-1">
                <td class="comment-td-1">
                     <img src="${MyCommunity1.img }" width="100px" height="100px"> 
                </td>
                <td class="comment-td-2"> 
                        
                <h4 style="color:#e25111;">${MyCommunity1.title }</h4>
        
                <div id="demo" class="collapse in" id="textInfos" style="
					    overflow : hidden;
					    text-overflow: ellipsis;
					    display: -webkit-box;
					    -webkit-line-clamp: 2;
					    -webkit-box-orient: vertical;">
                ${MyCommunity1.content }
                </div>
              
                </td>
            </tr>
        </table>
        <hr>
        </c:forEach>

        </div>
        
    </div>
</div>
    <!--footer-->
     <jsp:include page="footer.jsp"></jsp:include>



</body>


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
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>外卖订单</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">  
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
<meta charset="utf-8">

<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="author" content="www.yunalading.com" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">
<style>
.waimai a:hover{color: #e25111;
}
.waimai a:visited{color: #e25111;}
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
.table-self{padding-left: 100px;font-size: 19px;}
.divcss5-td-1{width: 100px;} 
.divcss5-td-2{width: 30px;} 
.divcss5-td-3{width: 650px;} 
.divcss5-td-4{width: 100px;}
.grey{background-color: #eeeeee;height: 30px;width: 98%;margin:0 auto;font-size: 10px;padding-top: 8px;}
.orderlist{width: 98%;margin: 0 auto;height: auto;padding-bottom: 10px;}
.orderlist-tr-1{height: 100px;}
.orderlist-td-1{width: 150px;text-align: center;color:#A699B3;border-bottom: #A699B3;}
.orderlist-td-2{width: 100px;}
.orderlist-td-3{width: 400px;color:#A699B3;}
.orderlist-td-4{width: 200px;font-weight: bold;color: #333;font-size: 18px;}
.orderlist-td-5{width: 100px;color:#A699B3;}

footer{
    float: left;
    width: 100%;
    margin-top: 50px;
} 
.divcss-td-1{width: 170px;}
.divcss-td-2{width: 480px;}
.divcss-td-3{width: 200px;}
.divcss-td-4{width: 100px;}
</style>
<script>

</script>
</head>
<body style="height: 100%;">
<!-- 导航栏 -->
<div class="menu">
<header>
<jsp:include page="head.jsp"></jsp:include>

</header>

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
                <td><a href="comment">&nbsp; &nbsp;&nbsp;&nbsp;话题内容</a></td>
            </tr>
        </table>
    </div>
    <div class="main-right">
        <br>
        <table>
            <tr>
                <td><h4>&nbsp;&nbsp;&nbsp;&nbsp; 外卖订单</h4></td>
            </tr>           
        </table>
        <hr>
        <div class="grey">
            <table>
                <tr>
                    <td class="divcss-td-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下单时间</td>
                    <td class="divcss-td-2">订单内容</td>
                    <td class="divcss-td-3">支付金额</td>
                    <td class="divcss-td-4">订单状态</td>
                </tr>
            </table>
        </div>
        <div class="container">
        <c:if test="${not empty myorder}">
        <c:forEach var="container" items="${myorder}">
        <div class="orderlist">
            <table>
            <tr class="orderlist-tr-1">
               <td class="orderlist-td-1"> ${container.orderTime}</td> 
                <td class="orderlist-td-2"><br><a href=""><img src="images/order1.png"></a></td>
                <td class="orderlist-td-3">订单号:   ${container.orderuuid} </td>
                <td class="orderlist-td-4"><br>  ${container.shoppingFee} </td>
                <td class="orderlist-td-5"><br>订单已完成</td>
            </tr>
            </table>  
        </div>
        </c:forEach>
        </c:if></div>
    </div>
</div>
    <!--footer-->
     <jsp:include page="footer.jsp"></jsp:include>



</body>
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

</script>
</html>
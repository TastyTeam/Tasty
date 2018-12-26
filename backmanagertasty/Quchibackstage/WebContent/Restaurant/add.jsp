<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script> 

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
        h1{
        align:center;
        color:green;
 		font-family:'NewTime','新宋体','宋体',sans-serif;
        padding-left:30px;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form action="savereally" method="post" class="definewidth m20">
<input type="hidden" name="id" value="" />
<h1>欢迎入住趣吃外卖商家</h1>
<table class="table table-bordered table-hover ">
    <tr>
        <td width="10%" class="tableleft">店家名称</td>
        <td><input placeholder="商家名字" type="text" name="restaurantname" value="${erestaurant.shopName }"/></td>
    </tr>
    <tr>
        <td class="tableleft">最低送达时间/分钟</td>
        <td ><input placeholder="输入数字即可" type="text" name="restauranttime" value="${erestaurant.arriveTime }"/></td>
    </tr>  
   <tr>
        <td width="10%" class="tableleft">配送费/元</td>
        <td><input placeholder="输入数字即可" type="text" name="restaurantfare" value="${erestaurant.sendFare }"/></td>
    </tr>
    <tr>
        <td class="tableleft">店铺介绍</td>
        <td ><input placeholder="可以介绍一下你的店铺" type="text" name="restaurantintroduce" value="${erestaurant.shopIntroduce }"/></td>
    </tr>  
     <tr>
        <td width="10%" class="tableleft">负责人</td>
        <td><input placeholder="输入店铺负责人" type="text" name="restaurantlawyer" value="${erestaurant.lawyerpeople }"/></td>
    </tr>
    <tr>
        <td class="tableleft">满减情况</td>
        <td ><input placeholder="根据自身情况设置" type="text" name="restaurantfullreduce" value="${erestaurant.fullReduce }"/></td>
    </tr>   <tr>
        <td width="10%" class="tableleft">配送费用详情</td>
        <td><input placeholder="超出起送价后计费方法" type="text" name="restaurantfaredetail" value="${erestaurant.sendFareMore }"/></td>
    </tr>
    <tr>
        <td class="tableleft">状态</td>
        <td >
            <input type="radio" name="status" value="1" checked/> 运营
           <input type="radio" name="status" value="0" /> 休息
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="restaurant";
		 });

    });
</script>
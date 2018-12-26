<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${ctx}/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/Css/style.css" />
    <script type="text/javascript" src="${ctx}/Js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${ctx}/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${ctx}/Js/ckform.js"></script>
    <script type="text/javascript" src="${ctx}/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
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
<form class="form-inline definewidth m20" action="restaurant" method="post">  
    商家名称：
    <input type="text" name="srestaurantId" id="rolename"class="abc input-default" placeholder="商家id" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary" value="编号">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增商家</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead> 
    <tr>
        <th>商家编号</th>
        <th>商家名称</th>
        <th>配送时间</th>
        <th>配送费</th>
         <th>商家介绍</th>
        <th>法人代表</th>
        <th>满减活动</th>
        <th>配送详情</th>
         <th>是否删除</th>
        <th>操作</th>
    </tr>   
    </thead>
   <c:forEach items="${restaurant }" var="onerestaurant">
	     <tr>
            <td>${onerestaurant.shopId }</td>
            <td>${onerestaurant.shopName }</td>
            <td>${onerestaurant.arriveTime }</td>
            <td>${onerestaurant.sendFare }</td>
            <td>${onerestaurant.shopIntroduce }</td>
            <td>${onerestaurant.lawyerpeople }</td>
            <td>${onerestaurant.fullReduce }</td>
            <td>${onerestaurant.sendFareMore }</td>
      
      <td>
                  <a href="restaurant?resaurantId=${onerestaurant.shopId }">删除</a>
                  
            </td>
            <td>
                  <a href="edit?erestaurantId=${onerestaurant.shopId }">编辑</a>
                  
            </td>
        </tr>
           </c:forEach>
        </table>
</body>
</html>
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="add.jsp";
		 });


    });

	/* function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		alert("fjkds");
			var url = "add.jsp";
			
			window.location.href=url;		
		
		}
	
	
	
	
	} */
</script>
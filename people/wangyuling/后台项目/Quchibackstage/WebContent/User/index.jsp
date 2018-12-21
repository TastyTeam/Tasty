<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${ctx }/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx }/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${ctx }/Css/style.css" />
    <script type="text/javascript" src="${ctx }/Js/jquery.js"></script>
    <script type="text/javascript" src="${ctx }/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${ctx }/Js/ckform.js"></script>
    <script type="text/javascript" src="${ctx }/Js/common.js"></script>
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
<form class="form-inline definewidth m20" action="index.html" method="get">    
    用户名称：
    <input type="text" name="username" id="username"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>用户id（phone）</th>
        <th>用户名称</th>
        <th>用户密码</th>
         <th>注册时间</th>
         <th>地址</th>
          <th>性别</th>
        <th>操作</th>
    </tr>
    </thead>
    <c:forEach items="${myuser }" var="oneofuser">
       <tr>
            <td>${oneofuser.phone }</td>
            <td>${oneofuser.userName }</td>
            <td>${oneofuser.password }</td>
            <td>${oneofuser.registTime }</td>
            <td>${oneofuser.address }</td>
            <td>${oneofuser.sex }</td>
             <td>
                <a href="user?dphone=${oneofuser.phone }">删除</a>                
            </td>
        </tr>	
    
    </c:forEach>
	  </table>
	 
</body>
</html>
<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="add.html";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.html";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>
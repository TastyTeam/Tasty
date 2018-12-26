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
<form action="add" method="post" class="definewidth m20">
<table class="table table-bordered table-hover m10">
    <tr>
        <td width="10%" class="tableleft">父类型</td>
       
        <td>
            <select name="parentid">
            <option value="0">填写或选择父类型项目</option>
            <c:forEach items="${parenttype1 }" var="parenttype2">
            <c:if test="${parenttype2.parentId == null }">
            <option value="${parenttype2.foodTypeId }">${parenttype2.typeName }</option>
         
            </c:if>  
            </c:forEach>

            </select>
        </td>
    </tr>
   
<%--     <tr>
    	 <td class="tableleft">子类型标签</td>
    	  <c:forEach items="${parentId }" var="parentId1">
    	  <td>${parentId1.typeName } </td>
    	  </c:forEach>
    	  
    </tr> --%>
   
    <tr>
        <td class="tableleft">新增子类型</td>
        <td><input type="text" name="typeName"/></td>
    </tr>
    
    <tr>
        <td class="tableleft">状态</td>
        <td>
            <input type="radio" name="status" value="0" checked/> 启用
            <input type="radio" name="status" value="1"/> 禁用
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
				window.location.href="index.html";
		 });

    });
</script>
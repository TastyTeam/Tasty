<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE HTML>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${ctx }/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx }/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx }/assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">root</span><a href="/chinapost/index.php?m=Public&a=logout" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">系统管理</div></li>		<li class="nav-item dl-selected"><div class="nav-item-inner nav-order">业务管理</div></li>

        </ul>
    </div>

    <ul id="J_NavContent" class="dl-tab-conten">
    </ul>
  
</div>
<script type="text/javascript" src="${ctx }/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/bui-min.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [{id:'1',
        menu:[{text:'业务管理',
        items:[
        {id:'12',text:'外卖店家管理',href:'Restaurant/restaurant'},
        {id:'4',text:'用户管理',href:'user'},
        {id:'6',text:'美食推荐菜品管理',href:'Menu/menu'},
        {id:'3',text:'商城店家管理',href:'Role/index.html'}, 
         {id:'5',text:'社区发布管理',href:'Community/index.html'},
         {id:'8',text:'我们的提供',href:'Ourprovide/index.html'},
         {id:'10',text:'导航条的管理',href:'Navigation/index.html'},   
          {id:'11',text:'我的订单的管理',href:'MyOrder/index.html'},
           {id:'11',text:'订单详情的管理',href:'OrderDetail/index.html'}
        ]}]},{id:'7',homePage : '9',
        	menu:[{text:'系统管理',items:[{id:'9',text:'用户信息',href:'user'}]}]}];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
</body>
</html>
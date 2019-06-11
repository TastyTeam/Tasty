<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>
		美食搜索
	</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="imgs/font-icon/iconfont.css">
    <link rel="stylesheet" href="css/demo1.css">
    <link rel="stylesheet" href="../../../pro2/default.css">
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
<link rel="stylesheet" href="css/button.css">
<style type="text/css">
	.header-nav{
    background-color: black;
    padding-top: 0px;
    margin-top: 0px;
}
    .main_top{
    	padding-top: 180px;
    	width: 50%;
    	margin: auto;
    }
    .main_bottom{
    	margin-top: 50px;
    	width: 100%;
    	height: 400px;
    	/*border: solid black;*/
    }
    .left{
    	margin-left: 250px;
    	width: 850px;
    	height: 350px;
    	/*border: solid black;*/
    	float: left;
    	
    }
    .right{
    	width: 150px;
    	height: 400px;
    	float: left;
       
     /*border: solid black;*/
    }
    .left_t{
    	height: 30px;
    	width: 460px;
    	color: #ff6767;
    	font-size: 22px;
    	margin-bottom: 20px;
    	font-family: é»ä½;
    	margin-left: 20px;
    }
    .left_tr1{
    	margin-bottom: 20px;
    	float: left;
    	margin-left: 20px;
    }
    .left_td1{
    	width: 100px;

    }
    .left_td2{
    	width: 300px;
    }
    h4{
     margin-left: 10px;
    }
    h4 a{
    	color: black;
    }
    .right_t{
    	height: 30px;
    	width: 300px;
    	color: #ff6767;
    	font-size: 22px;
    	
    	font-family: 黑体;
    	margin-left: 10px;
    }
    .right_ul{
    	margin-top: 10px;
    	margin-left: 40px;
    	font-size: 20px;
    	font-family: 黑体;
    	
    	
    }
        footer{
    float: left;
    width: 100%;
    margin-top: 50px;
} 
.error{
	color:#f00;
	margin-left:340px;
}
</style>
</head>
<body>   
<jsp:include page="head.jsp"></jsp:include>   
</header>
<form action="search" method="post">
<div class="main_top">
<div class="input-group">
<input type="text" class="form-control input-lg"placeholder="请输入菜谱、食材名称..." name="foodName"/ >
<span class="input-group-btn">
<!--  <button class="btn btn-info btn-danger btn-lg">搜索</button>-->
<input type="submit" class="btn btn-info btn-danger btn-lg" value="搜索">
</span>
</div> 
</div>
</form>
<div class="error">
	<span>${error }</span>
</div>
<div class="main_bottom">
	<div class="left">
		<div class="left_t"><img src="images/circle.png">
		流行与排行
				</div>
		<table>
		<c:forEach items="${food }" var="food">
		<tr class="left_tr1">
			<td class="left_td1">
				<img src="${food.title }" width="90px"
				height="90px">
			</td>
			<td class="left_td2">
				<h4><a href="fooddetail?foodId=${food.foodId }">
					${food.foodName }
				</a>
				</h4>
				 <div id="demo" class="collapse in" id="textInfos" style="
					    overflow : hidden;
					    text-overflow: ellipsis;
					    display: -webkit-box;
					    -webkit-line-clamp: 2;
					    -webkit-box-orient: vertical;
					    margin-left: 10px;
                        color: grey;
					    ">
                ${food.foodOther }
                </div>
              
			</td>
		</tr>
</c:forEach>
		
		</table>
	</div>
	<div class="right">
		<div class="right_t">
			<img src="images/circle.png">大家都在搜
				</div>
		<ul class="right_ul">
			<li>
						<img src="images/scircle.png">
						早餐
					</li>
					<li>
						<img src="images/scircle.png">
						 鱼
					</li>
					<li>
						<img src="images/scircle.png">
						红烧肉
					</li>
					<li>
						<img src="images/scircle.png">
						牛肉
					</li>
					<li>
						<img src="images/scircle.png">
						豆腐
					</li>
					<li>
						<img src="images/scircle.png">
						胡萝卜
					</li>
					<li>
						<img src="images/scircle.png">
						 汤
					</li>
					<li>
						<img src="images/scircle.png">
						虾
					</li>
					<li>
						<img src="images/scircle.png">
						排骨
					</li>
					<li>
						<img src="images/scircle.png">
						糖醋排骨
					</li>
		</ul>
	</div>
	<div class="footer">
	<jsp:include page="footer.jsp"></jsp:include> 
	</div>
</div>
</body>
<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</html>
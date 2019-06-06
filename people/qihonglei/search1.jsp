<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
	<link rel="stylesheet" href="css/search.css">
	<style>
		.bot ul li{
			width:640px;
		}
		 footer{
    float: left;
    width: 100%;
    margin-top: 50px;
} 
 .main_top{
    	padding-top: 170px;
    	width: 50%;
    	margin: auto;
    }
   
    
	</style>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
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

	<div class="wclear">
		<div class="space_left">
			<div class="wrap">
				<div class="circle"><img src="images/circle.png"></div>
				<h3 class="on">查询结果</h3>
			</div>
			<div class="bot">
			<c:forEach items="${food }" var="f">
				<ul style="list-style-type:none;">
				
						<li>
							<div class="pic">
								<a href="#">
									<img class="imgLoad" src="${f.title }"
										width="120" height="120" />
								</a>
							</div>
							<div class="detail">
								<h3><a href="fooddetail?foodId=${f.foodId }
								"
										target="_blank">${f.foodName }</a></h3>
								<div class="substatus clear">
									
								<p class="subcontent">${f.foodMain }</p>
							</div>
						</li>
					
				</ul>
				</c:forEach>	
			</div>
			
		</div>

		<div class="space_right">
				<div class="mo mt10">
					<div class="circle1"><img src="images/circle.png"></div>
					<h3 class="sou">大家都在搜</h3>
				</div>
				<ul class="s_right">
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
	</div>

<div class="footer">
	<jsp:include page="footer.jsp"></jsp:include> 
	</div>
</body>
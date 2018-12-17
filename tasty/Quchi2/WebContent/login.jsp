<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css">
    <title>登录</title>

<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript">
	function xian(){
		var myAlert2=document.getElementById("myAlert2");
		 myAlert2.style.display="block";
	}
</script>
</head>

  <body>
    <div class="box">
      
      <div class="container">
         <img src="images/logo1.png" class="logo">
        <form class="form-signin" style="width:25%;" action="login" method="post">
          <input type="text" maxlength="11" id="iphone" class="form-control" placeholder="手机号" autofocus style="margin-bottom: 20px" name="phone" value="${phone }">
          <input type="password" maxlength="20" id="pwd" class="form-control" placeholder="密码" style="margin-bottom: 20px" name="password" value="${pwd }">
          <input type="text" maxlength="4" id="yanzm" class="form-control" placeholder="验证码" style="width:35%;vertical-align:middle;margin-top:10px;" name="yan">
          <img src="add" title="看不清" alt="验证码" class="yzm" onclick="f(this)">
          <script> 
			function f(obj){
				obj.src="add?i="+Math.random();
			} 
</script> 
			<!-- <img src="images/yzm.png" class="yzm"/> -->
          <div style="margin:-10px 0px 0px;"><a href="forgetPwd.jsp" class="wangjimima">忘记密码?</a></div>
          
          <input class="btn btn-lg btn-primary btn-block" type="submit" value="登录">
          <c:if test="${msg==null }">
          <div id="myAlert2" class="alert alert-warning" style="text-align:left;margin-top: 0px;height:50px;">
          </c:if>
          <c:if test="${msg!=null }">
          <div id="myAlert2" class="alert alert-warning" style="text-align:left;margin-top: 0px;height:50px;display:block">
          </c:if>
              <a href="#" class="close" data-dismiss="alert">&times;</a>
              <span>${msg }</sapn>
          </div>
        </form>
      </div>
    </div>  
    <!-- <script src="js/jquery.js"></script>    
		<script src="js/bootstrap.min.js"></script> -->
  </body>
</html>

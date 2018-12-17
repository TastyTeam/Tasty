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
    <link rel="stylesheet" href="css/register.css">	
    <link rel='stylesheet prefetch' href='css/pwd.css'>
    <title>注册</title>
    <script type="text/javascript" src="js/register.js"></script>
</head>



  <body>
    <div class="box">
   

      <div class="form-container" style="position: relative;top:0px;">
          <img src="images/logo1.png" class="logo">
          <form class="form-2" action="regist" method="post">
            <input type="text" maxlength="11" id="iphone" class="form-control" placeholder="手机号" autofocus style="width: 285px;margin-left: 3%" name="phone" value="${phone }">
            <input type="text" maxlength="6" id="username" class="form-control" placeholder="昵称" autofocus style="margin: 20px 0px 10px;width: 285px;margin-left: 3%" name="username" value="${username }">
            <lable>
              <input class="input-2" id="pwd" type="password" placeholder="请输入密码" name="password" value="${password }">
            </lable>
            
            <input class="input-4" type="password" id="pwd2" placeholder="重新输入密码" name="password1" value="${password1 }">
          <input type="text" maxlength="4" id="yzm" name="yzm" class="form-control" placeholder="验证码" style="margin-bottom: 0px;margin-top: 10px;width: 285px;margin-left: 3%">
            <div id="yanzheng" name="yanzheng"></div> 
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="注册" style="margin-top:10px ;">
            <c:if test="${msg1!=null }">        
            <div id="myAlert2" class="alert alert-warning" style="display:block;margin-top:10px;height:60px;">
            </c:if>
            <c:if test="${msg1==null }">        
            <div id="myAlert2" class="alert alert-warning" style="margin-top:10px;height:60px;">
            </c:if>
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                	<sapn>${msg1 }</sapn>
            </div>
          </form>
      </div>
       <!-- <div class="form-container" style="max-height:40px;">
          <form class="form-4" style="margin-top:120px">
            <lable>
           <input class="input-4" type="password" id="pwd2" placeholder="重新输入密码"> 
              
              </lable>

          </form>
      </div>-->
    </div>  
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script type="text/javascript" src="js/pwd.js"></script>

    <script>
    </script>
  </body>
</html>

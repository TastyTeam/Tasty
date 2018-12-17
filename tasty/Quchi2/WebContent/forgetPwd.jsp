<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>忘记密码</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" href="css/forgetpwd.css" rel="stylesheet" />

<script src="js/forgetpwd.js"></script>

</head>
<body>
 
  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>修改完成</strong></div>
      </div>
     </div><!--for-liucheng/-->

     <div class="panel panel-success" style="height:500px;">
        <div class="panel-heading">
          <h3 class="panel-title">找回密码</h3>
        </div>
        <div class="panel-body">  
            <div class="box">
            	<form action="zhao" method="post">
                  <img src="images/logo1.png" class="logo">
                  <input type="text" maxlength="11" id="iphone" class="form-control" placeholder="手机号" autofocus style="width:20%" name="phone" value="${phones }">
                    <ul>
                      <li>
                        <input type="text" maxlength="4" id="yanzm" class="form-control" placeholder="验证码" style="width:7%;vertical-align:middle;margin-top:10px" name="yan1" value="${yan1 }">
                        <img src="add1" title="看不清" alt="验证码" class="yzm" onclick="f(this)">
          <script> 
			function f(obj){
				obj.src="add1?i="+Math.random();
			} 
		  </script> 
                      </li>
                  </ul>
                  <input type="submit" value="下一步" class="btn btn-warning" style="margin-left:7.5%;">
                  <!-- <button class="btn btn-warning" style="margin-left:7.5%;">下一步</button> -->
                  
                  <c:if test="${msg2==null }">
                  <div id="myAlert2" class="alert alert-warning" style="width:20%; margin-top:10px;">
                  </c:if>
                   <c:if test="${msg2!=null }">
                  <div id="myAlert2" class="alert alert-warning" style="width:20%; margin-top:10px;display:block;">
                  </c:if>
                      <a href="#" class="close" data-dismiss="alert">&times;</a>
                      <sapn>${msg2 }</sapn>
                      </form>  
                  </div>
           		     
              </div>
        </div>
      </div>   
   </div><!--web-width/-->
  </div><!--content/-->
  
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>忘记密码</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" href="css/forgetpwd.css" rel="stylesheet" />
</head>


<body>

  <div class="content">
    <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext for-cur"><em>4</em><br /><strong>修改完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
      
     <div class="panel panel-success" style="height:500px;">
        <div class="panel-heading">
          <h3 class="panel-title">找回密码</h3>
        </div>
        <div class="panel-body">  
          <div class="box" style="font-size:15px;">
            <span id="second">5</span>秒后回到登录页<a href="login.jsp">若无反应点击跳转</a>
          </div>
        </div>
    </div>
   </div><!--web-width/-->
  </div><!--content/-->

  <script type="text/javascript"> 
    window.onload=function(){
      var sec = document.getElementById("second");
      var i = 5;
      var timer = setInterval(function(){
        i--;
        sec.innerHTML = i;
        if(i==1){
          window.location.href = "login.jsp";
        }
      },1000);
    }
  </script> 
</body>
</html>

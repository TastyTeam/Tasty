<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>忘记密码</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" href="css/forgetpwd.css" rel="stylesheet" />
<link rel='stylesheet prefetch' href='css/pwd.css'>

</head>
<script src="js/forgetpwd3.js"></script>
<body>

  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>修改完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     
     <div class="panel panel-success" style="height:500px;">
        <div class="panel-heading">
          <h3 class="panel-title" style="text-align:left;">找回密码</h3>
        </div>
        <div class="panel-body" style="max-height:450px;">
            <img src="images/logo.png" class="logo2">
            <div class="form-container" style="position: relative;top:0px;">
                <form class="form-2" action="setNewPwd" method="post">
                  <lable>
                    <input class="input-2" id="pwd" type="password" placeholder="新的登录密码" name="pwd">
                  </lable>
                  <div class="progress-bar_wrap">
                    <div class="progress-bar_item progress-bar_item-1"></div>
                    <div class="progress-bar_item progress-bar_item-2"></div>
                    <div class="progress-bar_item progress-bar_item-3"></div>
                  </div> 
                   <lable>
                    <input class="input-4" type="password" id="pwd2" placeholder="确认密码" name="pwd1">
                    </lable> 
                    <button class="btn btn-warning" ><a href="forgetPwd2.jsp">上一步</a></button>
                <button class="btn btn-warning" style="margin-left:7.5%;">提&nbsp;&nbsp;&nbsp;&nbsp;交</button>       
                </form>
            </div>
            <c:if test="${msgs==null }">
            <div id="myAlert2" class="alert alert-warning" style="margin:100px auto 0px; width:25%;text-align: center;">
   			</c:if>
   			<c:if test="${msgs!=null }">
            <div id="myAlert2" class="alert alert-warning" style="margin:100px auto 0px; width:25%;text-align: center;display:block">
   			</c:if>         
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <sapn >${msgs }</sapn>
            </div>
          
        </div>

        

        


    </div>

    

      

   </div><!--web-width/-->
  </div><!--content/-->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script type="text/javascript" src="js/pwd.js"></script>

</body>
</html>

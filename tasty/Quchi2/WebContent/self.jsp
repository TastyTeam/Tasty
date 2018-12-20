<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">  
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="author" content="www.yunalading.com" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.css">

<style>
.self a:hover{color: #e25111;
}
.self a:visited{color: #e25111;}
.menu{
    margin-top: 0px;
}
header{
    padding-top: 0px;
}
body{background-color: #f7f7f7;}
.header-nav{
    background-color: black;
    padding-top: 0px;
    margin-top: 0px;
}
#sub_menu_1,#sub_menu_2{ 
    display: none; 
} 
.dropdown-menu{
    text-align: center !important;
}    
.main{width: 100%;margin-top: 100px;margin-right:0px;float:left;}
.main-left{
    width: 160px;height:500px;float:left;margin-left: 70px;padding-top: 20px;
}
.main-left a:hover{text-decoration: none;}
.main-left a{text-decoration: none;color: #333;}
.main-left tr td h4{color: black;font-family: "微软雅黑";font-weight: bold;}
.main-right {border: 1px solid #eeeeee;margin-left: 230px;height: 500px;width: 1000px;background-color: white;margin-top: 15px;}
.main-right tr td h4{font-weight: bold;}
.table-self{padding-left: 100px;font-size: 19px;}
.divcss5-td-1{width: 100px;} 
.divcss5-td-2{width: 30px;} 
.divcss5-td-3{width: 650px;} 
.divcss5-td-4{width: 100px;}
footer{
    float: left;
    width: 100%;
    margin-top: 50px;
} 
</style>
    
<script type="text/javascript">

function address(){
	 var address=document.getElementById("address").value;
	location.href="address?address=" +address;
			
}
function sex(){
	 var s=document.getElementsByName("sex");
	  for(var i=0;i<s.length;i++){
			if(s[i].checked){
				alert(s[i].value);
				location.href="sex?sex="+s[i].value;
				}
		} 
		
}  
function name1(){
	 var name=document.getElementById("name").value;
	location.href="name?name=" +name;
	 }
function password(password){
	var password1=document.getElementById("password1").value;
	var password2=document.getElementById("password2").value;
	alert(password1);
	alert(password2);
	if(password==password1){
		location.href="password?password=" +password2; 
		
			}else{
		alert("密码错误");
	}      
} 
</script>

</head>
<body style="height: 100%;">
<!-- ======================================导航栏====================================== -->
<header>
    <jsp:include page="head.jsp" />
</header>
<!-- ==========================================================左侧菜单========================================== -->
<div class="main">
        <div class="main-left">
            <table style="border-collapse:separate; border-spacing:0px 15px;">
                <tr>
                   <td><h4><img src="images/left1.png">我的资料</h4></td>
                </tr>
                <tr>
                    <td class="self"><a href="self">&nbsp; &nbsp;&nbsp;&nbsp;个人中心</a></td>
                </tr>
                <tr>
                    <td><h4><img src="images/left2.png">我的订单</h4></td>
                </tr>
                <tr>
                    <td><a href="">&nbsp; &nbsp;&nbsp;&nbsp;商城订单</a></td>
                </tr>
                <tr>
                    <td><a href="myorder">&nbsp; &nbsp;&nbsp;&nbsp;外卖订单</a></td>
                </tr>
                <tr>
                    <td><h4><img src="images/left3.png"> 我的发布</h4></td>
                </tr>
                <tr>
                    <td><a href="comment">&nbsp; &nbsp;&nbsp;&nbsp;话题内容</a></td>
                </tr>
            </table>
        </div>
        <div class="main-right">
                <br>
                <table>
                    <tr>
                        <td><h4>&nbsp;&nbsp;&nbsp;&nbsp; 我的资料</h4></td>
                    </tr>           
                  
                </table>
                <hr>
        
                <div class="table-self">
                <table>
                    <br>
                    <tr>
                        <td class="divcss5-td-1">昵称   <hr></td>
                        <td class="divcss5-td-2">|  <hr></td>
                        <td class="divcss5-td-3">${user.userName}<hr></td>
                        <td class="divcss5-td-4"> <div class="container">
                       
                                <!-- 按钮：用于打开模态框 -->
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                                  修改
                                </button>
                                 
                                <!-- 模态框 -->
                                <div class="modal fade" id="myModal">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                 
                                      <!-- 模态框头部 -->
                                      <div class="modal-header">
                                        <h4 class="modal-title">修改昵称</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>
                                 
                                      <!-- 模态框主体 -->
                                      <div class="modal-body">
                                        <table>
                                            <tr>
                                                <td> 当前昵称：${user.userName}</td>
                                            </tr>
                                        </table>
                                        <hr>
                                        <table>
                                            <tr>
                                                <td>修改为：<input type="text" autofocus id="name"></td>
                                            </tr>
                                        </table>
                                      </div>
                                 
                                      <!-- 模态框底部 -->
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="name1()">保存</button>                           
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                      </div>
                                 
                                    </div>
                                  </div>
                                </div>
                              </div>
                            <hr>
                            </td>
                    </tr>
                
                  
                    <tr>
                           
                        <td class="divcss5-td-1"> <br>更改密码<hr></td>
                        <td class="divcss5-td-2"><br>|<hr></td>
                        <td class="divcss5-td-3"><br>●●●●●●●●●●<hr></td>
                        <td class="divcss5-td-4"> <br><div class="container">
                           
                                    <!-- 按钮：用于打开模态框 -->
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal1">
                                      修改
                                    </button>
                                     
                                    <!-- 模态框 -->
                                    <div class="modal fade" id="myModal1">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                     
                                          <!-- 模态框头部 -->
                                          <div class="modal-header">
                                            <h4 class="modal-title">修改密码</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                          </div>
                                     
                                          <!-- 模态框主体 -->
                                          <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td> 当前密码：<input type="password" autofocus id="password1"></td>
                                                </tr>
                                            </table>
                                            <hr>
                                            <table>
                                                <tr>
                                                    <td>新密码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="password2"></td>
                                                </tr>
                                            </table>
                                          </div>
                                     
                                          <!-- 模态框底部 -->
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="password(${user.password})" >保存</button>  
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                          </div>
                                     
                                        </div>
                                      </div>
                                    </div>
                                    
                                  </div><hr></td>
                        </tr>
                 <!-- 性别 -->
               <tr>
                        <td class="divcss5-td-1">性别   <hr></td>
                        <td class="divcss5-td-2">|  <hr></td>
                        <td class="divcss5-td-3"><a href="">${user.sex}</a>  <hr></td>
                        <td class="divcss5-td-4"> <div class="container">
                       
                                <!-- 按钮：用于打开模态框 -->
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal2">
                                  修改
                                </button>
                                 
                                <!-- 模态框 -->
                                <div class="modal fade" id="myModal2">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                 
                                      <!-- 模态框头部 -->
                                      <div class="modal-header">
                                        <h4 class="modal-title">修改性别</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>
                                 
                                      <!-- 模态框主体 -->
                                      <div class="modal-body">
                                        <table>
                                            <tr>
                                                <td>当前性别：${user.sex}</td>
                                            </tr>
                                        </table>
                                        <hr>
                                        <table>
                                            <tr>
                                                <td>修改为：<input type="radio" name="sex" value="女" id="ordersex"/>女
                                                            <input  type="radio" name="sex" value="男" id="ordersex"/>男</td></td>
                                            </tr>
                                        </table>
                                      </div>
                                 
                                      <!-- 模态框底部 -->
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="sex()">保存</button>  
                                         
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                      </div>
                                 
                                    </div>
                                  </div>
                                </div>
                              </div>
                            <hr>
                            </td>
                    </tr>
           			<!-- 地址 -->
           			<tr>
                        <td class="divcss5-td-1">地址   <hr></td>
                        <td class="divcss5-td-2">|  <hr></td>
                        <td class="divcss5-td-3"><a href="">${user.address}</a>  <hr></td>
                        <td class="divcss5-td-4"> <div class="container">
                       
                                <!-- 按钮：用于打开模态框 -->
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal3">
                                  修改
                                </button>
                                 
                                <!-- 模态框 -->
                                <div class="modal fade" id="myModal3">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                 
                                      <!-- 模态框头部 -->
                                      <div class="modal-header">
                                        <h4 class="modal-title">修改地址</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>
                                 
                                      <!-- 模态框主体 -->
                                      <div class="modal-body">
                                        <table>
                                            <tr>
                                                <td> 当前地址：${user.address}</td>
                                            </tr>
                                        </table>
                                        <hr>
                                        <table>
                                            <tr>
                                                <td>修改为：<input type="text" id="address" autofocus></td>
                                            </tr>
                                        </table>
                                      </div>
                                 
                                      <!-- 模态框底部 -->
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="address()">保存</button>  
                                         
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                      </div>
                                 
                                    </div>
                                  </div>
                                </div>
                              </div>
                            <hr>
                            </td>
                    </tr>
           
                        <!-- <tr>
                                <td class="divcss5-td-1"> <br>换绑手机<hr></td>
                                <td class="divcss5-td-2"><br>|<hr></td>
                                <td class="divcss5-td-3"><br>16666666666<hr></td>
                                <td class="divcss5-td-4"><br> <div class="container">
                                        <a href=""><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal2">
                                          修改
                                        </button>   </a>                   
                                            </div>
                                          </div>
                                        </div>
                                        
                                      </div><hr></td>
                            </tr> -->
                    </table>
              
                </div>
            </div>
    </div>

     <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="js/jquery1-1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"> 
 function f(str){ 
        var sub_menu = document.getElementById(str); 
        var dis_v = sub_menu.style.display; 
          
        if(dis_v == "block") 
          sub_menu.style.display = "none"; 
        else 
          sub_menu.style.display = "block"; 
            
      } 

</script>
</html>
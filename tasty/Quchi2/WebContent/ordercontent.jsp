<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>订单</title>
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
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/button.css">
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
        <link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>
            body{background-color: #f7f7f7;}
            .menu{height: 100px;width: 100%;background: #333333;color:white;}
            header{padding-top: 20px;padding-left: 60px;}
            .menu-td-1{width: 230px;}
            .menu-td-1:after{content: "|";display: inline-block;}
            .menu-td-2{width: 500px;font-size: 24px;}
            .menu-td-3{width: 200px;}
            .order{margin-top: 30px;}
            .order-left{width: 400px;height: auto; background-color: white;margin-left: 80px;border: 1px solid #eeeeee;padding-top: 18px;float: left;}
            .table1-td-1 {font-weight: bold;font-size: 20px;padding-left: 20px;width: 250px;}
            .table1-td-2 a{text-decoration: none;color: #333333;}
            .table2{font-size: 12px;font-weight: bold;text-align: center;border-collapse:separate; border-spacing:0px 10px;color: grey;}
            .table2-td-1{width: 130px;}
            .table2-td-2{width: 130px;}
            .table2-td-3{width: 130px;}
            .table3{color: black;font-size: 14px;text-align: center;border-collapse:separate; border-spacing:0px 10px;}
            .table3-td-1{width: 130px;}
            .table3-td-2{width: 130px;}
            .table3-td-3{width: 130px;}
            .table4{font-size: 28px;}
            .table4-td-1{width: 200px;padding-left: 30px;color: #333333;font:24px;font-weight: bold;}
            .table4-td-2{width: 200px;color: red;padding-right: 20px;text-align: right;}
            .order-right{height: auto;width: 750px;border: 1px solid #eeeeee;padding-left: 10px;background-color: white;float: left;margin-left: 20px;}
            .order-right1{color: #333333;height: 47px;font-weight: bold;font-size: 20px;padding-top: 19px;}
            .order-right2{width: 700px;border: 1px solid #eeeeee;height: 75px;float: left;margin-left: 20px;padding-left: 0px;}
            .addimg{float: left;padding-left: 10px;}
            .info{padding-left: 30px; height: auto;width: 550px;padding-top: 15px;float: left;border-left: 1px solid #eeeeee;}
            .change{width: 10px; padding-right: 0px;margin-right: 0px;}
            .order-right3{color: #333333;height: 47px;font-weight: bold;font-size: 20px;padding-top: 19px;margin-top: 20px;float: left;}
            .order-right4{float: left;width: 700px;margin-top: 20px;margin-left: 20px;}
            .order-right5{color: #333333;height: 47px;font-weight: bold;font-size: 20px;padding-top: 19px;margin-top: 20px;float: left;}
            .order-right6{float: left;width: 700px;margin-top: 20px;margin-left: 20px;height: 150px;}
            .beizhu{border-collapse:separate; border-spacing:0px 20px;font-size: 14px;}
            .order-right6-td1{width: 100px;}
            .order-right7{float: left;width: 700px;text-align: right;height: 100px;}
            .modal-body{padding-left: 10px;text-align: left;}
            .modal-body img{height: 300px;width: 300px;}
          
            footer{margin-bottom: 0px;float: left;width: 100%;margin-top: 100px;}
        </style> 
        <script type="text/javascript">
        	/* 修改信息 */
        	function insertmyorder(){
        		var name=document.getElementById("ordername").value;
        		var s= document.getElementsByName("sex");
        		var address=document.getElementById("orderaddress").value;
        		var tel=document.getElementById("ordertel").value;
        		for(var i=0;i<s.length;i++){
        			if(s[i].checked){
        				
        				location.href="insertorder?name=" + name + "&sex=" +s[i].value  + "&address=" + address + "&tel=" + tel;
        			}
        		}
        		
        		/* var location=document.getElementById("orderlocation").value; */
        		 
        		
        		
        	}
        	/* 补充其他信息 */
        	function insertother(){
        		var addinformation=document.getElementById("addinformation").value;
        		var tableware=document.getElementById("tableware").value;
        		location.href="insertother?addinformation="+ addinformation+ "&tableware=" + tableware ;
        	}
        	
        </script>
    </head>
    <body>
        <div class="menu">
            <header>
                <table class="menutable">
                    <tr>
                        <td class="menu-td-1"><img src="images/logo2.png"></td>
                        <td class="menu-td-2">订单信息</td>
                        <td class="menu-td-3"><img src="images/checkout.png"></td>
                    </tr>
                </table> 
            </header>
        </div>
        <div class="order">
            <div class="order-left">
                <table class="table1">
                    <tr>
                        <td class="table1-td-1">商品详情</td>
                        <td class="table1-td-2"><a href="single.html"><< 返回商家修改</a></td>
                    </tr>
                </table>
                <hr>
                <table class="table2">
                    <tr>
                        <td class="table2-td-1">商品</td>
                        <td class="table2-td-2">份数</td>
                        <td class="table2-td-3">单价</td>
                    </tr>
                </table>
        
            <c:forEach var="cart" items="${cart}">
                <table class="table3">
                <c:if test="${cart.count ne 0 }">
                    <tr id="dish1">
                        <td class="table3-td-1">${cart.fastfood.fastfoodName}</td>
                        <td class="table3-td-2"><input  type="number" value="${cart.count }" min="0" id="${cart.fastfood.fastfoodId}" style="width:50px;" onclick="order('${cart.fastfood.fastfoodId}');"></td>
                        <td class="table3-td-3" id="price1">${cart.fastfood.fastfoodPrice}</td>
                    </tr>
                </c:if>
                </table>
               </c:forEach>
            
                <hr>
                <table class="table4">
                    <tr>
                        <td class="table4-td-1">
                                结算
                        </td>
                        <td class="table4-td-2" id="all">
                     ￥  ${all}.00
                        </td>
                    </tr>
                </table>
                <br>
            </div>

            <div class="order-right">
               <div class="order-right1">&nbsp;&nbsp;收货地址 </div>
               <hr>
               <div class="order-right2">
                            <table>
                                <tr>
                                    <td class="addimg"><img src="images/address.png"></td>
                                    <td class="info"><p>${orderuu.orderName} ${orderuu.orderSex }士   ${orderuu.orderTel }</p>
                                        <p>地址：${orderuu.orderAddress }  </p></td>
                                    <td class="change"><button class="btn btn-danger btn-m" data-toggle="modal" data-target="#myModal">
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
                                                    <table style="border-collapse:separate; border-spacing:0px 30px;">
                                                        <tr>
                                                            <td>姓名：&nbsp;&nbsp;<input type="text" autofocus id="ordername"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>性别：&nbsp;&nbsp;<input type="radio" name="sex" value="女" id="ordersex"/>女
                                                            <input  type="radio" name="sex" value="男" id="ordersex"/>男</td>
                                                            
                                                        </tr>
                                                        
                                                        <tr>
                                                                <td>地址：&nbsp;&nbsp;<input type="text" id="orderaddress" placeholder="详细门牌号..."></td>
                                                        </tr>
                                                        <tr>
                                                                <td>电话：&nbsp;&nbsp;<input type="text" id="ordertel"></td>
                                                        </tr>
                                                    </table>
                                                    
                                                    </div>
                                            
                                                    <!-- 模态框底部 -->
                                                    <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="insertmyorder()">保存</button>  
                                                    
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                    </div>
                                    </td>
                                </tr>
                            </table>
               </div>
             
               <div class="order-right3">&nbsp;&nbsp;付款方式</div>
               
               <div class="order-right4">
                <ul>
                    <li class="pay"><a><img src="images/alipay.png" /></a></li>
                    <li class="pay"><img src="images/wechat.png" /></li>
                  
                  </ul>
                </div>

                <div class="order-right5">
                    &nbsp;&nbsp;其他信息
                </div>
                <div class="order-right6">
                    <table class="beizhu">
                        <tr>
                            <td class="order-right6-td1">添加备注</td>
                            <td class="order-right6-td2"><input id="addinformation" type="text"></td>
                        </tr>
                        <tr>
                            <td class="order-right6-td1">餐具数量</td>
                            <td class="order-right6-td2"><select class="m-wrap" id="tableware" style="width: 180px; padding: 2px 0;">
                                <option value="0">无需餐具</option>
                                <option value="1">1份</option>
                                <option value="2">2份</option>
                                <option value="3">3份</option>
                                <option value="4">4份</option>
                            </select>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="order-right7">
                    <button type="button" class="btn btn-danger" data-toggle="modal"   data-target="#myModalmoney" >
                        确定付款
                      </button>
                       <!-- 模态框 -->
                       <div class="modal fade" id="myModalmoney">
                        <div class="modal-dialog">
                          <div class="modal-content">
                       
                            <!-- 模态框头部 -->
                            <div class="modal-header">
                              
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                       
                            <!-- 模态框主体 -->
                            <div class="modal-body">
                              <img src="images/money.JPG">
                            </div>
                       
                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                             <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">  <a href="success.html">支付完成</a></button> -->
                            <input type="button" value="支付成功"  onclick="insertother()" > 
                            </div>
                       
                          </div>
                        </div>
                      </div>
                </div>
            </div>
        </div>
       
        <jsp:include page="footer.jsp"></jsp:include>
        
    
    </body>    
    <script src='js/jquery1.js'></script>
    <script src="js/index1.js"></script>
    <script>
    /*  更改购物车内物品数量 */
	
           function order(re){
        	  
                var strtonu = document.getElementById(re).value; 
                var  all = document.getElementById("all");
             if(strtonu==0){
            /* dish1.style.display="none"; */
            all.innerHTML= 0;
            }else {
            	/* var x=${ordercount * orderdetail.fastfoodPrice}
                all.innerHTML= '￥'+ x +'.00'; */
            } 
            
            location.href="insertcount?count="+strtonu+"&fastfoodId="+re;
            
            }
          
</script>
</html>
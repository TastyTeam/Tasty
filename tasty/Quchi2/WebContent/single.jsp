<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <title>美食城</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">    
<link rel="stylesheet" href="css/default.css">
<meta charset="utf-8">
<link rel="stylesheet" href="css/single.css">
<link rel="stylesheet" href="css/button.css">
<script src="js/jquery.min.js"></script>
 <script src="js/jquery1-1.js"></script>
<script type="text/javascript">
    $(function () {
        var ie6 = document.all;
        var dv = $('#top1'), st;
        dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
        $(window).scroll(function () {
            st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
            if (st > parseInt(dv.attr('otop'))) {
                if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果
                    dv.css({ position: 'absolute', top: st });
                }
                else if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: 0 });
            } else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
        });
    });
</script>
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
<script type="text/javascript">
    function add(id,shopId){
                 var num=document.getElementById("shopCart");
                  num.value=parseInt(num.value)+1;
                  
                 var phone='15226517505';
                var c='1';
                 $
					.ajax({
						url : "add?fastfoodId=" + id + "&count="
								+ c + "&phone=" + phone+ "&shopIdd=" + shopId,
						async : true,
						type : "POST",
					});
               	
             }
    
 </script>

<style>
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
</style>
</head>
<body>
   <header>
		<div class="header-nav">
        <div role="navigation">
            <a href="#" rel="home" class="hd-logo" title="美食餐厅"><img src="images/logo2.png"></a>
            <ul class="hd-nav">
                <li class="search-box-li">
                    <div><input type="text" name="search-keyword" placeholder="输入关键词" form="search-keyword"><i
                            class="iconfont search-submit">&#xe617;</i></div>
                    <i class="search-exit"></i></li>
                <li><a href="index.jsp" name="index">${lists.get(0).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="privateorder" name="productlist">${lists.get(1).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="article" name="article">${lists.get(2).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="shop_index.html" name="contact">${lists.get(3).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="map.jsp" name="about">${lists.get(4).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="communities?pageNum=1" name="about">${lists.get(5).name }<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
            </ul>

            <!-- <div class="motai"></div> -->
            <c:if test="${uname==null}">
            <ul>
                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                <li><a href="login.jsp">登录</a></li>&nbsp;&nbsp;
                <li><a href="register.jsp">注册</a></li>
                <li><a href="index.jsp"><i class="iconfont nav-bottom">&#xe61f;</i></a></li>
            </ul>
            </c:if>
          	<c:if test="${uname!=null}">
            <div class="sec_menu">
                            <ul>
                                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                                <li><a>欢迎，</a></li>&nbsp;
                                <li><a>${uname}</a></li>&nbsp;
                                <li onclick = "f('sub_menu_1')">
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-inverse dropdown-toggle btn-xs" data-toggle="dropdown" >
                                        <span class="caret"></span>
                                    </button>
                                   
                                    <ul class="dropdown-menu" role="menu" id="sub_menu_1">
                            			<li class="sma-menu"><a href="self"><img src="images/menu11.png">个人中心</a></li><br>
                            			<li><a href="comment"><img src="images/menu22.png">&nbsp;我的发布</a></li><br>
                            			<li><a href="myorder"><img src="images/menu33.png">&nbsp;我的订单</a></li><br>
                            			<li><a href="SingOut"><img src="images/menu44.png">&nbsp;退出登录</a></li>
                    				</ul>
                                 
                                    </div>
                                </li>
                            </ul>
                            </div>
                     </c:if>

        </div>
        <div class="search-box">
            <form method="post" action="#" id="search-keyword">
                <input type="text" name="search-keyword" placeholder="请输入您的内容">
                <span>
                    </span>
            </form>

        </div>

    </div>
		
</header>
<div class="header">
    <div class="content-wrapper">
        <div class="avatar">
            <img width="64" height="64" src="${ctx }/${restaurant.shopImg}">
        </div>
        <div class="content">
            <div class="title">
                <span class="brand"></span>
                <span class="name">${restaurant.shopName}</span>
            </div>
            <div class="description">
                趣吃专送 /${restaurant.arriveTime}分钟送达
            </div>
            <div class="support">
                <span class="icon decrease"></span>
                <span class="text">${restaurant.fullReduce}</span>
            </div>
        </div>
    </div>
<div class="name3">
            <table>
                <tr>
                    <td>起送价</td>
                    <td>配送费</td>
                    <td>平均送达速度</td>
                </tr>
                <tr>
                    <td style="font-size: 20px;">${restaurant.sendFare}元</td>
                    <td style="font-size: 20px;">${restaurant.sendFareMore}</td>
                    <td style="font-size: 20px;">${restaurant.arriveTime}分钟</td>

                </tr>
            </table>
    </div>
    <div class="background">
        <img width="100%" height="100%" src=${restaurant.shopImg }>
    </div>
    <div class="detail fade-transition" style="display: none;">
        <div class="detail-wrapper clearfix">
            <div class="detail-main">
                <h1 class="name">${restaurant.shopName }</h1>
                <div class="star-wrapper">
                    <div class="star star-48">
                        <span class="star-item on"></span><span class="star-item on"></span><span class="star-item on"></span><span class="star-item on"></span><span class="star-item off"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail-close">
            <i class="icon-close"></i>
        </div>
    </div>
</div>
     <div class="kong">
     </div>   
    <div class="top" id="top1">
        
        <table>
            <tr>
       <c:forEach items="${dishtypelist}" var="dishtype">
                    <td> <a href="#${dishtype }">${dishtype.dishesName}</a></td>
        </c:forEach>
            </tr>    
        </table>
    </div>
   <div class="gonggao">
       <div class="title">
            <p><b>&nbsp;&nbsp;商家公告</b></p>
        </div>
        <div class="nei" >
            <p>${restaurant.shopIntroduce }</p>
        </div>
    </div>
 <!--菜品菜二重循环 -->
     <c:forEach items="${dishtypelist}" var="dishtype">
                   <a name=${dishtype}></a> 
                 <div class="bottom1">
                 <br>  
        		  <p><b> ${dishtype.dishesName}</b></p> 
               <c:forEach items="${dishtype.setfastfood}" var="fastfoodone">  
                 <div class="b1">         
                <a href="#"><img src="${ctx }/${fastfoodone.fastfoodImg }" width="100px" height="100px"></a>
                <b ><span class="t1">${fastfoodone.fastfoodName }</span></b>
                <span class="t2">${fastfoodone.introduce }</span>
                <span class="t3"><b>￥${fastfoodone.fastfoodPrice }</b> <c:if test="${uname!=null}"><a href="###" class="button button-primary button-pill button-small"  onclick="add('${fastfoodone.fastfoodId }','${restaurant.shopId}');">加入购物车</a></c:if>
                </span>
                </div>   
    		    </c:forEach>     	
        </div>
        </c:forEach>
       
        <footer style="margin-top:40px;">
            <div>
                 <ul class="footer-top">
           <li><a href="index.jsp" name="index">${lists.get(0).name } <span></span></a></li>
                <li><a href="privateorder" name="productlist">${lists.get(1).name } <span></span></a></li>
                <li><a href="article" name="article">${lists.get(2).name } <span></span></a></li>
                <li><a href="shop_index.html" name="contact">${lists.get(3).name } <span></span></a></li>
                <li><a href="map.jsp" name="about">${lists.get(4).name } <span></span></a></li>
                <li><a href="communities?pageNum=1" name="about">${lists.get(5).name } <span></span></a></li>
        </ul>
            </div>
            <div>
                <ul class="footer-body">
                    <li>
                        <span>电话:</span><span>8888-66666666</span>
                    </li>
                    <li>
                        <span>邮箱:</span><span>quchi@chaoyuezu.com</span>
                    </li>
                    <li>
                        <span>地址:</span><span>河北省石家庄市河北师范大学</span>
                    </li>
                </ul>
                <P>designed and developed with by Daye Aladdin Technology Co., Ltd.</P>
        
            </div>
            <div>
        
        </div>
         <div>
        <c:if test="${uname!=null}"><a href="ordercontent"><input type="button"  value="0" class="num1" id="shopCart" style="background-image: url(images/che5.jpg);" /></a></c:if>
        </div>
        </footer> 

        
</div>
</body>


</html>
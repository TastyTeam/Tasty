<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
    <title>测试网页</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">	

    <meta charset="utf-8">
        <title>测试网页</title>
    <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

    /* 此内容可以导入外部文件 */
    body{background-color: #f7f7f7}

*{padding-bottom: 0;margin: 0;}
.menu{float: left;}
.header-nav{background-color: black}

#sub_menu_1,#sub_menu_2{ 
    display: none; 
} 
.dropdown-menu{
    text-align: center !important;
}    
.main{
    width: 1000px;
    margin: 100px auto;
    float:left;
    
    }
.main-left{
    width: 160px;height:500px;float:left;margin-left: 50px;
}
.main-left a:hover{text-decoration: none;}
.main-left a{text-decoration: none;color: #333;}
.main-left tr td h4{color: black;font-family: "微软雅黑";font-weight: bold;}   
    
body, html {
			width: 100%;
			height: auto;
			margin:0;
			font-family:"微软雅黑";
			padding: 0px;
			
		}
		#allmap{
			width:75%;
			height:370px;
			margin: 0px;
			padding: 0px;
        }
	

		a{font-size:16px}
		a:link{color:#ccc;text-decoration:none;}
		a:active{color: #cccccc;}
		a:visited{color:#ccc;text-decoration:none;} 
		a:hover{color:#ccc;text-decoration:none;}
        .anchorBL{display:none;}

		.buttons_td{
			width:250px;
			text-align: center;
			height: 100px;
		}
		.buttons_zhong{
			width:250px;
			text-align: center;
		}
		.buttons_z{
			width:250px;
			
			text-align: center;
		}
		.buttons_tip{
			font-size: 10px;
		}
		.buttons_name{
			font-size:15px;
			font-weight: bold;
			color:#000;
		}
		.buttons_tr{
			padding: 0px;
			height:100px;
			text-align: center;
		}
		.shangjia{
			text-align: center;
			height: 30px;
		}
		.main{
			margin-left:130px; 
			width:1200px;
		}
		.buttons_color{
			color:#f00;
		}
	.biaodan{
		margin-bottom: 10px;
	}
    .buttons_ti{
        color: #000;
        font-size:14px;
    }
    .fu{
        color: #f00;
    }

</style>



<!-- 以下是百度地图，高德地图程序css样式不可以导入css外部文件只可以在本页面 -->
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=ccfbeecb0e648272b17e44a0d79d7b30"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=glgOvIPAfyRns49oGf4KZi4whZ4xGV2Y"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/GeoUtils/1.2/src/GeoUtils_min.js"></script>
<script type="text/javascript">
    window.onload=function(){
        
        //高德地图定位
        var gaode = new AMap.Map('container');
        AMap.plugin('AMap.Geolocation', function() {
            var geolocation = new AMap.Geolocation({
                enableHighAccuracy: true,//是否使用高精度定位，默认:true
                timeout: 10000,          //超过10秒后停止定位，默认：5s
            });
            geolocation.getCurrentPosition(function(status,result){
                    onComplete(result);
            });
        });
        
        //解析定位结果
        var arr=[];
        function onComplete(data) {
            // alert(data.position)
            var jingdu,weidu;
            var str = data.position+"";//定义一个字符串
            arr = str.split(",");
            jingdu=arr[0];
            weidu=arr[1];
            // alert(typeof(jingdu));       
            jingdu=parseFloat(arr[0]);
            weidu=parseFloat(arr[1]);
            // alert(jingdu+","+weidu);


            // 百度地图API功能	
            map = new BMap.Map("allmap", {
                    enableMapClick : false
                }); 
            //创建中心点坐标
            var zhong = new BMap.Point(114.5221,37.99454);
            map.centerAndZoom(zhong, 14);
            //创建圆
            var circle = new BMap.Circle(zhong,1500,{strokeColor:"white", strokeWeight:2, strokeOpacity:0.5}); 
            map.addOverlay(circle);
            //外卖信息
            var data_info = [
                    [114.525788,38.009336,"<p style='text-align:center;font-size:20px;'>"+"河北师范大学" +"</p>" +"<p style='text-align:center;font-size:10px;color:#aaa;'>石家庄市裕华区雨巷街道河北师范大学</p>"+"<p width='30px' height='30px'><a href='#' style='color:#ff4500;font-size:18px;'>查看商家</a></p>"],
                    [114.530619,37.985709,"<p style='text-align:center;font-size:20px;'>"+"河北师范大学" +"</p>" +"<p style='text-align:center;font-size:10px;color:#aaa;'>石家庄市裕华区雨巷街道河北师范大学</p>"+"<p width='30px' height='30px'><a href='#' style='color:#ff4500;font-size:18px;'>查看商家</a></p>"],
                    [114.533442,38.01073,"<p style='text-align:center;font-size:20px;'>"+"河北师范大学" +"</p>" +"<p style='text-align:center;font-size:10px;color:#aaa;'>石家庄市裕华区雨巷街道河北师范大学</p>"+"<p width='30px' height='30px'><a href='#' style='color:#ff4500;font-size:18px;'>查看商家</a></p>"],
                    [114.555702,37.990754,"<p style='text-align:center;font-size:20px;'>"+"河北师范大学" +"</p>" +"<p style='text-align:center;font-size:10px;color:#aaa;'>石家庄市裕华区雨巷街道河北师范大学</p>"+"<p width='30px' height='30px'><a href='#' style='color:#ff4500;font-size:18px;'>查看商家</a></p>"]
                ];
            //弹出窗口信息
            var opts = {
                        width : 250,     // 信息窗口宽度
                        height: 80,     // 信息窗口高度
                        title : "dsfds" , // 信息窗口标题
                        // enableMessage:true//设置允许信息窗发送短息
                    };
            
            for(var i=0;i<data_info.length;i++){
                var waimai=new BMap.Point(data_info[i][0],data_info[i][1]);

                if(BMapLib.GeoUtils.isPointInCircle(waimai,circle)){	
                    var marker = new BMap.Marker(waimai);  // 创建标注
                    var content = data_info[i][2];
                    map.addOverlay(marker);               // 将标注添加到地图中
                    addClickHandler(content,marker);

                    //添加鼠标放上时打开自定义信息窗口事件
                    marker.addEventListener("mouseover",function () {
                            this.openInfoWindow(new BMap.InfoWindow(content,opts));
                        }
                    );
                    //添加单击事件
                    function addClickHandler(content,marker){
                        marker.addEventListener("click",function(e){
                            openInfo(content,e)}
                        );
                    }
                    function openInfo(content,e){
                        var p = e.target;
                        var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
                        
                        var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
                        map.openInfoWindow(infoWindow,point); //开启信息窗口
                    }
                }
            }
            map.enableScrollWheelZoom(true);//开启鼠标滚轮缩放
            var opts = {type: BMAP_NAVIGATION_CONTROL_PAN}    
            map.addControl(new BMap.NavigationControl(opts));

        }  


    }
     function dianji(){
         map.panTo(new BMap.Point(116.409, 39.918));  
    }
</script>
 
</head>

<body style="height: 100%;">
 <div class="menu">
                <header>
                    <div class="header-nav">
                        <div role="navigation">
                            <a href="#" rel="home" class="hd-logo" title="美食餐厅"><img src="images/logo2.png"></a>
                            <ul class="hd-nav">
                                <li class="search-box-li">
                                    <div><input type="text" name="search-keyword" placeholder="输入关键词" form="search-keyword"><i
                                            class="iconfont search-submit">&#xe617;</i></div>
                                    <i class="search-exit"></i></li>
                                <li><a href="index.html" name="index">网站首页<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="privateorder.html" name="productlist">私人订制<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="article.html" name="article">美食资讯<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="shop_index.html" name="contact">果蔬商城<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="map.html" name="about">趣吃导航<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                <li><a href="communities.html" name="about">美食分享<span><i class="iconfont ">&#xe6aa;</i></span></a></li>
                            </ul>
                
                            <div class="sec_menu">
                            <ul>
                                <li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
                                <li><a>欢迎，</a></li>&nbsp;
                                <li><a>用户名</a></li>&nbsp;
                                <li onclick = "f('sub_menu_1')">
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-inverse dropdown-toggle btn-xs" data-toggle="dropdown" >
                                        <span class="caret"></span>
                                    </button>
                                   
                                    <ul class="dropdown-menu" role="menu" id="sub_menu_1">
                            			<li class="sma-menu"><a href="self.html"><img src="images/menu11.png">个人中心</a></li><br>
                            			<li><a href="comment.html"><img src="images/menu22.png">&nbsp;我的评论</a></li><br>
                            			<li><a href="order.html"><img src="images/menu33.png">&nbsp;我的订单</a></li><br>
                            			<li><a href="#"><img src="images/menu44.png">&nbsp;退出登录</a></li>
                    				</ul>
                                 
                                    </div>
                                </li>
                            </ul>
                            </div>
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
               </div>
                <script src="lib/jquery/jquery.js"></script>
<script src="lib/bootstrap/bootstrap.js"></script>
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
<!--主体-->
<div class="main" >
    <form action="#" class="biaodan" >
            <input type="text" id="address" class="form-control" placeholder="请输入地址" style="width:500px;height:45px;display:inline-block;">
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="搜索" style="width:80px;display:inline-block;">
    </form>
	<div  style="width:250px; float: left;height:450px;max-height: 450px !important">
    <div class="shangjia">附近有<span class="fu">10</span>个商家</div>
    <div class="row pre-scrollable" >

            <table class="table table-hover">
                    <tr class="buttons_tr"><td class="buttons_td"><a href="single.html" onclick="dianji()">
                        <img src="images/map.png">
                        <span class="buttons_name">名d称aaaaaaaaaa</span><br/>
                        <span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td>
                    </tr>

                        <tr class="buttons_tr">
                            <td class="buttons_td"><a href="single.html">
                         <img src="images/map.png">
                          <span class="buttons_name">名d称aaaaaaaaaa</span><br/>
                        <span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td>
                    </tr>

                        <tr class="buttons_tr"><td class="buttons_td"><a href="single.html">
                        <img src="images/map.png">
                        <span class="buttons_name">名d称aaaaaaaaaa</span><br/>
                        <span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td></tr>
                        <tr class="buttons_tr"><td class="buttons_td"><a href="#">
                        <img src="images/map.png">
                        <span class="buttons_name">aaaaaaa</span><br/><span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td></tr>
                        <tr class="buttons_tr"><td class="buttons_td"><a href="#">
                        <img src="images/map.png">
                        <span class="buttons_name">名d称aaaaaaaaaa</span><br/><span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td></tr>
                        <tr class="buttons_tr"><td class="buttons_td"><a href="#">
                        <img src="images/map.png">
                        <span class="buttons_name">名d称aaaaaaaaaa</span><br/><span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td></tr>
                        <tr class="buttons_tr"><td class="buttons_td"><a href="#">
                        <img src="images/map.png">
                        <span class="buttons_name">名d称aaaaaaaaaa</span><br/><span class="buttons_tip">起送价:<span class="buttons_color">10￥</span></span>

                        <br/><sapn class="buttons_ti">>距离<span class="fu">479</span>米</sapn></a></td></tr>
                    </table>
                    
    			</div>
			</div>
		<!-- 这个是百度地图 -->
		<div id="allmap"></div>
		</div>



</body>
    
</html>
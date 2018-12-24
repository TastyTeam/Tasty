<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>支付成功</title>
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
      
        
        <style>
            body{background-color: #f7f7f7;}
            .menu{height: 100px;width: 100%;background: #333333;color:white;}
            header{padding-top: 20px;padding-left: 60px;}
            .menu-td-1{width: 230px;}
            .menu-td-1:after{content: "|";display: inline-block;}
            .menu-td-2{width: 500px;font-size: 24px;}
            .menu-td-3{width: 200px;}
            .main{width: 85%;height: 500px;background-color: white;margin-top: 30px;margin-left:auto;margin-right: auto;
                text-align:center;padding-top: 90px;}
            .main1{text-align: center;font-family: "黑体";font-size: 34px;}
            .main2{padding-top: 10px;color: #333333;}
            .main2 a:hover{text-decoration: none;}
            footer{margin-bottom: 0px;float: left;width: 100%;margin-top: 100px;}
        </style> 
    </head>

    <body>
        <div class="menu">
            <header>
                <table class="menutable">
                    <tr>
                        <td class="menu-td-1"><img src="images/logo2.png"></td>
                        <td class="menu-td-2">订单信息</td>
                        <td class="menu-td-3"><img src="images/checksuccess.png"></td>
                    </tr>
                </table> 
            </header>
        </div>
        
        <div class="main">
            <img src="images/success.png">
            <div class="main1">
                支付成功!
            </div>
            <div class="main2">
                <a href="myorder"> 去我的订单查看详情</a>
            </div>
        </div>
    
       
       
        <footer>
            <div>
                <ul class="footer-top">
                    <li><a href="index.html">网站首页</a></li>
                    <li><a href="about.html">关于我们</a></li>
                    <li><a href="productlist.html">菜式欣赏</a></li>
                    <li><a href="article.html">美食资讯</a></li>
                    <li><a href="contact.html">在线预订</a></li>
                </ul>
            </div>
            <div>
                <ul class="footer-body">
                    <li>
                        <span>电话:</span><span>0714-8868331</span>
                    </li>
                    <li>
                        <span>邮箱:</span><span>123@dayeyunalading.com</span>
                    </li>
                    <li>
                        <span>地址:</span><span>湖北省大冶市大冶大道金穗小区好太太办公室</span>
                    </li>
                </ul>
                <P>designed and developed with by Daye Aladdin Technology Co., Ltd.</P>
              
            </div>
        </footer>
     
        <script>
      
                window.onclick=function (){
                    var strtonu = document.getElementById("id1").value;
                    
                if(strtonu==0){
                dish1.style.display="none";
                }
                }
              
    </script>
    </body>    
</html>
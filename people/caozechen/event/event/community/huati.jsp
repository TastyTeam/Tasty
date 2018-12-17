<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布新话题 - 美食天下</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="css/c3.css">
<link rel="stylesheet" type="text/css" href="css/c1.css">
<link rel="stylesheet" type="text/css" href="css/c2.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
<script src="js/jquery-3.2.1.min.js"></script>
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
.i{
    float: left;
    margin-left: 10px;
}




/*.img-cont{
        width:1000px;
        height:100px;
        border:2px solid #317ef3;
        margin:50px auto;
      }*/
 
 
      .img-cont>div{
        /* width:300px;
        height:260px; */
        width:100px;
        height:100px;
        /*border:1px solid #777;*/
        float:left;
        margin:20px 0 0 20px;
      }
 
 
    /*.img-cont>div>div{
        width:300px;
        height:220px;
        border:1px solid red;
      }*/
 
 
      .img-cont>div>a{
        width:60px;
        height:30px;
        border-radius:4px;
        line-height: 30px;
        text-align: center;
        color:#fff;
        display: block;
        background: #317ef3;
        margin:5px 0 0 0px;
        cursor: pointer;
      }
 
 
      .hide{
        display: none !important;
      }

</style>
</head>
<body>
<header>
  <jsp:include page="head.jsp" />
</header>


<!-- 主框架 -->

<div class="w_main clear">

<div class="mod_right">

<div class="mod_location clear" style="position: relative;top:50px;width: 800px;text-align: center;" >
<div class="left">
        
<!-- <a href="###" title="回到我的话题" class="return"> </a> -->

发布新话题
</div>
</div>

<form action="FileUploadServlet" id="J_form" enctype="multipart/form-data" method="post" style="position: absolute;left: 260px;">
<div class="mr_edit mr_edit_center clear">
<ul>
<li class="low_tip">您的浏览器版本太低，无法使用新版发布话题，请升级。 <a href="#" target="_blank">点击进入老版编辑页</a></li>
<li>
<label class="must">上传图片（最多9张）</label><br>
<div class="J_upload">上传图片
<input multiple class="J_img" id="J_m_cover" accept="image/png,image/gif,image/jpeg"  type="file" name="filename" onchange='PreviewImage(this)' >

</div>
<div class="img-cont">

</div>
<!-- img src="" id="show" width="100"> -->

<script type="text/javascript">

//var id ="1";
var id =0;
function PreviewImage(imgFile) {

    var pattern =/(\.*.jpg$)|(\.*.png$)/;
    if (!pattern.test(imgFile.value)) {

        alert("系統夂支持jpg/jpeg/png/gif/bmp格式的照片! "); 
        imgFile.focus();
    } else {
    	
    	
    	
        //定义图片路径
        var path;
        //添加显示图片的HTML元素;
        id+=1;            
        //$(".img-cont").append("<div><div id='" + id + "'><img src=''/></div></div>");//判断浏览器类型
			$(".img-cont").append("<div id='" + id + "'><img src=''/></div>");
        if (document.all) {
           
            imgFile.select();
            path = document.selection.createRange().text; 
            document.getElementById(id).innerHTML= "";
                        
            }
            else{
           	
           	path = URL.createObjectURL(imgFile.files[0]);

            document.getElementById(id).innerHTML = "<img src='"+path+ "' width='100' height=' 100'/>";
        }
        
        //alert(id);
    }
}















			//$(function() {
 
				//$("#J_m_cover").change(function() {
					//var readFile = new FileReader();
					//var mfile = $("#J_m_cover")[0].files[0];  //注意这里必须时$("#myfile")[0]，document.getElementById('file')等价与$("#myfile")[0]
					//readFile.readAsDataURL(mfile);
					//readFile.onload = function() {
						//var img = $("#show");
						//img.attr("src", this.result);
					//}
 
				//});
 
			//})
		</script>
<span class="img_status" id="multi_cover_status"> </span>
<div id="cover" class="clear">
</div>
</li>

<li>
<label>加个标题（非必填）</label><br>
<input id="com_title" name="title" class="inputM" type="text" style="width:400px;">
</li>



<li>
<label class="must">写话题</label><br>
<textarea id="J_message" name="message" style="height:300px;width:800px;"></textarea>
<input class="btn1" name="submit" type="submit" value="发布话题" >
</li>
</ul>

</div>






</form>




</div>


</div>

<!--  
<footer style="position: relative;top:700px;">
    <div>
        <ul class="footer-top">
            <li><a href="index.html">网站首页</a></li>
            <li><a href="privateorder.html">私人订制</a></li>
            <li><a href="article.html">美食资讯</a></li>
            <li><a href="shop_index.html">果蔬商城</a></li>
            <li><a href="map.html">趣吃导航</a></li>
            <li><a href="communities.html">美食分享</a></li>
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
 
</footer>

-->


</body>
</html>


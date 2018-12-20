<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>评论插件</title>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
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
<link rel="stylesheet" href="default.css">
<script type="text/javascript">
/* $.ajax({
	url : "communities?communitiesid=" + id+"&content="+content,
	async : re,
	type : "POST",
	
}); */
function addcommunities(id,count){
	location.href = "cold?communitiesid=" + id+"&content="+document.getElementById("content").value;
}
</script>
<style>
	.container{
		width: 1000px;
	}
	.commentbox{
		width: 900px;
		margin: 20px auto;
	}
	.mytextarea {
	    width: 100%;
	    overflow: auto;
	    word-break: break-all;
	    height: 100px;
	    color: #000;
	    font-size: 1em;
	    resize: none;
	    margin-top: 100px;
	}
	.comment-list{
		width: 900px;
		margin: 20px auto;
		clear: both;
		padding-top: 20px;
	}
	.comment-list .comment-info{
		position: relative;
		margin-bottom: 20px;
		margin-bottom: 20px;
		border-bottom: 1px solid #ccc;
	}
	.comment-list .comment-info header{
		width: 10%;
		position: absolute;
	}
	.comment-list .comment-info header img{
		width: 100%;
		border-radius: 50%;
		padding: 5px;
	}
	.comment-list .comment-info .comment-right{
		padding:5px 0px 5px 11%; 
	}
	.comment-list .comment-info .comment-right h3{
		margin: 5px 0px;
	}
	.comment-list .comment-info .comment-right .comment-content-header{
		height: 25px;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
		padding-right: 2em;
		color: #aaa;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
		cursor: pointer;
	}
	.comment-list .comment-info .comment-right .reply-list {
		border-left: 3px solid #ccc;
		padding-left: 7px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply{
		border-bottom: 1px dashed #ccc;
	}
	.comment-list .comment-info .comment-right .reply-list .reply div span{
		padding-left: 10px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply p span{
		padding-right: 2em;
		color: #aaa;
	}
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
<script src="js/jquery.js"></script>
<script src="js/upload.js"></script>
<body>
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
<div class="container">
	<div class="commentbox">
		<textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content" name="content"></textarea>
		<div id="drop_area"></div>
		<div class="btn btn-info pull-right" id="comment" onclick="addcommunities(4,${content});" >评论</div>
	</div>
	<div class="comment-list">
	<!-- 
		<div class="comment-info">
			<header><img src="./images/img.jpg"></header>
			<div class="comment-right">
				<h3>匿名</h3>
				<div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i> 2017-10-17 11:42:53</span><span><i class="glyphicon glyphicon-map-marker"></i>深圳</span></div>
				<p class="content">mongodb 副本集配置副本集概念：就我的理解就是和主从复制 差不多，就是在主从复制的基础上多加了一个选举的机制。
				复制集 特点：数据一致性 主是唯一的，没有Mysql 那样的双主结构大多数原则，集群存活节点小于二分之一是集群不可写，
				只可读从库无法写入数据自动容灾通过下面的一个图来简单的了解下
				 配置过程：一、安装mongodb安装过程略，不懂得可以看前面的教程二、创建存储目录与配置文件创...</p>
				<div class="comment-content-footer">
					<div class="row">
						<div class="col-md-10">
							<span><i class="glyphicon glyphicon-pushpin"></i> 来自:win10 </span><span><i class="glyphicon glyphicon-globe"></i> chrome 55.0.2883.87</span>
						</div>
						<div class="col-md-2"><span class="reply-btn">回复</span></div>
					</div>
				</div>
				<div class="reply-list"></div>
			</div>
		</div>
		
		<div class="comment-info">
			<header><img src="./images/img.jpg"></header>
			<div class="comment-right">
				<h3>匿名</h3>
				<div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i> 2017-10-17 11:42:53</span><span><i class="glyphicon glyphicon-map-marker"></i>深圳</span></div>
				<p class="content">mongodb 副本集配置副本集概念：就我的理解就是和主从复制 差不多，就是在主从复制的基础上多加了一个选举的机制。
				复制集 特点：数据一致性 主是唯一的，没有Mysql 那样的双主结构大多数原则，集群存活节点小于二分之一是集群不可写，
				只可读从库无法写入数据自动容灾通过下面的一个图来简单的了解下
				 配置过程：一、安装mongodb安装过程略，不懂得可以看前面的教程二、创建存储目录与配置文件创...</p>
				<div class="comment-content-footer">
					<div class="row">
						<div class="col-md-10">
							<span><i class="glyphicon glyphicon-pushpin"></i> 来自:win10 </span><span><i class="glyphicon glyphicon-globe"></i> chrome 55.0.2883.87</span>
						</div>
						<div class="col-md-2"><span class="reply-btn">回复</span></div>
					</div>
				</div>
				<div class="reply-list">
					<div class="reply">
						<div><a href="javascript:void(0)">匿名</a>:<a href="javascript:void(0)">@匿名</a><span>这写的是什么鬼东西。。。。</span></div>
						<p><span>2017-10-17 11:42:53</span> <span class="reply-list-btn">回复</span></p>
					</div>
					<div class="reply">
						<div><a href="javascript:void(0)">匿名</a>:<a href="javascript:void(0)">@匿名</a><span>这写的是什么鬼东西。。。。</span></div>
						<p><span>2017-10-17 11:42:53</span> <span class="reply-list-btn">回复</span></p>
					</div>
					<div class="reply">
						<div><a href="javascript:void(0)">匿名</a>:<a href="javascript:void(0)">@匿名</a><span>这写的是什么鬼东西。。。。</span></div>
						<p><span>2017-10-17 11:42:53</span> <span class="reply-list-btn">回复</span></p>
					</div>
				</div>
			</div>
		</div>
	 -->
		
		
	</div>
</div>


<script type="text/javascript">
var dragImgUpload = new DragImgUpload("#drop_area",{
	callback:function (files) {
		//回调函数，可以传递给后台等等
		var file = files[0];
		console.log(file.name);
	}
})
</script>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.comment.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	//初始化数据
	var arr = [
		{id:1,img:"./images/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[]},
		{id:2,img:"./images/img.jpg",replyName:"匿名",beReplyName:"",content:"到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[{id:3,img:"",replyName:"帅大叔",beReplyName:"匿名",content:"来啊，我们一起吃鸡",time:"2017-10-17 11:42:53",address:"",osname:"",browse:"谷歌"}]},
		{id:3,img:"./images/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"win10",browse:"谷歌",replyBody:[]}
	];
	$(function(){
		$(".comment-list").addCommentList({data:arr,add:""});
		$("#comment").click(function(){
			var obj = new Object();
			obj.img="./images/img.jpg";
			obj.replyName="Doing";
			obj.content=$("#content").val();
			/* obj.images=$("#drop_area").find("img").clone(); */
			var i=document.getElementById('drop_area').getAttribute("src");
			alert(i);
			obj.images=i;
			obj.browse="深圳";
			obj.osname="win10";
			obj.replyBody="";
			$(".comment-list").addCommentList({data:[],add:obj});
		});
	})
</script>
    <!--footer-->
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>



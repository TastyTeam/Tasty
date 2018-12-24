var data = [
    { name: "小趣" },
];
var html = "";

for (var i = 0; i < data.length; i++) {
	console.log(data[i].name);
    html += "<li>" + "<i class='iconfont'>&#xe752;</i>" + "<p>" + data[i].name + "</p>" + "</li>";
}
$(".chatbar-contacts-uls").html(html);
//点击按钮下拉
$(".icon").on('click', function() {
    if ($(".chatbar").is(":visible")) {
        $(".chatbar").slideUp();
        $(".icon-box").removeClass('shadow');
    } else {
        $(".chatbar").slideDown();
        $(".icon-box").addClass('shadow');
    }
});

$(".chatbar-contacts-uls li").click(function() {
    var text = $(this).find('p').text();
    $(".chatbar-messages").css({
        "transform": "translate3d(0, 0, 0)"
    });
    $('.messages-title h4').text(text);
});

$(".return-icon").click(function() {
    $(".chatbar-messages").css({
        "transform": "translate3d(100%, 0, 0)"
    });
});

//发送消息
$(".message-btn").on('click', function() {
    var message = $('.messages-content').val();
    var timer = time();
    var messages_text = $(".messages-text");

    if (message != "undefined" && message != '') {
    var str1 = "<ul class='messages-text-uls'><li class='messages-text-lis'>" 
        + "<h4><i></i><span>" + "me" + "</span><span class='time'>"
        + timer + "</span></h4>" + "<p>" + message + "</p>"
        + "</ul></li>";
    } else {
        var messageTooltip = "<div class='message-tooltip'>不能发送空白信息</div>";
        $("body").append(messageTooltip);
        setTimeout(function() {
            $(".message-tooltip").hide();
        }, 2000);
    }
    
	messages_text.append(str1);
	document.getElementById('messages-your').value='';
	 //滚动条置底
	var objDiv = document.getElementById("messages-text");
    objDiv.scrollTop = objDiv.scrollHeight;
    //get方式
    var url="/Quchi2/robot";
	$.get(url,{"username":message},function(d){ 
	    if (message != "undefined" && message != '') {
	        var str2 = "<ul class='messages-text-uls'><li class='messages-text-lis'>" 
	                + "<h4><i></i><span>" + "小趣" + "</span><span class='time'>"
	                + timer + "</span></h4>" + "<p>" + d + "</p>"
	                + "</ul></li>";
	        messages_text.append(str2);
	    } else {
	        var messageTooltip = "<div class='message-tooltip'>不能发送空白信息</div>";
	        $("body").append(messageTooltip);
	        setTimeout(function() {
	            $(".message-tooltip").hide();
	        }, 2000);
	    }
	    //滚动条置底
	    objDiv.scrollTop = objDiv.scrollHeight;
	});
	
});



$("body").keydown(function() {
	if (event.keyCode == "13") {//keyCode=13是回车键
		var message = $('.messages-content').val();
	    var timer = time();
	    var messages_text = $(".messages-text");

	    if (message != "undefined" && message != '') {
	    var str1 = "<ul class='messages-text-uls'><li class='messages-text-lis'>" 
	        + "<h4><i></i><span>" + "me" + "</span><span class='time'>"
	        + timer + "</span></h4>" + "<p>" + message + "</p>"
	        + "</ul></li>";
	    } else {
	        var messageTooltip = "<div class='message-tooltip'>不能发送空白信息</div>";
	        $("body").append(messageTooltip);
	        setTimeout(function() {
	            $(".message-tooltip").hide();
	        }, 2000);
	    }
	    
		messages_text.append(str1);
		document.getElementById('messages-your').value='';
		 //滚动条置底
		var objDiv = document.getElementById("messages-text");
	    objDiv.scrollTop = objDiv.scrollHeight;
	    //get方式
	    var url="/Quchi2/robot";
		$.get(url,{"username":message},function(d){ 
		    if (message != "undefined" && message != '') {
		        var str2 = "<ul class='messages-text-uls'><li class='messages-text-lis'>" 
		                + "<h4><i></i><span>" + "小趣" + "</span><span class='time'>"
		                + timer + "</span></h4>" + "<p>" + d + "</p>"
		                + "</ul></li>";
		        messages_text.append(str2);
		    } else {
		        var messageTooltip = "<div class='message-tooltip'>不能发送空白信息</div>";
		        $("body").append(messageTooltip);
		        setTimeout(function() {
		            $(".message-tooltip").hide();
		        }, 2000);
		    }
		    //滚动条置底
		    objDiv.scrollTop = objDiv.scrollHeight;
		});
		
    }
});

//时间封装
function time(type) {
    type = type || 'hh:mm'
    var timer = new Date();
    var year = timer.getFullYear();
    var month = timer.getMonth() + 1;
    var date = timer.getDate();
    var hour = timer.getHours();
    var min = timer.getMinutes();
    if (type == 'hh:mm') {
        hour = hour < 10 ? ('0' + hour) : hour;
        min = min < 10 ? ('0' + min) : min;
    }
    var time = year + "/" + month + "/" + date + "  " + hour + ":" + min;
    return time;
}

//搜索功能
$('.search-text').on('keyup', function() {
    var txt = $('.search-text').val();
    txt = txt.replace(/\s/g, '');
    $('.chatbar-contacts-uls li').each(function() {
        if (!$(this).is(':contains(' + txt + ')')) {
            $(this).hide();
        } else {
            $(this).show();
        }
    });
    return false;
});

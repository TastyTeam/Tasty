window.onload=function(){
      var yanzheng=document.getElementById("yanzheng");
      yanzheng.innerText="获取验证码";
      var timer=null;
      var time=10;
      document.getElementById('yanzheng').onclick=function(){
    	  //alert("确定获取验证码？");
    	  var phone=$("#iphone").val();
    	/*	var yzm=$("yzm").val();*/
    			$.ajax({
    				url : "yanzheng?phone="+phone,
    				async : false,
    				type : "POST",
    				success : function(res) {
    					if (res == "ok") {
    						req = true;
    					} else {    			
    						req = false;
    					}
    				}
    			});
    		
    		
    	
    	  
          clearInterval(timer);       
          var that=this;    
          if(time==0){
            time=10;
          }
          timer=setInterval(function(){
              if(time<=0){
                  that.innerText="";
                  that.innerText="重新发送";
                  that.disabled=false;
              }else {
                  that.disabled=true;
                  that.innerText="";
                  if(time>9){
                  that.innerText="剩余"+(time)+"秒";
                  }else{
                    that.innerText="剩余"+(time)+"秒";
                  }
                  time--;
               }
          },1000);
      }


      var tip=document.getElementById("tip");
      var myAlert2=document.getElementById("myAlert2");
    //验证手机号
    var iphone=false;
    document.getElementsByTagName('input')[0].onblur=function(){
    var phone = document.getElementById('iphone').value;
      if((/^1[34578]\d{9}$/.test(phone))){ 
        myAlert2.style.display="none";
          iphone=true;
      }else{
          myAlert2.style.display="block";
          tip.innerHTML="手机号格式有误";
          iphone=false;
      }
    
    }
    
    //验证昵称
    var username=false;
    document.getElementsByTagName('input')[1].onblur=function(){
    var name = document.getElementById('username').value;
    console.log(name);
      if(name.length==0){ 
        myAlert2.style.display="block";
          tip.innerHTML="昵称不可以为空";
          username=false;
      }else{
        myAlert2.style.display="none";
          username=true;
      } 
    }
    
   //验证密码
  var pwd=false;
  document.getElementsByTagName('input')[2].onblur=function(){
    var pwd1 = document.getElementById('pwd').value;
    var pwd2 = document.getElementById('pwd2').value;
    if(pwd1.length==0){ 
      myAlert2.style.display="block";
        tip.innerHTML="密码不可以为空";
        pwd=false;
    }else if(pwd1==pwd2){
        myAlert2.style.display="none";
        pwd=true;
    }else if(pwd2.length!=0){
        myAlert2.style.display="block";
        tip.innerHTML="密码不一致";
        pwd=false;
    }
  }

  //验证确认密码

  document.getElementsByTagName('input')[5].onclick=function(){
    var pwd1 = document.getElementById('pwd').value;
    if(pwd1.length==0){
      document.getElementsByTagName('input')[2].focus();//获取焦点
      myAlert2.style.display="block";
      tip.innerHTML="请填写密码";
    }else{
      myAlert2.style.display="none";
    }

  }

  document.getElementsByTagName('input')[5].onblur=function(){     
    var pwd1 = document.getElementById('pwd').value;
    var pwd2 = document.getElementById('pwd2').value;
    if(pwd2.length==0){
      myAlert2.style.display="block";
        tip.innerHTML="确认密码不可以为空";
        pwd=false;
    }else if(pwd1==pwd2){
      myAlert2.style.display="none";
      pwd=true;
    }else{
      myAlert2.style.display="block";
      pwd=false;
      tip.innerHTML="密码不一致";
    }
    
  }
  //验证验证码


  
  document.getElementsByTagName('input')[3].onblur=function(){
    var yzm1 = document.getElementById('yzm').value;
    var yzm2=$("#yanzheng").val();
    if(yzm1.length==0){ 
        myAlert2.style.display="block";
        tip.innerHTML="验证码有误";
        yzm=false;
    }else{
      myAlert2.style.display="none";
        yzm=true;
    } 
    var yzm=false;
  /*  $.ajax({
		url : "yanzhengma?yzm="+yzm,
		async : false,
		type : "POST",
		success : function(res) {
			if (res == "ok") {
				yzm = true;
			} else {    			
				yzm = false;
			}
		}
	});*/
    
  }
    //整体验证
    
    document.getElementsByTagName('input')[4].onclick=function(e){
      if(iphone==false){
        myAlert2.style.display="block";
        tip.innerHTML="手机号格式有误";
        e.preventDefault();
      }else if(username==false){
        myAlert2.style.display="block";
        tip.innerHTML="昵称不可以为空";
        e.preventDefault();
      }else if(pwd==false){
        myAlert2.style.display="block";
        tip.innerHTML="密码有误";
        e.preventDefault();
      }else if(yzm==false){
        myAlert2.style.display="block";
        tip.innerHTML="验证码有误";
        e.preventDefault();
      }else{
        // alert("验证通过");
      }
    }
  }
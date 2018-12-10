window.onload=function(){
    // 改变手机号
    var iphone=document.getElementById("youriphone");
    iphone.innerHTML= change(iphone.innerHTML);

    //获取验证码
    document.getElementById("yanzheng").onclick = "return false;";
    var yanzheng=document.getElementById("yanzheng");
      yanzheng.innerText="获取验证码";
      var timer=null;
      var time=10;
      yanzheng.onclick=function(){
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
                  that.innerText="已发送"+(time)+"秒";
                  }else{
                    that.innerText="已发送0"+(time)+"秒";
                  }
                  time--;
               }
          },1000);
      }

      //验证验证码
      var yzm=false;
      
      document.getElementsByTagName('input')[0].onblur=function(){
        var yzm1 = document.getElementById('yanzm').value;
        if(yzm1.length==0){ 
            myAlert2.style.display="block";
            tip.innerHTML="验证码有误";
            yzm=false;
        }else{
          myAlert2.style.display="none";
            yzm=true;
        } 
      }
      //整体验证   
      document.getElementsByTagName('button')[2].onclick=function(e){
            if(yzm==false){
              myAlert2.style.display="block";
              tip.innerHTML="验证码有误";
              e.preventDefault();
            }else{
              // alert("验证通过");
            }
      }
    }

   function change(a){
     var haoma=a+"";
     haoma=haoma.substr(9,12);
     var begin=haoma.substr(0,3);
     var last=haoma.substr(7,4);
      return "您绑定的手机号是："+begin+"*****"+last;
    }
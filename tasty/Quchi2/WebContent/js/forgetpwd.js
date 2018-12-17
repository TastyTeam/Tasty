window.onload=function(){
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
    //验证验证码
    var yzm=false;
    
    document.getElementsByTagName('input')[1].onblur=function(){
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
    document.getElementsByTagName('button')[0].onclick=function(e){
          if(iphone==false){
            myAlert2.style.display="block";
            tip.innerHTML="手机号格式有误";
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

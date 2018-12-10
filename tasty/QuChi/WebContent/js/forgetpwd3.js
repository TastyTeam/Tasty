window.onload=function(){
     
    var tip=document.getElementById("tip");
    var myAlert2=document.getElementById("myAlert2");
 
  
  //验证密码
  var pwd=false;
  document.getElementsByTagName('input')[0].onblur=function(){
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
  
  document.getElementsByTagName('input')[1].onclick=function(){
    var pwd1 = document.getElementById('pwd').value;
    if(pwd1.length==0){
      document.getElementsByTagName('input')[0].focus();//获取焦点
      myAlert2.style.display="block";
      tip.innerHTML="请填写密码";
    }else{
      myAlert2.style.display="none";
    }

  }

  document.getElementsByTagName('input')[1].onblur=function(){     
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

  //整体验证
  document.getElementsByTagName('button')[1].onclick=function(e){
    if(pwd==false){
      myAlert2.style.display="block";
      tip.innerHTML="密码有误";
      e.preventDefault();
    }else{
      // alert("验证通过");
    }
  }
}
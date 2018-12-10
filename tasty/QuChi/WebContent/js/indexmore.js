//默认隐藏的
var hide=true;
//显示或者隐藏的函数
function displayOrHide1(){
var cityList=document.getElementById("List");
if(hide){
  //显示
  cityList.style.display="block";
  hide=false;
}else{
  //隐藏
   cityList.style.display="none";
  hide=true;
}
}


var hide=true;
function displayOrHide2(){
var cityList=document.getElementById("xian");
var cityList1=document.getElementById("xian1");
if(hide){
  //显示
  cityList.style.display="block";
cityList1.style.display="block";
  hide=false;
}else{
  //隐藏
   cityList.style.display="none";
cityList1.style.display="none";
  hide=true;
}
}







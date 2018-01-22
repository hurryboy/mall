// JavaScript Document
var interval = 1000; 
function ShowCountDown(year,month,day,divname) 
{ 
var now = new Date(); 
var endDate = new Date(year, month-1, day); 
var leftTime=endDate.getTime()-now.getTime(); 
var leftsecond = parseInt(leftTime/1000); 
//var day1=parseInt(leftsecond/(24*60*60*6)); 
var day1=Math.floor(leftsecond/(60*60*24)); 
var hour=Math.floor((leftsecond-day1*24*60*60)/3600); 
var minute=Math.floor((leftsecond-day1*24*60*60-hour*3600)/60); 
var second=Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60); 

 function change(i){
	 
	 if(i<=10){
		 i='0'+i;
		 
		 }
		 return i;
	 
	 }
var cc = document.getElementById(divname); 
 cc.innerHTML='<div class="cd_item cd_hour"><span class="cd_item_txt">'+change(hour)+'</span></div><div class="cd_split"><i class="cd_split_dot cd_split_top"></i><i class="cd_split_dot cd_split_bottom"></i></div><div class="cd_item cd_minute"><span class="cd_item_txt">'+change(minute)+'</span></div><div class="cd_split"><i class="cd_split_dot cd_split_top"></i><i class="cd_split_dot cd_split_bottom"></i></div><div class="cd_item cd_second"><span class="cd_item_txt">'+change(second)+'</span></div>'
} 
window.setInterval(function(){ShowCountDown(2017,7,20,'divdown1');}, interval); 


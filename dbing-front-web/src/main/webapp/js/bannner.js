$(function(){
	 len=$("#banners li").length;
	 //alert(len);
	 index=0;
	 adtimer;
		 
		 $(".ad_bg #prev").click(function(){
			//alert(index);
			clearInterval(adtimer);
			index--;
			if(index<0){
				index=len-1;
			}
			adimg(index);
		});
		$(".ad_bg #next").click(function(){
			clearInterval(adtimer);
			index++;
			if(index==len){
				index=0;
			}
			adimg(index);
		});
		$(".ad").hover(function(){
				clearInterval(adtimer);
				$(this).find(".zuo").css("display","block");
				$(this).find(".you").css("display","block");
			},function(){
				adtimer=setInterval("move()",5000);
				$(this).find(".zuo").css("display","none");
				$(this).find(".you").css("display","none");
			});
			
			
		$(".round li").hover(function(){
			clearInterval(adtimer);
			index=$(".round li").index(this);
			adimg(index);
		},function(){
			adtimer=setInterval("move()",5000);
		});
		
			
	});


	function move(){
		index++;
		if(index==len){
			index=0;
		}
		adimg(index);
	}
		
	function adimg(index){
		$(".picture li").stop(true,true).fadeOut();
		$(".picture li:eq("+index+")").stop(true,true).fadeIn();
		$(".round li").removeClass("red").eq(index).addClass("red");
		
	}
	adtimer=setInterval("move()",5000);
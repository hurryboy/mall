$(function(){
	
		 totals=$(".J_live_item").length;
		 //alert(totals);
		 i=0;
		
		 
		 $(".J_live_btn_pre").click(function(){
			clearInterval(adtimers);
			i--;
			if(i<0){
				i=totals-1;
			}
			pics(i);
		});
		$(".J_live_btn_next").click(function(){
			clearInterval(adtimers);
			i++;
			if(i==totals){
				i=0;
			}
			pics(i);
		});
		$(".J_live_list").hover(function(){
				clearInterval(adtimers);
				
			},function(){
				adtimers=setInterval("autoplay()",5000);
			});
			
			
		$(".J_live_ind_item").hover(function(){
			clearInterval(adtimers);
			i=$(".J_live_ind_item").i(this);
			pics(i);
		},function(){
			adtimers=setInterval("autoplay()",5000);
		});
			
			
	});

		function autoplay(){
			i++;
			if(i==totals){
				i=0;
			}
			pics(i);
		}
			
		function pics(i){
			$(".J_live_item").stop(true,true).fadeOut();
			$(".J_live_item:eq("+i+")").stop(true,true).fadeIn();
			$(".live_info:eq("+i+")").stop(true,true).fadeIn();
			$(".J_live_ind_item").removeClass("active").eq(i).addClass("active");
			
		
			
		}
		var adtimers=setInterval("autoplay()",5000);
		
		

		
		
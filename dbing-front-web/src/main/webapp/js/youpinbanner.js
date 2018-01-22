$(function(){
	
	 count=$(".J_sup_page").length;
	 indexss=0;

		 $(".J_sup_btn_pre").click(function(){
			clearInterval(autotime);
			indexss--;
			if(indexss<0){
				indexss=count-1;
			}
			autopics(indexss);
		});
		$(".J_sup_btn_next").click(function(){
			clearInterval(autotime);
			indexss++;
			if(indexss==count){
				indexss=0;
			}
			autopics(indexss);
		});
		$(".J_sup_page").hover(function(){
			//alert(11);
				clearInterval(autotime);
				
			},function(){
				//alert(22);
				autotime=setInterval("autoplays()",5000);
			});
			
			
		// $(".J_live_ind_item").hover(function(){
			// clearInterval(autotime);
			// indexss = $(this).index();
			// autopics(indexss);
		// },function(){
			// autotime=setInterval("autoplays()",5000);
		// });
			
			
	});

		function autoplays(){
			indexss++;
			if(indexss==count){
				indexss=0;
			}
			autopics(indexss);
		}
			
		function autopics(indexss){
			$(".J_sup_page").stop(true,true).fadeOut();
			$(".J_sup_page:eq("+indexss+")").stop(true,true).fadeIn();
			//$(".J_sup_ind_item").removeClass("active").eq(indexss).addClass("active");
			$(".J_sup_ind_item").eq(indexss).addClass("active").siblings(".J_sup_ind_item").removeClass("active"); 
			
		}
	var autotime=setInterval("autoplays()",5000);
		
		

		
		
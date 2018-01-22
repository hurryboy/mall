// JavaScript Document




$(function(){
	var len =  $('.cate_menu_item').length;
	$(".cate_menu_item").hover(function(){
		 var i =$(this).index();
		// alert(i);
		$(this).addClass("cate_menu_item_on").siblings(".cate_menu_item").removeClass('cate_menu_item_on');
		/*$(".JS_popCtn").attr("display",'block');*/
		$(".JS_popCtn").css({"z-index":9999,'display':'block'});
		//$("#cate_item1").show();
		$("#cate_item"+[i+1]).show().siblings().hide();
		
		
		}
	
	);
	
	
	$("#tab a").mouseover(function(){
		 var i = $(this).index();
		 //alert(i);
		if(i == 1){
			   $(".J_news_tab_active").css('left','50px');
			
			}else{
			   $(".J_news_tab_active").css('left','-2px');	
				
			}
		$("#tab-content div").eq(i).show().siblings("#tab-content div").hide();
		
		
	});
	
	
	$("#hotstab a").mouseover(function(){
		 var i = $(this).index();
	switch(i){
			case 0:
		 $("#hotstab .top_tab_active").css("left",0);
			break;
			case 1:
		 $("#hotstab .top_tab_active").css("left",'80px');
			break;
			case 2:
		 $("#hotstab .top_tab_active").css("left",'160px');
			break;
			case 3:
		 $("#hotstab .top_tab_active").css("left",'240px');
			break;
			case 4:
		 $("#hotstab .top_tab_active").css("left",'320px');
			break;

			}
			
			
		
		$("#hotstab_contents .top_tab_content_item").eq(i).css("display",'block').siblings("#hotstab_contents .top_tab_content_item").css('display','none');
		
		
		});
	
	
	
	function b(){
	h = $(window).height();
	
	t = $(document).scrollTop();
	if(t > h){
		$('#lift').show();
	}else{
		$('#lift').hide();
	}
	}

	b();
	$('#gotop').click(function(){
		$("body,html").animate({ "scrollTop" : 0 }, 1000);
	})
	
	$('#without').click(function(){
		$("body,html").animate({ "scrollTop" : "8000px" }, 1000);
	})
	
	$('#sports').click(function(){
		$("body,html").animate({ "scrollTop" : "4100px" }, 1000);
	})
	$('#pc').click(function(){
		$("body,html").animate({ "scrollTop" : "3800px" }, 1000);
	})
	
		$('#tv').click(function(){
		$("body,html").animate({ "scrollTop" : "3200px" }, 1000);
	})
	
	$('#clothes').click(function(){
		$("body,html").animate({ "scrollTop" : "2500px" }, 1000);
	})
	
	$('#enjoys').click(function(){
		$("body,html").animate({ "scrollTop" : "1800px" }, 1000);
	})
	
	$('#games').click(function(){
		$("body,html").animate({ "scrollTop" : "6500px" }, 1000);
	})
	
	
	
	$('#read').click(function(){
		$("body,html").animate({ "scrollTop" : "6000px" }, 1000);
	})
	
	$('#love').click(function(){
		$("body,html").animate({ "scrollTop" : "5500px" }, 1000);
	})
	
	$('#eating').click(function(){
		$("body,html").animate({ "scrollTop" : "5000px" }, 1000);
	})


	
	$(window).scroll(function(){
		console.log(t);
	if(t > 100){
		$(".search-fix .search-m .form").css('top','6px');
	}else{
		 $(".search-fix .search-m .form").css('top','135px');
		// $("#search").addClass("search-fix");
		 if($("#J_event").css("display")=="none"){

			 $(".search-fix .search-m .form").css('top','55px');	
		 }
		// else{

			// $(".search-fix .search-m .form").css('top','135px');
		// }
	}
		
	     b();		
	});
	
		
		$(".cate_pop").hover(
		       function(){
				   
				  $(this).show(); 
				   
				   },
		
		       function(){
				   
				   $(this).hide();
				   
				   }
		);
		//头部
		$("#J_event_close").click(function(){
			
			
			$(".search-fix .search-m .form").css('top','25px');
			$("#J_event").hide();
			$("#search").removeClass("search-fix");
			
		});

	
	});
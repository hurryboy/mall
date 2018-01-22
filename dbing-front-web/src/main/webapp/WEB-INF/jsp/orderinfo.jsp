<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单结算页-尚商商城</title>
<!--结算页面样式-->
<link rel="stylesheet" href="accounts/css/bankList.css" charset="utf-8">
<link type="text/css" rel="stylesheet" href="/accounts/css/a.css" source="widget">
<link type="text/css" rel="stylesheet" href="/accounts/css/a_002.css">
<script type="text/javascript" async="" src="/accounts/js/wl.js"></script>
<script type="text/javascript" src="/accounts/js/jquery-1.js"></script>
<script type="text/javascript" src="/accounts/js/a.js"></script>
<script type="text/javascript" src="/accounts/js/cookieTrack_v4.js"></script>
<script type="text/javascript" src="/accounts/js/order.js"></script>
<script type="text/javascript" src="/accounts/js/jquery.js"></script>
<link charset="utf-8" rel="stylesheet" href="/accounts/css/tips.css">
</head>
<body id="mainframe">
<div id="shortcut-2014">
  <div class="w">
    <ul class="fl">
      <li class="dorpdown" id="ttbar-mycity">
        <div class="dt cw-icon ui-areamini-text-wrap" style=""> <i class="ci-right"><s>◇</s></i> 送至：<span class="ui-areamini-text" data-id="19" title="广东">广东</span> </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="ui-areamini-content-wrap">
            <div class="ui-areamini-content">
              <div class="ui-areamini-content-list">
                <div class="item"><a data-id="1" href="javascript:void(0)">北京</a></div>
                <div class="item"><a data-id="2" href="javascript:void(0)">上海</a></div>
                <div class="item"><a data-id="3" href="javascript:void(0)">天津</a></div>
                <div class="item"><a data-id="4" href="javascript:void(0)">重庆</a></div>
                <div class="item"><a data-id="5" href="javascript:void(0)">河北</a></div>
                <div class="item"><a data-id="6" href="javascript:void(0)">山西</a></div>
                <div class="item"><a data-id="7" href="javascript:void(0)">河南</a></div>
                <div class="item"><a data-id="8" href="javascript:void(0)">辽宁</a></div>
                <div class="item"><a data-id="9" href="javascript:void(0)">吉林</a></div>
                <div class="item"><a data-id="10" href="javascript:void(0)">黑龙江</a></div>
                <div class="item"><a data-id="11" href="javascript:void(0)">内蒙古</a></div>
                <div class="item"><a data-id="12" href="javascript:void(0)">江苏</a></div>
                <div class="item"><a data-id="13" href="javascript:void(0)">山东</a></div>
                <div class="item"><a data-id="14" href="javascript:void(0)">安徽</a></div>
                <div class="item"><a data-id="15" href="javascript:void(0)">浙江</a></div>
                <div class="item"><a data-id="16" href="javascript:void(0)">福建</a></div>
                <div class="item"><a data-id="17" href="javascript:void(0)">湖北</a></div>
                <div class="item"><a data-id="18" href="javascript:void(0)">湖南</a></div>
                <div class="item"><a data-id="19" href="javascript:void(0)" class="selected">广东</a></div>
                <div class="item"><a data-id="20" href="javascript:void(0)">广西</a></div>
                <div class="item"><a data-id="21" href="javascript:void(0)">江西</a></div>
                <div class="item"><a data-id="22" href="javascript:void(0)">四川</a></div>
                <div class="item"><a data-id="23" href="javascript:void(0)">海南</a></div>
                <div class="item"><a data-id="24" href="javascript:void(0)">贵州</a></div>
                <div class="item"><a data-id="25" href="javascript:void(0)">云南</a></div>
                <div class="item"><a data-id="26" href="javascript:void(0)">西藏</a></div>
                <div class="item"><a data-id="27" href="javascript:void(0)">陕西</a></div>
                <div class="item"><a data-id="28" href="javascript:void(0)">甘肃</a></div>
                <div class="item"><a data-id="29" href="javascript:void(0)">青海</a></div>
                <div class="item"><a data-id="30" href="javascript:void(0)">宁夏</a></div>
                <div class="item"><a data-id="31" href="javascript:void(0)">新疆</a></div>
                <div class="item"><a data-id="52993" href="javascript:void(0)">港澳</a></div>
                <div class="item"><a data-id="32" href="javascript:void(0)">台湾</a></div>
                <div class="item"><a data-id="84" href="javascript:void(0)">钓鱼岛</a></div>
                <div class="item"><a data-id="53283" href="javascript:void(0)">海外</a></div>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
    <ul class="fr">
      <li class="fore1 dorpdown" id="ttbar-login">
        <div class="dt cw-icon"> <i class="icon-plus-nickname"></i> <i class="ci-right"><s>◇</s></i> <a class="nickname" target="_blank" href="https://home.jd.com/">灿烂飞翔的女...</a> </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="userinfo">
            <div class="u-pic"><a target="_blank" href="https://home.jd.com/"><img src="/images/no-img_mid_.jpg" width="60" height="60"></a></div>
            <div class="u-plus"><a href="https://passport.jd.com/uc/login?ltype=logout" class="link-logout">退出</a><a href="https://plus.jd.com/index" target="_blank" class="icon-plus-dropdown"></a></div>
            <div class="u-msg"><a href="https://plus.jd.com/index" target="_blank">您可享银牌特惠，开通PLUS&gt;</a></div>
          </div>
          <div class="badge-list"> <a href="javascript:void(0);" class="badge-list-prev">&lt;</a>
            <div class="u-badges" style="position: relative;">
              <div class="badge-panel-main" style="width: 740px; left: 0px; position: absolute;">
                <div class="badge-panel fore1 ui-switchable-panel-selected u-dis" style="float: left; display: block;"><a href="https://plus.jd.com/index" target="_blank"><i></i>
                  <p class="u-name">免费试用</p>
                  </a></div>
                <div class="badge-panel fore2" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-01" target="_blank"><i></i>
                  <p class="u-name">自营运费补贴</p>
                  </a></div>
                <div class="badge-panel fore3" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-02" target="_blank"><i></i>
                  <p class="u-name">售后服务</p>
                  </a></div>
                <div class="badge-panel fore4" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-03" target="_blank"><i></i>
                  <p class="u-name">评价奖励</p>
                  </a></div>
                <div class="badge-panel fore5" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-04" target="_blank"><i></i>
                  <p class="u-name">会员特价</p>
                  </a></div>
                <div class="badge-panel fore6" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-05" target="_blank"><i></i>
                  <p class="u-name">生日礼包</p>
                  </a></div>
                <div class="badge-panel fore8" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-06" target="_blank"><i></i>
                  <p class="u-name">装机服务</p>
                  </a></div>
                <div class="badge-panel fore7 u-dis" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-07" target="_blank"><i></i>
                  <p class="u-name">专享礼包</p>
                  </a></div>
                <div class="badge-panel fore9 u-dis" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-08" target="_blank"><i></i>
                  <p class="u-name">贵宾专线</p>
                  </a></div>
                <div class="badge-panel fore10 u-dis" style="float: left; display: block;"><a href="https://vip.jd.com/help.html#mypri-09" target="_blank"><i></i>
                  <p class="u-name">运费券</p>
                  </a></div>
              </div>
            </div>
            <a href="javascript:void(0);" class="badge-list-next">&gt;</a> </div>
        </div>
      </li>
      <li class="spacer"></li>
      <li class="fore2">
        <div class="dt"> <a target="_blank" href="http://order.jd.com/center/list.action">我的订单</a> </div>
      </li>
      <li class="spacer"></li>
      <li class="fore3 dorpdown" id="ttbar-myjd">
        <div class="dt cw-icon"> <i class="ci-right"><s>◇</s></i> <a target="_blank" href="http://home.jd.com/">我的尚商</a> </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="dd-inner"><span class="loading"></span></div>
        </div>
      </li>
      <li class="spacer"></li>
      <li class="fore4">
        <div class="dt"> <a target="_blank" href="http://vip.jd.com/">尚商会员</a> </div>
      </li>
      <li class="spacer"></li>
      <li class="fore5">
        <div class="dt"> <a target="_blank" href="http://b.jd.com/">企业采购</a> </div>
      </li>
      <li class="spacer"></li>
      <li class="fore6 dorpdown" id="ttbar-apps" aid="2_955_6342">
        <div class="dt cw-icon"> <i class="ci-left"></i> <i class="ci-right"><s>◇</s></i> <a target="_blank" href="http://app.jd.com/">手机尚商</a> </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="dd-inner" id="ttbar-apps-main">
            <div class="dd-spacer"></div>
            <div class="dd-inner"><span class="loading"></span></div>
          </div>
        </div>
      </li>
      <li class="spacer"></li>
      <li class="fore7 dorpdown" id="ttbar-atte" aid="2_955_6494">
        <div class="dt cw-icon"> <i class="ci-right"><s>◇</s></i>关注尚商 </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="dd-inner" id="ttbar-atte-main">
            <div class="dd-spacer"></div>
            <div class="dd-inner"><span class="loading"></span></div>
          </div>
        </div>
      </li>
      <li class="spacer"></li>
      <li class="fore8 dorpdown" id="ttbar-serv">
        <div class="dt cw-icon"> <i class="ci-right"><s>◇</s></i>客户服务 </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="dd-inner"><span class="loading"></span></div>
        </div>
      </li>
      <li class="spacer"></li>
      <li class="fore9 dorpdown" id="ttbar-navs">
        <div class="dt cw-icon"> <i class="ci-right"><s>◇</s></i>网站导航 </div>
        <div class="dd dorpdown-layer">
          <div class="dd-spacer"></div>
          <div class="dd-inner"><span class="loading"></span></div>
        </div>
      </li>
    </ul>
    <span class="clr"></span> </div>
</div>
<div id="o-header-2013">
  <div id="header-2013" style="display:none;"></div>
</div>
<!--shortcut end-->

<div class="w w1 header clearfix">
  <div id="logo"> <a href="/" class="link1" target="_blank"><img src="/images/reglogo.png" alt="尚商商城"></a> </div>
  <div class="stepflex" id="#sflex03">
    <dl class="first done">
      <dt class="s-num">1</dt>
      <dd class="s-text">1.我的购物车<s></s><b></b></dd>
    </dl>
    <dl class="normal doing">
      <dt class="s-num">2</dt>
      <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
    </dl>
    <dl class="normal last">
      <dt class="s-num">3</dt>
      <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
    </dl>
  </div>
</div>

<!-- /header --> 
<!--/ /widget/header/header.tpl -->

<div id="consignee_back" name="consignee_back" style="display:none"></div>
<div id="consignee_back_action" name="consignee_back_action" style="display:none"></div>
<div id="part-invoice_back" name="part-invoice_back" style="display:none"></div>
<div id="part-invoice_back_action" name="part-invoice_back_action" style="display:none"></div>
<div id="payment-ship_back_action" name="payment-ship_back_action" style="display:none"></div>
<div id="payment-ship_back" name="payment-ship_back" style="display:none"></div>

<div class="plusInfoConfig hide">{"plusInfos":[{"content":"开通PLUS会员，享受商品
  会员价","url":"http://plus.jd.com/order
  /page","clstag":"pageclick|keycount|201601152|50","typeContent":"立即开
  通","classInfo":null,"configId":0},{"content":"开通PLUS会员，享受商品会员
  价","url":"http://plus.jd.com/order
  /page","clstag":"pageclick|keycount|201601152|49","typeContent":"立即开
  通","classInfo":null,"configId":0},{"content":"开通PLUS会员，享受商品会员
  价","url":"http://plus.jd.com/order
  /page","clstag":"pageclick|keycount|201601152|48","typeContent":"立即开
  通","classInfo":null,"configId":0},{"content":"开通PLUS会员，每月送5张自营运费
  券","url":"http://plus.jd.com
  /index","clstag":"pageclick|keycount|201601152|47","typeContent":"立省运
  费","classInfo":null,"configId":0},{"content":"还在花运费？每月领5张自营运费
  券","url":"http://plus.jd.com/order
  /page","clstag":"pageclick|keycount|201601152|50","typeContent":"立即开
  通","classInfo":null,"configId":0},{"content":"免费试用PLUS会员，享受商品会员
  价","url":"http://plus.jd.com
  /index","clstag":"pageclick|keycount|201601152|50","typeContent":"立省运
  费","classInfo":null,"configId":0}],"classInfo":"com.jd.trade.app.common.config.PlusConfig","configId":26283}</div>
<input id="totalFreight" value="0" type="hidden">
<div class="plusProductList hide">[]</div>
<input id="closeRefreshSelfpick" value="0" type="hidden">
<!-- main -->
<div id="container">
  <div id="content" class="w"> 
    <!-- <div class="m"> -->
    <div class="orderInfo-tip hide" style="display: none;"> <span class="wicon"></span> <span class="ftx-03"> 温馨提示：订单中存在不支持7天无理由退换商品，请确认相关商品信息后提交订单。</span> <span class="cls-btn" onclick="closeorderInfotip()">x</span> </div>
    <div class="checkout-tit"> <span class="tit-txt">填写并核对订单信息</span> </div>
    <!--<div class="mc">-->
    <div class="checkout-steps"> 
      <!--  /widget/consignee-step/consignee-step.tpl -->
      <div class="step-tit">
        <h3>收货人信息</h3>
        <div class="extra-r"> <a href="#none" class="ftx-05 J_consignee_global" onclick="use_NewConsigneeOversea()">新增收货地址</a> 
          <!--<a href="#none" class="ftx-05" onclick="use_NewConsignee()" clstag="pageclick|keycount|trade_201602181|3">新增收货地址</a>-->
          <input id="del_consignee_type" value="1" type="hidden">
        </div>
      </div>
      <div class="step-cont">
        <div id="consignee-addr" class="consignee-content">
          <div class="consignee-scrollbar">
            <div class="ui-scrollbar-main">
              <div class="consignee-scroll">
                <div class="consignee-cont" id="consignee1" style="height: 42px;">
                  <ul id="consignee-list">
                    <!----> 
                    <!--
<li class="ui-switchable-panel" id="consignee_index_138195824" selected="selected" style="cursor: pointer;">
	<div class="consignee-item item-selected" consigneeId="138195824" id="consignee_index_div_138195824">
		<b></b>
		<div class="user-name">
			<div class="fl"><strong limit="4">柳小龙</strong>&nbsp;&nbsp;收</div>
			<div class="fr">150****4784</div>
			<div class="clr"></div>
		</div>
		<div class="mt10" limit="15">广东 广州市 天河区 </div>
		<div class="adr-m" limit="30">黄村青云里1巷5号</div>
		<div class="op-btns ar">
							<span class='mr10'>默认地址</span>
									<a href="#none" class="ftx-05 mr10 edit-consignee" fid="138195824">编辑</a>
			<a href="#none" class="ftx-05 del-consignee hide" fid="138195824">删除</a>
		</div>
	</div>
</li>
-->
                    
                    <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: list-item;" id="consignee_index_138195824" selected="selected" c_li_custom_label="consignee_li">
                      <div class="consignee-item item-selected" consigneeid="138195824" provinceid="19" cityid="1601" id="consignee_index_div_138195824" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div"> <span limit="8" title="柳小龙 广东">柳小龙 广东</span><b></b> </div>
                      <div class="addr-detail"> 
                        <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ --> 
                        <span class="addr-name" limit="6" title="柳小龙">柳小龙</span> <span class="addr-info" limit="45" title="广东 广州市 天河区 黄村青云里1巷5号">广东 广州市 天河区 黄村青云里1巷5号</span> <span class="addr-tel">150****4784</span> <span class="addr-default">默认地址</span> </div>
                      <div class="op-btns" consigneeid="138195824" isoldaddress="false"> <span></span> <a href="#none" class="ftx-05 edit-consignee" fid="138195824" clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a href="#none" class="ftx-05 del-consignee hide" fid="138195824" clstag="pageclick|keycount|trade_201602181|5">删除</a> </div>
                    </li>
                    
                    <!-- 地址升级提示:两种情况 --> 
                    
                    <!-- 地址升级隐藏域信息 -->
                    <input id="hid_upArea_138195824" consigneeid="138195824" isoldaddress="false" ismapping="false" newprovinceid="0" newcityid="0" newcountyid="0" newtownid="0" newprovincename="" newcityname="" newcountyname="" newtownname="" address_type="1" addressname="柳小龙 广东" name="柳小龙" email="1*********@qq.com" mobile="150****4784" phone="" idcard="" address="黄村青云里1巷5号" ceshi1="C2113A6086BE54B4EEB7B3753B8199507A8EBC8637FB2BE6" style="display: none;" type="hidden">
                    
                    <!---->
                    <input id="hidden_consignees_size" value="5" style="display: none;" type="hidden">
                    <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: none;" id="consignee_index_138490102" c_li_custom_label="consignee_li">
                      <div class="consignee-item" consigneeid="138490102" provinceid="19" cityid="1677" id="consignee_index_div_138490102" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div"> <span limit="8" title="家里">家里</span><b></b> </div>
                      <div class="addr-detail"> 
                        <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ --> 
                        <span class="addr-name" limit="6" title="吴丽娇">吴丽娇</span> <span class="addr-info" limit="45" title="广东 湛江市 雷州市 客路镇客路镇">广东 湛江市 雷州市 客路镇客路镇</span> <span class="addr-tel">152****9768</span> </div>
                      <div class="op-btns" consigneeid="138490102" isoldaddress="false"> <a href="#none" class="ftx-05 setdefault-consignee" fid="138490102" clstag="pageclick|keycount|trade_201602181|4">设为默认地址</a> <a href="#none" class="ftx-05 edit-consignee" fid="138490102" clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a href="#none" class="ftx-05 del-consignee" fid="138490102" clstag="pageclick|keycount|trade_201602181|5">删除</a> </div>
                    </li>
                    
                    <!-- 地址升级提示:两种情况 --> 
                    <!-- 地址升级隐藏域信息 -->
                    <input id="hid_upArea_138490102" consigneeid="138490102" isoldaddress="false" ismapping="false" newprovinceid="0" newcityid="0" newcountyid="0" newtownid="0" newprovincename="" newcityname="" newcountyname="" newtownname="" address_type="1" addressname="家里" name="吴丽娇" email="" mobile="152****9768" phone="" idcard="" address="客路镇" ceshi1="" style="display: none;" type="hidden">
                    <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: none;" id="consignee_index_138490057" c_li_custom_label="consignee_li">
                      <div class="consignee-item" consigneeid="138490057" provinceid="19" cityid="1677" id="consignee_index_div_138490057" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div"> <span limit="8" title="蔡尚儒">蔡尚儒</span><b></b> </div>
                      <div class="addr-detail"> 
                        <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ --> 
                        <span class="addr-name" limit="6" title="蔡尚儒">蔡尚儒</span> <span class="addr-info" limit="45" title="广东 湛江市 雷州市 客路镇客路人民影剧院广东省湛江市雷州市客路镇客路人民影剧院">广东 湛江市 雷州市 客路镇客路人民影剧院广东省湛江市雷州市客路镇客路人民影剧院</span> <span class="addr-tel">131****8279</span> </div>
                      <div class="op-btns" consigneeid="138490057" isoldaddress="false"> <a href="#none" class="ftx-05 setdefault-consignee" fid="138490057" clstag="pageclick|keycount|trade_201602181|4">设为默认地址</a> <a href="#none" class="ftx-05 edit-consignee" fid="138490057" clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a href="#none" class="ftx-05 del-consignee" fid="138490057" clstag="pageclick|keycount|trade_201602181|5">删除</a> </div>
                    </li>
                    
                    <!-- 地址升级提示:两种情况 --> 
                    <!-- 地址升级隐藏域信息 -->
                    <input id="hid_upArea_138490057" consigneeid="138490057" isoldaddress="false" ismapping="false" newprovinceid="0" newcityid="0" newcountyid="0" newtownid="0" newprovincename="" newcityname="" newcountyname="" newtownname="" address_type="1" addressname="蔡尚儒" name="蔡尚儒" email="" mobile="131****8279" phone="131****8279" idcard="" address="客路人民影剧院广东省湛江市雷州市客路镇客路人民影剧院" ceshi1="" style="display: none;" type="hidden">
                    <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: none;" id="consignee_index_138436012" c_li_custom_label="consignee_li">
                      <div class="consignee-item" consigneeid="138436012" provinceid="19" cityid="1677" id="consignee_index_div_138436012" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div"> <span limit="8" title="吴丽娇">吴丽娇</span><b></b> </div>
                      <div class="addr-detail"> 
                        <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ --> 
                        <span class="addr-name" limit="6" title="吴丽娇">吴丽娇</span> <span class="addr-info" limit="45" title="广东 湛江市 雷州市 客路镇客路镇">广东 湛江市 雷州市 客路镇客路镇</span> <span class="addr-tel">152****9768</span> </div>
                      <div class="op-btns" consigneeid="138436012" isoldaddress="false"> <a href="#none" class="ftx-05 setdefault-consignee" fid="138436012" clstag="pageclick|keycount|trade_201602181|4">设为默认地址</a> <a href="#none" class="ftx-05 edit-consignee" fid="138436012" clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a href="#none" class="ftx-05 del-consignee" fid="138436012" clstag="pageclick|keycount|trade_201602181|5">删除</a> </div>
                    </li>
                    
                    <!-- 地址升级提示:两种情况 --> 
                    <!-- 地址升级隐藏域信息 -->
                    <input id="hid_upArea_138436012" consigneeid="138436012" isoldaddress="false" ismapping="false" newprovinceid="0" newcityid="0" newcountyid="0" newtownid="0" newprovincename="" newcityname="" newcountyname="" newtownname="" address_type="1" addressname="吴丽娇" name="吴丽娇" email="" mobile="152****9768" phone="152****9768" idcard="" address="客路镇" ceshi1="" style="display: none;" type="hidden">
                    <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: none;" id="consignee_index_138421987" c_li_custom_label="consignee_li">
                      <div class="consignee-item" consigneeid="138421987" provinceid="19" cityid="1601" id="consignee_index_div_138421987" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div"> <span limit="8" title="柳小龙 广东">柳小龙 广东</span><b></b> </div>
                      <div class="addr-detail"> 
                        <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ --> 
                        <span class="addr-name" limit="6" title="柳小龙">柳小龙</span> <span class="addr-info" limit="45" title="广东 广州市 天河区 黄村青云里1巷5号5楼">广东 广州市 天河区 黄村青云里1巷5号5楼</span> <span class="addr-tel">150****4784</span> </div>
                      <div class="op-btns" consigneeid="138421987" isoldaddress="false"> <a href="#none" class="ftx-05 setdefault-consignee" fid="138421987" clstag="pageclick|keycount|trade_201602181|4">设为默认地址</a> <a href="#none" class="ftx-05 edit-consignee" fid="138421987" clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a href="#none" class="ftx-05 del-consignee" fid="138421987" clstag="pageclick|keycount|trade_201602181|5">删除</a> </div>
                    </li>
                    
                    <!-- 地址升级提示:两种情况 --> 
                    <!-- 地址升级隐藏域信息 -->
                    <input id="hid_upArea_138421987" consigneeid="138421987" isoldaddress="false" ismapping="false" newprovinceid="0" newcityid="0" newcountyid="0" newtownid="0" newprovincename="" newcityname="" newcountyname="" newtownname="" address_type="1" addressname="柳小龙 广东" name="柳小龙" email="" mobile="150****4784" phone="" idcard="" address="黄村青云里1巷5号5楼" ceshi1="" style="display: none;" type="hidden">
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="addr-switch switch-on" id="consigneeItemAllClick" onclick="show_ConsigneeAll()" clstag="pageclick|keycount|trade_201602181|2"> <span>更多地址</span><b></b> </div>
        <div class="addr-switch switch-off hide" id="consigneeItemHideClick" onclick="hide_ConsigneeAll()"> <span>收起地址</span><b></b> </div>
        <div id="selfPickArea" class="consignee-scroll mt10 hide">
          <div class="consignee-cont">
            <div class="hr" id="selfPickLine"></div>
            <div class="picksite-lead hide" id="firstAccessTip"> <i class="pl-joy"></i> <span class="pl-info">自提地址挪位置啦~根据您的配送习惯，<br>
              我们为您新增了尚商自提点</span> <span class="pl-btn" onclick="doHandleFirstAccess()">我知道了</span> <i class="pl-cls" onclick="doHandleFirstAccess()"></i> <i class="pl-arrow"></i> </div>
            <ul id="selfPickInfo">
              <li id="defaultSelfPick" defaultselfpick="1">
                <div id="selfPickSiteName" class="consignee-item" clstag="pageclick|keycount|trade_201602181|40" onclick='doSelectSelfPickSite("0","")'> <span id="pickName" pickid="0" limit="8">尚商自提点</span> <b></b> </div>
                <div class="addr-detail"> <span class="addr-name" limit="6" title=""> </span> <span class="addr-info" limit="45" title=""> </span> <span class="addr-tel"> </span> </div>
                <div class="addr-ops"> <a id="selfPickEdit" href="#none" onclick="openEditSelfPickConsigneeDialog()" clstag="pageclick|keycount|trade_201602181|41" class="ftx-05 mr10 edit-selfconsignee hide" fid="0">更换自提地址</a> <i class="pick-err-icon noPickChoose hide"></i><span class="ftx-01 mr10 noPickChoose hide">部分商品不支持</span> <a class="ftx-05 selfpick-edit selfPickChoose hide" href="#none" onclick="openEditSelfPickConsigneeDialog()">重新选择</a> </div>
              </li>
            </ul>
          </div>
        </div>
        <!--end-->
        
        <div class="picksite-scroll mt10">
          <div class="picksite-cont">
            <div class="hr hide" id="zitihr"></div>
            <div id="zititype1" class="consignee-picksite-info mb10 mt10 hide"> <span class="c-picksite-logo">尚商自提</span> <span class="ftx-03 ml5">省运费·无续重·随时取</span> <a target="_blank" href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a> </div>
            <div id="zititype2" class="consignee-picksite-info mb10 mt10 hide"> <span class="c-picksite-logo">尚商自提</span> <span class="ftx-01 ml5" id="absMoney">选择尚商自提，立省运费</span> <a target="_blank" href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a> </div>
            <div id="zititype3" class="consignee-picksite-info mb10 mt10 hide"> <span class="c-picksite-logo">尚商自提</span> <span class="ftx-01 ml5">周末没人？使用尚商自提 省运费·无续重·随时取</span> <a target="_blank" href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a> </div>
            <div id="zititype5" class="consignee-picksite-info mb10 mt10"> <span class="c-picksite-logo">尚商自提</span> <span class="ftx-01 ml5">抱歉，存在不支持自提的商品或该地址下没有可用的自提点</span> <a target="_blank" href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a> </div>
            <ul id="selfPickOptimizeUl">
            </ul>
          </div>
        </div>
        <div id="zititype4" class="picksite-nosuport-cont hide"> <span class="tips-cont ml10"><b></b>订单中部分商品不支持自提，暂无法使用尚商自提</span> <a href="#none" class="ftx05 J_picksite_disable_info ml30">详情&nbsp;&gt;</a>
          <div class="picksite-nosuport-box"> <i class="arrow-up"></i> <strong>以下商品不支持自提</strong>
            <ul id="unSupportSelfPickSkuList">
            </ul>
          </div>
        </div>
        <input id="consigneeList_giftSenderConsigneeMobile" value="" type="hidden">
        <input id="consigneeList_giftSenderConsigneeName" value="" type="hidden">
      </div>
      <!--/ /widget/consignee-step/consignee-step.tpl -->
      <div class="hr"></div>
      <!--/ /widget/shopping-list/shopping-list.tpl -->
      <div id="shipAndSkuInfo">
        <div id="payShipAndSkuInfo">
          <div class="step-tit">
            <h3>支付方式</h3>
          </div>
          <div type="hide"></div>
          <input id="totalPriceVender" value="0" type="hidden">
          <input id="totalNumVender" value="0" type="hidden">
          <div class="plusProductListVender hide">[]</div>
          <div class="step-cont">
            <div class="payment-list" id="">
              <div class="list-cont">
                <ul id="payment-list">
                  <input id="instalmentPlan" value="false" type="hidden">
                  <li style="cursor: pointer;" onclick="
									 save_Pay(1,0,1); 				" clstag="pageclick|keycount|trade_201602181|8">
                    <div class=" payment-item  online-payment " for="pay-method-1" payname="货到付款" payid="1" onlinepaytype="0"><b></b> 货到付款<span class="qmark-icon qmark-tip" data-tips="送货上门后再收款，支持现金、POS机刷卡、支票支付 &lt;a href='//help.jd.com/user/issue/103-983.html' target='_blank' class='ftx-05'&gt;查看服务及配送范围&lt;/a&gt;"></span> </div>
                  </li>
                  <li style="cursor: pointer;" onclick="
				save_Pay(4,0,1);" clstag="pageclick|keycount|trade_201602181|7">
                    <div class=" payment-item item-selected online-payment " for="pay-method-4" payname="在线支付" payid="4" onlinepaytype="0"><b></b> <em class="payment-promo">惠</em> 在线支付 <span id="cod" class="qmark-icon qmark-tip" data-tips="即时到账，支持绝大数银行借记卡及部分银行信用卡 &lt;a href='//help.jd.com/user/issue/223-562.html' target='_blank' class='ftx-05'&gt; 查看银行及限额&lt;/a&gt;"></span> </div>
                  </li>
                  <li style="cursor: pointer;" onclick="
				save_Pay(5,0,1);" clstag="pageclick|keycount|trade_201602181|9">
                    <div class="hide payment-item  online-payment " for="pay-method-5" payname="公司转账" payid="5" onlinepaytype="0"><b></b> 公司转账 <span class="qmark-icon qmark-tip" data-tips="通过快钱平台转账 转账后1-3个工作日内到账 &lt;a href='//help.jd.com/user/issue/list-175.html' target='_blank' class='ftx-05'&gt;查看账户信息&lt;/a&gt;"></span> </div>
                  </li>
                  <li style="cursor: pointer;" onclick="
				save_Pay(2,0,1);" clstag="pageclick|keycount|trade_201602181|10">
                    <div class="hide payment-item  online-payment " for="pay-method-2" payname="邮局汇款" payid="2" onlinepaytype="0"><b></b> 邮局汇款 <span class="qmark-icon qmark-tip" data-tips="通过快钱平台收款 汇款后1-3个工作日到账 &lt;a href='//help.jd.com/user/issue/list-174.html' target='_blank' class='ftx-05'&gt;查看帮助&lt;/a&gt;"></span> </div>
                  </li>
                  <li id="payment-less" class="hide">
                    <div class="payment-item-on" clstag="pageclick|keycount|PaymentLead__2016030411|10"> <span>收起</span><b></b> </div>
                  </li>
                  <li id="payment-more">
                    <div class="payment-item-off" clstag="pageclick|keycount|PaymentLead__2016030411|9"> <span>更多</span><b></b> </div>
                  </li>
                  <script>
$('.online-payment')
.hover(function(){
	$(this).addClass('payment-item-hover');
},function(){
	$(this).removeClass('payment-item-hover');
}); 
if($("#payment-list li").length<=4){
	$('#payment-less').hide();
	$('#payment-more').hide();
	var payid=[5,2,8];
	for(var i in payid){
		$("#payment-list div[payid="+payid[i]+"]").show();
	}
}
$('.payment-item-on').click(function(){
	$('#payment-less').hide();
	$('#payment-more').show();
	var payid=[5,2,8];
	for(var i in payid){
		var payment = $("#payment-list div[payid="+payid[i]+"]");
		if(!payment.hasClass("item-selected")){
			payment.hide(100);
		}
	}
});
$('.payment-item-off').click(function(){
	$('#payment-less').show();
	$('#payment-more').hide();
	var payid=[5,2,8];
	for(var i in payid){
		var payment = $("#payment-list div[payid="+payid[i]+"]");
		if(!payment.hasClass("item-selected")){
			payment.show(100);
		}
	}
});
</script>
                </ul>
              </div>
            </div>
          </div>
          <div class="hr"></div>
          <!--/ /widget/payment-step/payment-step.tpl -->
          <div class="step-tit">
            <h3>送货清单</h3>
            <div class="extra-r"> <a class="price-desc" id="price-desc" href="#none" data-tips="因可能存在系统缓存、页面更新导致价格变动异常等不确定性情况出现，商品售价以本结算页商品价格为准；如有疑问，请您立即联系销售商咨询。"> <i></i>&nbsp;价格说明 </a> <a href="https://cart.jd.com/" id="cartRetureUrl" class="return-edit ftx-05" clstag="pageclick|keycount|trade_201602181|15">返回修改购物车</a> </div>
          </div>
          <div class="step-cont" id="skuPayAndShipment-cont"> 
            <!--添加商品清单  zhuqingjie -->
            <div class="shopping-lists" id="shopping-lists"> 
              <!--定义大商品清单LIST-->
              <div class="shopping-list ABTest">
                <div class="goods-list"> 
                  <!--购物车单品商品--> 
                  <!--一般套装商品--> 
                  <!--满返套装商品--> 
                  <!--满赠套装商品--> 
                  <!--配送方式-->
                  <div class="goods-tit">
                    <h4 class="vendor_name_h" id="189934">商家：闺觅旗舰店</h4>
                  </div>
                  
                  <!--单品开始-->
                  <div class="goods-items"> </div>
                  <!--单品结束--> 
                  <!--一般套装开始--> 
                  <!--一般套装结束--> 
                  <!--满返套装开始-->
                  <div class="goods-items 4750821542">
                    <div class="goods-suit goods-last"> 
                      <!--跨店铺满减  开始-->
                      <div class="goods-suit-tit"> <span class="sales-icon">满减</span> <strong>活动商品已购满2件，已减6.80元现金</strong> <span class="ml20" style="display: inline-block;border: 1px solid #7abd54;color: #7abd54;padding: 2px 5px;">&nbsp;返现：<em>￥6.80</em></span> </div>
                      <div class="goods-item" goods-id="12487798201" sx-type="0">
                        <div class="p-img"> <a target="_blank" href="http://item.jd.com/12487798201.html?dist="><img src="/images/59171b14Ndc6df036.jpg" alt=""></a> </div>
                        <div class="goods-msg">
                          <div class="goods-msg-gel">
                            <div class="p-name"> 
                              <!-- 尚商精选 begin --> 
                              <!-- 尚商精选 end --> 
                              <a href="http://item.jd.com/12487798201.html?dist=" target="_blank"> 闺觅 夏天套装女潮两件套2017夏装新款韩版修身气质短袖时尚雪纺七分裤 粉色-送项链 L </a> </div>
                            <div class="p-price"> 
                              <!--增加预售金额显示 begin   预售分阶段支付类型（1：一阶梯全款支付；2：一阶梯定金支付(全款或定金可选)；3：三阶梯(仅定金)；4：三阶梯(全款或定金可选)；5：一阶梯仅定金支付） --> 
                              
                              <strong class="jd-price"> ￥ 68.00 </strong> 
                              <!--增加预售金额显示 end--> 
                              <span class="p-num"> x1 </span> <span id="pre-state" class="p-state" skuid="12487798201">有货</span> </div>
                          </div>
                        </div>
                        <div> <i class="p-icon p-icon-w sevenicon"></i><span class="ftx-07 withouthk seven">支持7天无理由退货</span> </div>
                        <div class="clr"></div>
                        <!-- 京券和东券显示 --> 
                        
                        <!-- 延保显示 --> 
                        <!-- 尚商礼品购礼品盒展示 --> 
                        
                        <!-- 尚商loc门店展示 --> 
                        
                      </div>
                      <div class="goods-item goods-item-extra" goods-id="12933741563" sx-type="0">
                        <div class="p-img"> <a target="_blank" href="http://item.jd.com/12933741563.html?dist="><img src="/images/593433c6N08325196_002.jpg" alt=""></a> </div>
                        <div class="goods-msg">
                          <div class="goods-msg-gel">
                            <div class="p-name"> 
                              <!-- 尚商精选 begin --> 
                              <!-- 尚商精选 end --> 
                              <a href="http://item.jd.com/12933741563.html?dist=" target="_blank"> 闺觅  夏天套装女潮两件套2017夏装新款韩版修身气质短袖时尚雪纺七分裤 粉色-送项链 M建议95-105斤 </a> </div>
                            <div class="p-price"> 
                              <!--增加预售金额显示 begin   预售分阶段支付类型（1：一阶梯全款支付；2：一阶梯定金支付(全款或定金可选)；3：三阶梯(仅定金)；4：三阶梯(全款或定金可选)；5：一阶梯仅定金支付） --> 
                              
                              <strong class="jd-price"> ￥ 68.00 </strong> 
                              <!--增加预售金额显示 end--> 
                              <span class="p-num"> x1 </span> <span id="pre-state" class="p-state" skuid="12933741563">有货</span> </div>
                          </div>
                        </div>
                        <div> <i class="p-icon p-icon-w sevenicon"></i><span class="ftx-07 withouthk seven">支持7天无理由退货</span> </div>
                        <div class="clr"></div>
                        <!-- 京券和东券显示 --> 
                        
                        <!-- 延保显示 --> 
                        <!-- 尚商礼品购礼品盒展示 --> 
                        
                        <!-- 尚商loc门店展示 --> 
                        
                      </div>
                    </div>
                  </div>
                  <!--满返套装结束--> 
                  <!--满赠套装开始--> 
                  <!--满赠套装结束--> 
                  <!-- 买家版运费险 -->
                  <div class="hide service-items ml20 mr20" style="display: block;">
                    <div class="hide service-item" id="vender_freight_insurance_189934" style="display: block;">
                      <div class="hr"></div>
                      <span class="service-desc">退换无忧</span> <strong class="service-price">￥0.00</strong> </div>
                  </div>
                </div>
                <!--goods-list 结束-->
                <div class="dis-modes"> 
                  <!--购物车单品商品--> 
                  <!--一般套装商品--> 
                  <!--满返套装商品--> 
                  <!--满赠套装商品--> 
                  <!--以下为尚商配送方式--> 
                  <!--配送方式--> 
                  <!--配送方式--> 
                  <!--配送方式--> 
                  
                  <!-- 实物商品搭售虚拟商品 --> 
                  <!--以下为尚商大家电配送--> 
                  
                  <!--以下为尚商第三方配送--> 
                  <!--以下为第三方配送--> 
                  <!--如果是SOP快递或者是尚商中小件商品，但是不支持配送，则采用快递运输-->
                  <div class="mode-item mode-tab">
                    <h4>配送方式</h4>
                    <div class="mode-tab-nav">
                      <ul>
                        <li class="mode-tab-item curr" id="sop_other_shipment_item_189934" onclick="doSwithTabSop('189934','sopOther')"> <span class="m-txt">快递运输<i class="qmark-icon qmark-tip" data-tips="由商家选择合作快递为您配送"></i></span> <b></b> </li>
                        <li class="mode-tab-item hide " id="pick_shipment_item_189934" onclick="doSwithTab('picksite_sop')" clstag="pageclick|keycount|trade_201602181|12"> <span class="m-txt">上门自提<i class="qmark-icon qmark-tip" data-tips="自提时付款，支持现金、POS刷卡、支票支付&lt;a href='http://help.jd.com/user/issue/100-181.html' target='_blank' class='ftx-05'&gt;查看自提流程&lt;/a&gt;"></i></span><b></b> </li>
                      </ul>
                    </div>
                    <div class="mode-tab-con hide" id="selfpick_shipment_189934">
                      <ul class="mode-list">
                        <li>
                          <div class="fore1" id="selfpick_date_189934"><span class="ftx-03">自提时间1：</span></div>
                          <div class="fore2" onclick="doEditPickSiteDate('189934')"><a href="#none" class="ftx-05"></a></div>
                        </li>
                      </ul>
                    </div>
                    <div class="mode-tab-con" id="sop_shipment_189934">
                      <ul class="mode-list">
                        <li id="sop_shipment_date_li_189934">
                          <div class="fore1" id="sop_shipment_date_189934"><span class="mode-label ftx-03">配送时间：</span>
                            <div class="mode-infor">工作日、双休日与节假日均可送货</div>
                          </div>
                          <div class="fore2 hide" id="sop_shipment_botton_189934" onclick="doEditSopShipment('189934')" style="display: none;"><a href="#none" class="ftx-05">修改</a></div>
                        </li>
                        <li class="buyer_insurance" style="display: block;" id="189934">
                          <div class="foreAll"> <span class="mode-label ftx-03">退换无忧：</span>
                            <div class="mode-infor J-mode-infor-tips">
                              <label>
                                <input id="vender_189934" class="fl buyer_freight_insurance" onclick="selectBuyerFreightInsurance(this, 189934)" type="checkbox">
                                <span id="189934" class="fl mode-infor-con buyer_insurance">自签收后7天内退货，15天内换货,可享1次运费赔付至尚商小金库<i class="arrow-down"></i></span> <em class="fr">￥1.00</em> <span class="mode-infor-tips mode-infor-tips-sec" style="display: none;"><i id="189934" class="d-arr d-arr-pop"></i>自签收后7天内退货，15天内换货，按照赔付标准赔付一次退换货时产生的运费，赔付至尚商小金库，最高可赔付25元/单。<a target="_blank" href="https://help.jd.com/user/issue/480-1694.html">查看详情</a></span> </label>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="mode-tab-con hide" style="display: none;">
                      <div class="mode-promise"> <span id="promise-ico"><a href="javascript:void(0)" class="pop_FreightInsurance" title="">　</a></span>
                        <div class="promise-txt yfx_div_remark" id="189934"> 为您购买了运费险，最高赔付20.00元/单</div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--dis-modes 结束-->
                <div class="clr"></div>
                <!--
			<div class="freight-cont">			   
				   					       <strong class="ftx-01" style="color:#666" freightByVenderId="189934"  popJdShipment="false">免运费</strong>
				   			  </div>
	      --> 
              </div>
              <!--shopping-list 结束-->
              <form id="skuAndShipment_submit_form" method="post" action="">
                
              
              <!--隐藏的sop配送日历开始--> 
              <script id="sop_shipment_hidediv" type="text/temp">
		  <div class="date-thickbox" >
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item tab-item-selected" >标准达 <b> </b> </li> 
					</ul>
				</div>
				<div class="tab-con" id="tab_sop_div">
					<div class="date-delivery" id="date-delivery-sop"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
					<div class="op-btns mt10 ac"> <a id="timeSaveSop" clstag="pageclick|keycount|trade_201602181|52" href="javascript:void(0);"  class="btn-1">确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
		</div>
	</script> 
              <!--隐藏的sop配送日历结束--> 
              <!--隐藏的311配送日历开始--> 
              <script id="shipment_hidediv" type="text/temp">
		  <div class="date-thickbox" >
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item" id="li_zxj_id" onclick="doSwith311Tab('zxj')"><span id="jzdAmount"></span> <b> </b> </li>
						<li class="tab-nav-item" id="li_311_id" onclick="doSwith311Tab('311')">标准达 <b> </b> </li> 
						<li class="tab-nav-item" id="li_411_id" onclick="doSwith311Tab('411')"><span id="jsdAmount"></span><b> </b> </li>
					</ul>
				</div>
				<div class="tab-con" id="tab_zxj_div">
					<div class="date-delivery date-delivery-freight" id="date-delivery0"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
		           	 <div class="tips-618 mt20 hide tips-618-for-calendar">
		              <div class="tips-con">
		                <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
		          	  </div>
		         	 </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveZxj" clstag="pageclick|keycount|trade_201602181|52" href="javascript:void(0);"  class="btn-1">确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
				<div class="tab-con hide" id="tab_311_div">
					<div class="date-delivery date-delivery-new" id="date-delivery1"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
		           	 <div class="tips-618 mt20 hide tips-618-for-calendar">
		              <div class="tips-con">
		                <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
		          	  </div>
		         	 </div>
					<div class="op-btns mt10 ac"> <a id="timeSave311" clstag="pageclick|keycount|trade_201602181|51" href="javascript:void(0);"  class="btn-1"> 确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
				<div class="tab-con hide" id="tab_411_div">
					<div> 下单后或支付成功后2小时送达</div>
					<div class="ftx-03 mt20" id="message_show_411">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
					<div class="op-btns mt10 ac"> <a id="timeSave411" clstag="pageclick|keycount|trade_201602181|53" class="btn-1"> 确定 </a> <a href="javascript:jQuery.closeDialog();" class="btn-9 ml10"> 取消 </a> </div>
				</div>
		</div>
	</script> 
              <!--隐藏的311配送日历结束--> 
              <!--隐藏的大家电配送日历开始--> 
              <script id="bigShipment_hidediv" type="text/temp">
		  <div class="date-thickbox">
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item tab-item-selected" id="li_djd_id" onclick="doSwithBigTab('djd')"><span id="djzdAmount"></span> <b> </b> </li>
						<li class="tab-nav-item" id="li_bzd_id" onclick="doSwithBigTab('bzd')">标准达 <b> </b> </li> 
					</ul>
				</div>
				<div class="tab-con" id="tab_djd_div">
					<div class="date-delivery date-delivery-freight" id="big-date-delivery0"></div>
					<div class="ftx-03 mt20">
					<i class="date-delivery-icon"></i>
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
                    <div class="tips-618 mt20 hide tips-618-for-calendar">
                        <div class="tips-con">
                            <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
                        </div>
                    </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveDjdJzd" clstag="pageclick|keycount|trade_201602181|55" href="javascript:void(0);"  class="btn-1"> 确定  </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
		         </div>
				 <div class="tab-con hide" id="tab_bzd_div">
					<div class="date-delivery date-delivery-new" id="big-date-delivery1"></div>
					<div class="ftx-03 mt20">
					<i class="date-delivery-icon"></i>
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
                     <div class="tips-618 mt20 hide tips-618-for-calendar">
                         <div class="tips-con">
                             <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
                         </div>
                     </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveBzd" clstag="pageclick|keycount|trade_201602181|54" href="javascript:void(0);"  class="btn-1"> 确定  </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				 </div>
		  </div>
	</script> 
              <!--隐藏的大家电配送日历结束--> 
              <script id="nostock-box01" type="text/temp">
    <div class="limited-thickbox">
    	<div class="tip-box icon-box">
    		<span class="warn-icon m-icon"></span>
    		<div class="item-fore">
    			<h3>下手慢了~部分商品被抢空，继续结算其它商品？</h3>
    		</div>
    	</div>
    	<div class="goods-items" id="out-skus">
    	</div>
    	<div class="op-btns ac">
    			<a href="javascript:continueBuy()" class="btn-1" clstag="trade|keycount|sop|bfwhjxjs">继续</a>
    			<a href="javascript:goCart()" class="btn-9 ml10" clstag="trade|keycount|sop|bfwhfhgwc">返回购物车</a>
    	</div>
    </div>
    </script> 
              <br>
              <br>
              <div id="trade-nostock-recommendation-render" style="display:none"></div>
              <script id="nostock-box02" type="text/temp">
    <div class="limited-thickbox">
    	<div class="tip-box icon-box">
    		<span class="warn-icon m-icon"></span>
    		<div class="item-fore">
    			<h3>下手慢了~全部商品被抢空了
					<span class="extra">
                        <a href="javascript:goCart()" class="btn-9 ml10" clstag="trade|keycount|sop|qbwhfhgwc">返回购物车</a>
                    </span>
				</h3>
    		</div>
    	</div>
    	<div class="p-lists">
    		<div class="mt">
    			看看其他的...
    		</div>
    		<div class="mc" id="trade-nostock-recommendation">
    		</div>
    	</div>
    </div>
    </script> 
              <!--隐藏的无货代下单div--> 
              <script id="nostock-box03" type="text/temp">
    <div class="nostock-thickbox">
    	<div class="tip-box icon-box-new">
			<span class="warn-icon m-icon"></span>
			<div class="item-fore">
				<h3>下手慢了，部分商品被抢空，是否继续购买？</h3>
				<span>商品可能不满足某些优惠条件</span>
			</div>
		</div>
    	<div class="goods-items" id="out-skus">
    	</div>
    <div class="subs-info" id="detailAddr" style="display:none">
		<span class="sub-tit">到货代下单信息：</span>
		<br>
		<span class="fl">下一个月到货自动为您下单</span>
		<em class="fl ml10 mr10">|</em>
		<span class="fl">在线支付</span>
		<em class="fl ml10 mr10">|</em>
		<span class="fl ml5 mr5" id="name"></span>
		<span class="fl ml5 mr5" id="addrTel"></span>
		<span class="fl addr ml5" id="addrInfo"></span>
		<br>
		<span>可以去<em class="ml5 mr5">我的尚商-尚商代下单</em><a href="//skunotify.jd.com/storeOrderSubMvc/queryStoreSub.action" target="_blank" class="ftx-05">查看详情</a></span>
	</div>
	<div class="op-btns ar">
		<a href="javascript:continueBuy()" class="btn-1">确定</a>
		<a href="javascript:goCart()" class="btn-9 ml10">取消</a>
	</div>
    </div>
</script> 
              <!--无货代下单失败提示div--> 
              <script id="nostock-failed" type="text/temp">
		<div class="nostock-tipsbox" >
			<div class="tip-box icon-box-new">
				<span class="error-icon m-icon"></span>
				<div class="item-fore">
					<h3>提交失败</h3>
					<span>可能是由于网络问题，导致提交失败，尝试返回填写</span>
				</div>
			</div>
			<div class="op-btns ac mt20 ml30">
				<a href="javascript:goCart()" class="btn-1">返回</a>
				<a href="#nogo" id="nostock-failedClose" class="btn-9 ml10">关闭</a>
			</div>
		</div>
</script> 
              <!--无货代下单成功提示div--> 
              <script id="nostock-success" type="text/temp">
<div class="nostock-tipsbox">
	<div class="tip-box tip-box-succ icon-box-new">
		<span class="succ-icon m-icon"></span>
		<div class="item-fore">
			<h3>订阅消息成功！</h3>
		</div>
	</div>
	<div class="op-btns ac mt20 ml80">
		<a href='javascript:goCart()' class="btn-1">返回购物车</a>
		<a href='//skunotify.jd.com/storeOrderSubMvc/queryStoreSub.action' target='_blank' class="btn-9 ml10">查看代下单详情</a>
	</div>
</div>
</script> 
              <script>
/**
 * 退换无忧浮层
 */
$(".J-mode-infor-tips").hover(
    function() {
        $(this).find(".mode-infor-tips").show();
    },
    function() {
        $(this).find(".mode-infor-tips").hide();
    }
);
</script>
              <div class="clr"></div>
            </div>
            <!--shopping-lists 结束--> 
          </div>
        </div>
      </div>
      <!--添加商品清单结束--> 
      <!--添加备注信息-->
      <div class="order-remarks hide" id="orderRemarkItem" style="display: block;">
        <div class="remark-tit">添加订单备注</div>
        <div id="remarkId" style="margin-bottom:7px">
          <div class="form remark-cont">
            <input id="remarkText" maxlength="45" size="15" class="itxt itxt01" placeholder="限45个字（定制类商品，请将购买需求在备注中做详细说明）" onblur="if(this.value==''||this.value=='限45个字（定制类商品，请将购买需求在备注中做详细说明）'){this.value='限45个字（定制类商品，请将购买需求在备注中做详细说明）';this.style.color='#cccccc'}" onfocus="if(this.value=='限45个字（定制类商品，请将购买需求在备注中做详细说明）') {this.value='';};this.style.color='#000000';" type="text">
            <span class="ftx-03 ml10">&nbsp;&nbsp;提示：请勿填写有关支付、收货、发票方面的信息</span> </div>
        </div>
      </div>
      <!--  /widget/invoice-step/invoice-step.tpl -->
      <div class="hr"></div>
      <!-- 发票信息 -->
      <div class="step-tit" id="invoice-step">
        <h3>发票信息</h3>
      </div>
      <div class="step-content">
        <div id="part-inv" class="invoice-cont"> 不开发票 <a href="#none" id="invoiceEdit" class="ftx-05 invoice-edit" onclick="edit_Invoice()" clstag="pageclick|keycount|trade_201602181|16">修改</a> </div>
      </div>
      <div class="clr"></div>
      <!--/ /widget/invoice-step/invoice-step.tpl -->
      <div class="hr"></div>
      <!--  /widget/order-coupon/order-coupon.tpl -->
      <div class="step-tit step-toggle-off" id="virtualdiv" onclick="vertualHidOrShow()" clstag="pageclick|keycount|xunizichan__2016031015|1">
        <h3>使用优惠/尚商卡/抵用</h3>
        <i></i> </div>
      <div class="step-cont order-virtual" style="display: none;">
        <div class="order-virtual-tabs">
          <ul>
            <li class="ui-switchable-item curr" id="couponitem" onclick="query_coupons_vertual()" clstag="pageclick|keycount|xunizichan__2016031015|2"><span>优惠券</span><i style="display: none"></i></li>
            <li class="ui-switchable-item" id="giftitem" onclick="query_giftCards_vertual()" clstag="pageclick|keycount|xunizichan__2016031015|3"><span>尚商卡&nbsp;/&nbsp;E卡</span><i style="display: none"></i></li>
            <li class="ui-switchable-item" id="jdbeanitem" onclick="showOrHideJdBean()" clstag="pageclick|keycount|xunizichan__2016031015|4"><span>京豆</span><i style="display: none"></i></li>
            <li class="ui-switchable-item" id="balanceitem" clstag="pageclick|keycount|xunizichan__2016031015|5"><span>余额</span><i style="display: none"></i></li>
          </ul>
        </div>
        <div class="ui-switchable-panel-main" id="">
          <div class="ftx01 virtual-warning ml20" id="safeBalancePart"> <span> 为保障您的账户资金安全，请先 <a target="_blank" href="http://safe.jd.com/user/paymentpassword/safetyCenter.action" class="ftx-05"> [开启支付密码] </a> </span> </div>
          <div class="hr hide"></div>
          <!-- coupon -->
          <div class="coupon-main ui-switchable-panel ui-switchable-panel-selected" style="display: block;">
            <div class="coupon-optimal ml20" id="bestCouponDiv" style="display: none;">
              <label clstag="pageclick|keycount|xunizichan__2016031015|13">
                <input id="bestCouponCheck" onclick="getBastCouponList(this)" type="checkbox">
                <span id="bestCoupon">使用最优组合</span> </label>
            </div>
            <div class="hr" id="couponsplit" style="display: none;"></div>
            <div class="coupon-cont">
              <div class="coupon-tab ml20">
                <ul>
                  <li class="coupon-tab-item curr" id="skucoupontit" clstag="pageclick|keycount|xunizichan__2016031015|6">商品优惠券</li>
                  <li class="coupon-tab-item" id="freightcoupontit" clstag="pageclick|keycount|xunizichan__2016031015|7">运费券</li>
                  <li class="coupon-tab-item" id="changecoupontit" clstag="pageclick|keycount|xunizichan__2016031015|8">优惠码兑换</li>
                </ul>
              </div>
              <div class="coupon-tab-panel-main ml20" id="coupons"> 
                <!--coupon tab-->
                
            
                <div class="coupon-tab-panel ui-switchable-panel-selected" style="display: block;">
                  <div class="coupon-scrollbar">
                    <div class="ui-scrollbar-main">
                      <div class="coupon-scroll"> 
                        <!--可用优惠券 -->
                        <div class="coupon-enable" style="height: 0px;">
                          <ul>
                            <!-- 东券 -->
                          </ul>
                        </div>
                        <div class="hr"></div>
                        <!--不可用优惠券 -->
                        <div class="coupon-disable">
                          <ul>
                            <ul>
                            </ul>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--运费券-->
                <div class="coupon-tab-panel" style="display: none;">
                  <div class="coupon-freefreight"> 
                    <!--end-->
                    <div class="ui-scrollbar-main">
                      <div class="coupon-scroll"> 
                        <!--可用运费券-->
                        <div class="coupon-enable">
                          <ul>
                          </ul>
                        </div>
                        <div class="hr"></div>
                        <!--不可用运费券-->
                        <div class="coupon-disable">
                          <ul>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--兑换优惠券 tab -->
                <div class="coupon-tab-panel" style="display: none;">
                  <div class="coupon-add" id="entityPanel">
                    <div> <span class="label">请输入优惠券兑换码：</span> </div>
                    <div class="form virtual-add-input">
                      <input id="couponKeyPressFirst" class="itxt" maxlength="4" type="text">
                      <div class="c-gap"></div>
                      <input id="couponKeyPressSecond" class="itxt" maxlength="4" type="text">
                      <div class="c-gap"></div>
                      <input id="couponKeyPressThrid" class="itxt" maxlength="4" type="text">
                      <div class="c-gap"></div>
                      <input id="couponKeyPressFourth" class="itxt" maxlength="4" type="text">
                      <input class="btn-add btn-4" id="entityCouponId" onclick="exchangeVertualCoupons(this);" value="兑换" type="button">
                      <span class="succ-msg" style="display: none">添加成功，此优惠券目前可用</span> <span class="error-msg" style="display:none;">请输入密码</span> </div>
                  </div>
                </div>
                <script id="tooltip-box04" type="text/temp">
  <div class="tooltip-goods">
    <div class="coupon-goods">
      <div class="coupon-tit">
        
      </div>
      <div class="coupon-con" id="v-goods">
         <div class="loading">
            <i></i>加载中...
        </div>
      </div>
    </div>
  </div>    
</script></div>
            </div>
          </div>
          <!-- giftcard -->
          <div class="giftcard-main ui-switchable-panel" id="gift" style="display: none;"> </div>
          <!-- jdbean-->
          <div class="jdbean-main ui-switchable-panel" style="display: none;">
            <div class="beans-2015 ml20" id="jdBeans-new"> </div>
          </div>
          <!-- balance -->
          <div class="balance-main ui-switchable-panel" style="display: none;">
            <div class="form v-balance ml20" id="jdBalance" clstag="pageclick|keycount|xunizichan__2016031015|12">
              <input id="selectOrderBalance" class="jdcheckbox" value="" onclick="useOrCancelBalance(this)" disabled="disabled" type="checkbox">
              <label id="canUsedBalanceId" for="selectOrderBalance">&nbsp;使用余额（账户当前余额：<span class="ftx-01">0.00</span>元）</label>
              <div class="ftx01 safeLpkPart hide" id="safeBalancePart"> 为保障您的账户资金安全，余额暂不可用，请先 <a target="_blank" href="https://safe.jd.com/user/paymentpassword/safetyCenter.action">[开启支付密码]</a> </div>
            </div>
          </div>
          <div class="virtual-usedcont"> <span class="virtual-usedcont-price">金额抵用<em id="total">￥0.00</em></span>
            <ul>
              <li id="couponTotalShow" style="display: none;">使用优惠券<em></em>张，优惠<em></em>元 </li>
              <li id="freeFreightShow" style="display: none;">| 使用运费券<em></em>张，抵用运费<em></em>元 </li>
              <li id="giftCardShow" style="display: none;">| 使用尚商E卡<em></em>张，抵用<em></em>元</li>
              <li id="jdBeanShow" style="display: none;">| 使用京豆，抵用<em></em>元</li>
              <li> </li>
              <li id="balanceShow" style="display: none;">| 使用余额，抵用<em></em>元</li>
            </ul>
          </div>
        </div>
      </div>
      
      <!--/  /widget/order-coupon/order-coupon.tpl --> 
    </div>
    <!-- </div> --> 
    <!-- </div> --> 
    <!--  /widget/order-summary/order-summary.tpl -->
    <div class="order-summary"> 
      <!--  预售 计算支付展现方式 begin -->
      <div class="statistic fr">
        <div class="list"> <span><em class="ftx-01">2</em> 件商品，总商品金额：</span> <em class="price" id="warePriceId" v="136">￥136.00</em> </div>
        <div class="list"> <span>返现：</span> <em class="price" id="cachBackId" v="6.8"> -￥6.80</em> </div>
        <div class="list"> <span>运费：</span> <em class="price" id="freightPriceId"><i class="freight-icon"></i><font color="#000000"> ￥0.00</font></em> </div>
        <div class="list" style="display:block;"> <span>服务费：</span> <em class="price" id="serviceFeeId"><font color="#000000"> ￥0.00</font></em> </div>
        <div class="list" style="display:block;"> <span>退换无忧：</span> <em class="price" id="buyerFreightInsuranceId"><font color="#000000"> ￥0.00</font></em> </div>
        <div class="list" id="showCouponPrice" style="display:none;">
          <input id="couponPriceNum" value="0" type="hidden">
          <input id="couponPricehidden" value="0" type="hidden">
          <span>商品优惠：</span><em class="price" id="couponPriceId" style="display: none;">-￥0.00</em> </div>
        <div class="list" id="showFreeFreight" style="display:none;">
          <input id="freeFreightPriceNum" value="0" type="hidden">
          <input id="freeFreightPricehidden" value="0" type="hidden">
          <span>运费优惠：</span><em class="price" id="freeFreightPriceId">-￥0.00</em> </div>
        <div class="list" id="showGiftCardPrice" style="display:none;">
          <input id="giftCardPricehidden" value="0" type="hidden">
          <input id="giftCardPriceNum" value="0" type="hidden">
          <span> 礼品卡： </span><em class="price" id="giftCardPriceId">-￥0.00</em> </div>
        <div class="list" id="showUsedJdBean" style="display:none;">
          <input id="jdBeanexChange" value="0.00" type="hidden">
          <span>京豆：</span><em class="price" id="usedJdBeanId">-￥0.00</em> </div>
        <div class="list" id="showUsedOrderBalance" style="display:none;">
          <input id="useBalanceShowDiscount" value="0.00" type="hidden">
          <span>余额：</span><em class="price" id="usedBalanceId">-￥0.00</em> </div>
        <div class="list" id="showPeriodFee" style="display:none;"> <span>分期手续费(由分期银行收取)：</span><em class="price" id="periodFee">￥0.00</em> </div>
      </div>
      <div class="clr"></div>
    </div>
    <!--/ /widget/order-summary/order-summary.tpl --> 
    <!-- 运费弹窗显示 -->
    <div id="tooltip-box06" class="hide">
      <div class="summary-freight-box-new">
        <div class="sfb-tit"> <span>店铺运费明细</span> <span class="ml5 ftx-03" id="frightDetail"></span> </div>
        <div class="sfb-con"> 
          <!-- 只包含延保商品的商家不显示 -->
          
          <div class="sfb-item">
            <div class="sfb-item-tit"> <span class="vendor_name_freight" id="189934">闺觅旗舰店</span> </div>
            <!-- begin 运费明细块 -->
            <div class="sfb-item-info"> <span class="hide" style="display: none;">基础运费：<b class="ftx-01 base-freight"></b></span> <span>免运费<b class="ftx-01 free-freight" freightbyvenderid="189934" popjdshipment="false"></b></span> </div>
            <div class="sfb-item-goods">
              <div class="ui-switchable-body">
                <div class="ui-switchable-panel-main">
                  <div class="ui-switchable-panel">
                    <ul class="sfb-goods-list">
                      <li id="12933741563" class="sfb-goods-item"> <a href="#none" title="闺觅  夏天套装女潮两件套2017夏装新款韩版修身气质短袖时尚雪纺七分裤 粉色-送项链 M建议95-105斤"><img src="/images/593433c6N08325196.jpg" alt="" width="50" height="50"></a> </li>
                      <li id="12487798201" class="sfb-goods-item"> <a href="#none" title="闺觅 夏天套装女潮两件套2017夏装新款韩版修身气质短袖时尚雪纺七分裤 粉色-送项链 L"><img src="/images/59171b14Ndc6df036_002.jpg" alt="" width="50" height="50"></a> </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="sfb-ui-switchable-page"> <a href="javascript:void(0)" class="sfb-prev">&lt;</a> <a href="javascript:void(0)" class="sfb-next">&gt;</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 运费弹窗结束-->
    <div id="tooltip-box09" class="hide">
      <div class="plus-box-cont">
        <div class="pbox-tit"> <strong class="fl"><em class="ftx-01" id="totalNum">0</em>件商品有PLUS专享价</strong> <span class="ml5 ftx-03 fr">可省<em class="ml5 ftx-01" id="totalPricetip">￥0</em></span> </div>
        <div class="pbox-con" id="plusProducts">
          <ul>
          </ul>
        </div>
      </div>
    </div>
    <!--  /widget/checkout-floatbar/checkout-floatbar.tpl -->
    <div class="trade-foot">
      <div id="plusInfoByFreight" class="hide"></div>
      <div id="plusInfo" class="hide"></div>
      <div class="trade-foot-detail-com">
        <div class="fc-price-info"> <span class="price-tit">应付总额：</span> <span class="price-num" id="sumPayPriceId">￥129.20</span> </div>
        <div class="fc-baitiao-info" style="display: none;"> <span>白条支付：<em>不分期</em>（不使用优惠）<i class="bt-edit-icon" onclick="javascript:btDetail();" clstag="pageclick|keycount|PaymentLead__2016030411|5"></i></span> </div>
        <div class="giftbuy-info">
          <label class="noShowMoney hide" id="giftBuyHidePriceDiv">
            <input id="giftBuyHidePrice" checked="checked" type="checkbox">
            包装内不显示礼品价格 </label>
        </div>
        <div class="fc-consignee-info"> <span class="mr20" id="sendAddr">寄送至： 广东 广州市 天河区   黄村青云里1巷5号</span> <span id="sendMobile">收货人：柳小龙 150****4784</span> </div>
      </div>
      <!-- 支付密码 -->
      <div class="pay-pwd mt10 hide" id="paypasswordPanel" style="display: none;">
        <div id="payPassword_container" class="alieditContainer clearfix" data-busy="0">
          <label for="i_payPassword" class="i-block">支付密码：</label>
          <div class="i-block">
            <div class="i-block six-password">
              <input class="i-text sixDigitPassword" id="txt_paypassword" autocomplete="off" required="required" value="" name="payPassword_rsainput" data-role="sixDigitPassword" tabindex="" maxlength="6" minlength="6" aria-required="true" onchange="clearError()" type="password">
              <div tabindex="0" class="sixDigitPassword-box"> <i><b></b></i> <i><b></b></i> <i><b></b></i> <i><b></b></i> <i><b></b></i> <i><b></b></i> <span id="cardwrap" data-role="cardwrap"></span> </div>
            </div>
            <span class="forgot-password"> <a target="_blank" href="https://safe.jd.com/user/paymentpassword/getBackPassword.action"> 忘记密码？ </a> </span> </div>
        </div>
        <div id="no-pwd-error" class="pay-pwd-error hide">
          <label class="error-msg" for="">请输入6位数字密码</label>
        </div>
        <div id="pwd-error" class="pay-pwd-error hide" style="margin-right:16px;">
          <label class="error-msg" for=""></label>
        </div>
        <div class="payment-bt-tips hide"> <span class="bt-tips-cont">结算金额变动，请重新选择白条分期以及白条优惠</span><i class="bt-tips-close" onclick="closebtErrorTip();">×</i> </div>
      </div>
      <!-- 预售 --> 
      
      <!---->
      <div class="pay-pwd" id="paypasswordPanel" style="display: none">
        <div class="pay-pwd-cont"> <span class="label"> 支付密码 </span>
          <input class="itxt" id="txt_paypassword" type="password">
          <span class="forgot-password"> <a target="_blank" href="http://safe.jd.com/user/paymentpassword/getBackPassword.action"> 忘记支付密码？ </a> </span> </div>
      </div>
      <!-- 支付密码 --> 
      
      <!--港澳售项目 -->
      <div class="hkmtbuy-con hide" id="hkmtbuy-area">
        <div class="hkmtbuy-chk">
          <label for="">
            <input checked="checked" id="hkmtbuy" name="" type="checkbox">
            已阅读并同意</label>
          <a href="http://help.jd.com/user/issue/266-1691.html" class="ftx05" target="_blank">《售全球服务协议》</a> </div>
      </div>
      
      <!-- 全球售、台湾售 -->
      <div class="hkmtbuy-con hide" id="overseamtbuy-area">
        <div class="hkmtbuy-chk">
          <label for="">
            <input checked="checked" id="overseamtbuy" name="" type="checkbox">
            已阅读并同意</label>
          <a href="" class="ftx05" onclick="javascript:return openOverseaAgree();">《售全球服务协议》</a> </div>
      </div>
      <div id="checkout-floatbar" class="group">
        <div class="ui-ceilinglamp checkout-buttons">
          <div class="sticky-placeholder hide" style="display: none;"> </div>
          <div class="sticky-wrap">
            <div class="inner">
              <button type="submit" class="checkout-submit" id="order-submit" onclick="javascript:submit_Order();" clstag="pageclick|keycount|trade_201602181|25"> 提交订单<b></b> </button>
              <span id="checkCodeDiv"></span>
              <div class="checkout-submit-tip" id="changeAreaAndPrice" style="display: none;"> 由于价格可能发生变化，请核对后再提交订单 </div>
              <!--div style="display:none" id="factoryShipCodShowDivBottom" class="dispatching">
                              部分商品货到付款方式：先由尚商配送“提货单”并收款，然后厂商发货。
                            </div--> 
            </div>
            <span id="submit_message" style="display:none" class="submit-error"></span>
            <div class="submit-check-info" id="submit_check_info_message" style="display:none"></div>
          </div>
        </div>
      </div>
    </div>
    <!--/ /widget/checkout-floatbar/checkout-floatbar.tpl --> 
    
    <!--  /widget/backpanel/backpanel.tpl -->
    <div id="backpanel">
      <div id="backpanel-inner" class="hide" style="right: 256.5px;">
        <div class="bp-item bp-item-survey"> <a href="http://surveys.jd.com/index.php?r=survey/index/sid/416587/lang/zh-Hans" class="survey" target="_blank">我要反馈</a> </div>
        <div class="bp-item bp-item-backtop" data-top="0"> <a href="#none" class="backtop" target="_self">返回顶部</a> </div>
      </div>
    </div>
    <!--/ /widget/backpanel/backpanel.tpl --> 
    
  </div>
</div>

<!-- /main --> 

<!--  /widget/footer/footer.tpl --> 
<!-- footer -->
<div id="service-2014">
  <div class="slogen"> <span class="item fore1"> <i></i><b>多</b>品类齐全，轻松购物 </span> <span class="item fore2"> <i></i><b>快</b>多仓直发，极速配送 </span> <span class="item fore3"> <i></i><b>好</b>正品行货，精致服务 </span> <span class="item fore4"> <i></i><b>省</b>天天低价，畅选无忧 </span> </div>
  <div class="w">
    <dl class="fore1">
      <dt>购物指南</dt>
      <dd>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-29.html">购物流程</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-151.html">会员介绍</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-297.html">生活旅行/团购</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue.html">常见问题</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-136.html">大家电</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/index.html">联系客服</a></div>
      </dd>
    </dl>
    <dl class="fore2">
      <dt>配送方式</dt>
      <dd>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-81-100.html">上门自提</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-81.html">211限时达</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/103-983.html">配送服务查询</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/109-188.html">配送费收取标准</a></div>
        <div><a target="_blank" href="https://en.jd.com/chinese.html">海外配送</a></div>
      </dd>
    </dl>
    <dl class="fore3">
      <dt>支付方式</dt>
      <dd>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-172.html">货到付款</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-173.html">在线支付</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-176.html">分期付款</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-174.html">邮局汇款</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-175.html">公司转账</a></div>
      </dd>
    </dl>
    <dl class="fore4">
      <dt>售后服务</dt>
      <dd>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/321-981.html">售后政策</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-132.html">价格保护</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/130-978.html">退款说明</a></div>
        <div><a rel="nofollow" target="_blank" href="https://myjd.jd.com/repair/repairs.action">返修/退换货</a></div>
        <div><a rel="nofollow" target="_blank" href="https://help.jd.com/user/issue/list-50.html">取消订单</a></div>
      </dd>
    </dl>
    <dl class="fore5">
      <dt>特色服务</dt>
      <dd>
        <div><a target="_blank" href="https://help.jd.com/user/issue/list-133.html">夺宝岛</a></div>
        <div><a target="_blank" href="https://help.jd.com/user/issue/list-134.html">DIY装机</a></div>
        <div><a rel="nofollow" target="_blank" href="https://fuwu.jd.com/">延保服务</a></div>
        <div><a rel="nofollow" target="_blank" href="https://o.jd.com/market/index.action">尚商E卡</a></div>
        <div><a rel="nofollow" target="_blank" href="https://mobile.jd.com/">尚商通信</a></div>
        <div><a rel="nofollow" target="_blank" href="https://s.jd.com/">尚商JD+</a></div>
      </dd>
    </dl>
    <span class="clr"></span> </div>
</div>
<script type="text/javascript" rel="stylesheet" src="js/a_002" source="widget"></script> 
<script type="text/javascript" rel="stylesheet" src="js/paypwd.js"></script> 
<script>
    $("#consignee_id").val('138195824');
    $("#hideAreaIds").val('19-1601-3633-0');
</script> 
<!-- 不支持自提商品列表隐藏域  --> 
<script id="noSupSkus_hideDiv" type="text/temp">&nbsp;</script> 
<!-- 港澳售项目 --> 
<script id="hkmt-box01" type="text/temp">
<div class="hkmt-thickbox-warn">
	<div class="tip-box icon-box-new">
		<span class="warn-icon-yellow m-icon"></span>
		<div class="item-fore">
			<span>订单中部分商品不支持对当前地址的配送<br>请返回购物车修改</span>
		</div>
	</div>
	<div class="op-btns ac mt30 mb30">
		<a href="//cart.jd.com" class="btn-1">返回购物车</a>
		<a href="#none" class="btn-9 ml10" onclick="javascript:closeDialog();">取消</a>
	</div>
</div>
</script> 
<script id="hkmt-box02" type="text/temp">
<div class="hkmt-thickbox-confirm">
	<div class="tip-box icon-box-new">
		<span class="confirm-icon m-icon"></span>
		<div class="item-fore">
			<h3>继续提交即视为同意协议，提交订单？</h3>
		</div>
	</div>
	<div class="agreement-main agreement-off">
		<span class="agreement-tit">《售全球服务协议》</span>
		<p class="agreement-cont">本服务协议由您与北京尚商叁佰陆拾度电子商务有限公司共同缔结，本协议具有合同效力。
<br>本协议中协议双方合称协议方，北京尚商叁佰陆拾度电子商务有限公司在本协议中亦称为尚商。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由尚商负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指尚商依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
<br>本协议中协议双方合称协议方，北京尚商叁佰陆拾度电子商务有限公司在本协议中亦称为尚商。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由尚商负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指尚商依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
<br>本协议中协议双方合称协议方，北京尚商叁佰陆拾度电子商务有限公司在本协议中亦称为尚商。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由尚商负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指尚商依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
		</p>
	</div>
	<div class="agreement-showall-outter pt10 pb10 ac"><a href="#none" class="agreement-showall">查看更多<i></i></a></div>
	<div class="op-btns ac mt20">
		<a href="#none" onclick="javascript:parent.continue_SubmitOrder(0);" class="btn-1">继续提交订单</a>
		<a href="#none" class="btn-9 ml10" onclick="javascript:closeDialog();">取消</a>
	</div>
</div>
</script> 
<!-- 海外售 -->
<style>
.oversea-table{border:solid #b3b3b3;color:#000;border-width:1px 0 0 1px}
.oversea-table th,.oversea-table td{border-right:1px solid #d0d0d0;border-bottom:1px solid #b3b3b3;padding:5px;height:25px}
</style>
<script id="overseamt-box01" type="text/temp">
	<div class="hkmt-thickbox-confirm">
		<div class="tip-box icon-box-new">
			<span class="confirm-icon m-icon"></span>
			<div class="item-fore">
				<h3>继续提交即视为同意协议，提交订单？</h3>
			</div>
		</div>
		<div class="agreement-main agreement-off">
			<span class="agreement-tit">《售全球服务协议》</span>
			<p class="agreement-cont">
				<h3>一、协议内容与效力</h3>
				
<p>本服务协议由您与广州晶东贸易有限公司共同缔结，本协议具有合同效力。本协议中协议双方合称协议方，广州晶东贸易有限公司在本协议中亦称为尚商。 
</p>
				
<p>您在JD.COM购买页面上勾选《售全球服务协议》前，请您仔细阅读本协议的全部内容。如果您对本协议的条款有疑问的，请通过尚商客服渠道进行询
问，尚商将向您解释条款内容。如果您不同意本协议的任意内容，或者无法准确理解尚商对条款的解释，请不要勾选《售全球服务协议》和进行后续操作。您通过网
络页面点击勾选、确认或以其他方式选择接受本协议，即表示您同意接受本协议的全部内容。 </p>
				
<p>您勾选该服务时，相应服务费用将向您进行相应展示，您勾选该服务，即视为您接受该服务的相应价格。服务商有权不定时修订该价格，服务商修改价格后，
如您继续选择《售全球服务协议》，视为您接受修改后的价格。 </p>
				
<p>如您不同意相关变更，应停止使用本服务。经修订的协议及规则一经公布后，立即自动生效，成为本协议的有效组成部分。登陆或继续使用“本服务”将表示
您接受经修订的协议。如果您不同意本协议之内容，或者您所属的国家或地方排除本协议内容之一部或全部时，请您立即停止使用本服务。 </p>
				
<p>您同意于使用本服务时，您全部之意思表示，均以电子文件作为表示方法，如您于各项服务与功能等页面点选同意或确认等功能键时，即视为您正式之意思表
示。 </p>
				
<p>本协议是尚商为向您提供售全球服务而与您特别订立的协议。本协议的生效不代表您与尚商订立的其他协议失去效力。除非另有特别约定，您与尚商订立的包
括《用户注册协议》在内的任何协议均继续有效，您仍然应当遵守各协议的相关约定。各协议之间约定存在冲突的，以特别约定优先于一般约定，后订立的约定优先
于先订立的约定为原则进行处理。</p>
				<h3>二、服务及相关约定</h3>
				<p>1. 尚商向您提供售全球服务，服务模式为：</p>
				<p>（1）如您在尚商商城提交订单时填写港澳、台湾、海外收货地址，则系统默认使用港澳、台湾、海外直运。 </p>
				<p>（2）合作承运商按照您的收货地址信息安排运输并配送到您指定的港澳、台湾、海外收货地址。</p>
				<p>2. 在您选择直运服务过程中，您承诺遵守以下约定： </p>
				<p>（1） 
您同意一旦使用本服务即同意您所授权尚商的合作承运商有权知晓及使用您的相关交易信息，包括收件人姓名，身份证件号码及联系方式等。 </p>
				
<p>（2）您同意在领取包裹时需确认外包装完好后方进行签收，您签收包裹即表示包裹外包装完好；您同意并在此确认，如您收货时包裹外包装完好，则直运服
务即符合本协议相应约定。签收后发生的包裹损坏、毁损、遗失等情况尚商不承担相关责任。</p>
				<h3>三、用户行为规则</h3>
				
<p>用户通过尚商账户操作的各种行为应符合法律法规规定、平台规则规定及注册协议约定，当出现（包含但不限于）以下行为时，视为用户自愿同意接受尚商或
商家进行权益降级，扣除京豆，冻结或关闭尚商账户，取消订单，不再提供服务等操作，且同意尚商或商家不进行任何赔偿或补偿。如给尚商或相关方造成损失，用
户愿意承担相应责任：</p>
				<p>（1） 注册资料内容含虚假信息；</p>
				<p>（2） 虚假交易、虚假好评,发布无根据的恶意评价；</p>
				<p>（3） 购买正品商品，退货时退回非尚商平台对应订单中销售的商品、以次充好、以假乱真等行为；</p>
				<p>（4） 无故、无正常理由拒收签收订单货物的行为；</p>
				<p>（5） 符合非正常订单中的行为；</p>
				<h3>四、下单</h3>
				<p>1. 订购的商品价格以您下订单时尚商网上价格为准。</p>
				<p>2. 请您清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，尚商将不承担责任：</p>
				<p>A. 客户提供错误信息和不详细的地址； </p>
				<p>B. 货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果； </p>
				<p>C. 不可抗力，例如：自然灾害、交通戒严、突发战争等。</p>
				<h3>五、配送</h3>
				<p>1、费用</p>
				<p>售全球运费将按照商品重量收取（限重30kg及以上或单边长度大于等于55厘米不销售），具体订单的运费以订单结算页公示金额为准。 
如对运费收取有任何异议，请联系尚商客服进行咨询沟通。</p>
				
<p>尚商不承担目的国的进口关税，尚商商城销售的商品价格均未包含进口税金。如遇海关查验、查扣等情景，请您根据要求配合缴纳税金，否则尚商无法保证配
送成功。</p>
				<p>2 
在正常派件失败后，会联系您协调再次派送的时间，并承诺免费派送3次；如若3次派送后仍无法签收的，则需要您主动联系，前往承运商在收件地附近的派送点进
行自提或联系承运商进行再次派送，并承担因此而产生的额外配送费用；从您的包裹三次派送失败后承运商将为您在派送点免费保管包裹15个自然日。逾期如您仍
未到派送点自提或联系承运商进行再次派送，则尚商有权按照当地的法律、行业惯例自行处理，不再对该包裹的存储，灭失等风险承担责任。 
（注：根据承运商提供的实际承运方式的不同，部分承运方式在正常派件失败后，则需要您主动联系，前往包裹被存放的邮局进行自提；邮局保管包裹之时间与费用
视您当地邮局政策所定，尚商将不再另行通知于您；逾期行为之处理办法同上文所述。）</p>
				<p>3. 
因非承运商原因而需要从港澳、台湾、海外退回包裹时，您需要自行联系承运商将包裹退回中国大陆境内。该退运服务的收费由您和承运商自行结算。</p>
				<h3>六、争议解决</h3>
				
<p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律（不包括香港、澳门、台湾法律）予以处理。如发生任何争议，双方应尽力友
好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。 </p>
				<h3>七、售后服务总则（只适用于港澳、台湾、海外地区）</h3>
				<p>尚商全球售商品支持订单完成后7天内退货、补发，不支持换货和维修。</p>
				<table cellspacing="0" cellpadding="0" class="oversea-table">
					<tbody>
						<tr>
		                    <th><b>退货类别</b></th>
		                    <th><b>具体描述</b></th>
		                    <th><b>申请时间期限</b></th>
		                    <th><b>是否收取返回运费</b></th>
		                    <th><b>退回方式</b></th>
		                    <th><b>退回金额</b></th>
		                    <th><b>退款方式</b></th>
		                    <th><b>备注</b></th>
		                </tr>
		                <tr>
		                    <td>到货物流损、缺件或商品描述与网站不符等尚商原因</td>
		                    
<td>物流损指在运输过程中造成的损坏、漏液、破碎、性能故障，于收到货后24小时内反馈，经售后人员核查情况属实。缺件指商品原装配件缺失。
</td>
		                    <td>收货后（且订单状态为完成）7天内申请售后退货</td>
		                    <td>否</td>
		                    <td>客户寄回</td>
		                    <td>全额（包括退回运费）</td>
		                    <td>退至账户余额</td>
		                    <td>尚商审核期间可能需要您提供实物照片、视频等，以便售后人员快速做出判断并及时处理。</td>
		                </tr>
		                <tr>
		                    <td>不支持7天无理由退货</td>
		                    <td>非尚商原因造成的，不支持顾客7天无理由退货</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                </tr>
					</tbody>
				</table>
				<p>说明：</p>
				<p>1. 实际收货日期按照第三方物流平台显示的实际签收日期为准。</p>
				<p>2. 
在商品退货时，需扣除购买该商品时通过评价或晒单所获得的京豆及相应优惠，如账户京豆已使用，则从商品退款金额中相应扣除；有赠品的主商品发生退货时，需
将赠品一并提交退货返回，如赠品未退回，则主商品无法全额退款。</p>
				<p>3. 以下商品不支持“非尚商原因”退货</p>
				<p>（1） 个人定作类商品；</p>
				<p>（2）鲜活易腐类商品；</p>
				<p>（3）在线下载或者您拆封的音像制品，计算机软件等数字化商品； </p>
				<p>（4）交付的报纸期刊类商品；</p>
				<p>（5）其他根据商品性质不适宜退货，经您在购买时确认不宜退货的商品。</p>
			</p>
		</div>
		<div class="agreement-showall-outter pt10 pb10 ac"><a href="#none" 
class="agreement-showall">查看更多<i></i></a></div>
		<div class="op-btns ac mt20">
			<a href="#none" onclick="javascript:parent.continue_SubmitOrder(1);" 
class="btn-1">继续提交订单</a>
			<a href="#none" class="btn-9 ml10" 
onclick="javascript:closeDialog();">取消</a>
		</div>
	</div>
</script> 
<!-- 海外、台湾协议 -->
<style>
.overseaConfirmBtn a {
	padding:5px 50px;
	margin-top:15px;
	color:#fff;
	background:#e22;
	border:0;
	font-size:16px;
	font-family:"Microsoft YaHei","Hiragino Sans GB";
}
.hkbuy-dialog p {
	line-height:20px;
	margin:10px;
}
</style>
<script id="overseabuy-box01" type="text/temp">
	<div class="hkbuy-dialog" style="height: 450px; width: 
910px;overflow:auto;margin:10px;">
		<p class="agreement-cont">
			<h3>一、协议内容与效力</h3>
			
<p>本服务协议由您与广州晶东贸易有限公司共同缔结，本协议具有合同效力。本协议中协议双方合称协议方，广州晶东贸易有限公司在本协议中亦称为尚商。 
</p>
			
<p>您在JD.COM购买页面上勾选《售全球服务协议》前，请您仔细阅读本协议的全部内容。如果您对本协议的条款有疑问的，请通过尚商客服渠道进行询
问，尚商将向您解释条款内容。如果您不同意本协议的任意内容，或者无法准确理解尚商对条款的解释，请不要勾选《售全球服务协议》和进行后续操作。您通过网
络页面点击勾选、确认或以其他方式选择接受本协议，即表示您同意接受本协议的全部内容。 </p>
			
<p>您勾选该服务时，相应服务费用将向您进行相应展示，您勾选该服务，即视为您接受该服务的相应价格。服务商有权不定时修订该价格，服务商修改价格后，
如您继续选择《售全球服务协议》，视为您接受修改后的价格。 </p>
			
<p>如您不同意相关变更，应停止使用本服务。经修订的协议及规则一经公布后，立即自动生效，成为本协议的有效组成部分。登陆或继续使用“本服务”将表示
您接受经修订的协议。如果您不同意本协议之内容，或者您所属的国家或地方排除本协议内容之一部或全部时，请您立即停止使用本服务。 </p>
			
<p>您同意于使用本服务时，您全部之意思表示，均以电子文件作为表示方法，如您于各项服务与功能等页面点选同意或确认等功能键时，即视为您正式之意思表
示。 </p>
			
<p>本协议是尚商为向您提供售全球服务而与您特别订立的协议。本协议的生效不代表您与尚商订立的其他协议失去效力。除非另有特别约定，您与尚商订立的包
括《用户注册协议》在内的任何协议均继续有效，您仍然应当遵守各协议的相关约定。各协议之间约定存在冲突的，以特别约定优先于一般约定，后订立的约定优先
于先订立的约定为原则进行处理。</p>
			<br/>
			<h3>二、服务及相关约定</h3>
			<p>1. 尚商向您提供售全球服务，服务模式为：</p>
			<p>（1）如您在尚商商城提交订单时填写港澳、台湾、海外收货地址，则系统默认使用港澳、台湾、海外直运。 </p>
			<p>（2）合作承运商按照您的收货地址信息安排运输并配送到您指定的港澳、台湾、海外收货地址。</p>
			<p>2. 在您选择直运服务过程中，您承诺遵守以下约定： </p>
			<p>（1） 您同意一旦使用本服务即同意您所授权尚商的合作承运商有权知晓及使用您的相关交易信息，包括收件人姓名，身份证件号码及联系方式等。
 </p>
			
<p>（2）您同意在领取包裹时需确认外包装完好后方进行签收，您签收包裹即表示包裹外包装完好；您同意并在此确认，如您收货时包裹外包装完好，则直运服
务即符合本协议相应约定。签收后发生的包裹损坏、毁损、遗失等情况尚商不承担相关责任。</p>
			<br/>
			<h3>三、用户行为规则</h3>
			
<p>用户通过尚商账户操作的各种行为应符合法律法规规定、平台规则规定及注册协议约定，当出现（包含但不限于）以下行为时，视为用户自愿同意接受尚商或
商家进行权益降级，扣除京豆，冻结或关闭尚商账户，取消订单，不再提供服务等操作，且同意尚商或商家不进行任何赔偿或补偿。如给尚商或相关方造成损失，用
户愿意承担相应责任：</p>
			<p>（1） 注册资料内容含虚假信息；</p>
			<p>（2） 虚假交易、虚假好评,发布无根据的恶意评价；</p>
			<p>（3） 购买正品商品，退货时退回非尚商平台对应订单中销售的商品、以次充好、以假乱真等行为；</p>
			<p>（4） 无故、无正常理由拒收签收订单货物的行为；</p>
			<p>（5） 符合非正常订单中的行为；</p>
			<br/>
			<h3>四、下单</h3>
			<p>1. 订购的商品价格以您下订单时尚商网上价格为准。</p>
			<p>2. 请您清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，尚商将不承担责任：</p>
			<p>A. 客户提供错误信息和不详细的地址； </p>
			<p>B. 货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果； </p>
			<p>C. 不可抗力，例如：自然灾害、交通戒严、突发战争等。</p>
			<br/>
			<h3>五、配送</h3>
			<p>1、费用</p>
			<p>售全球运费将按照商品重量收取（限重30kg及以上或单边长度大于等于55厘米不销售），具体订单的运费以订单结算页公示金额为准。 
如对运费收取有任何异议，请联系尚商客服进行咨询沟通。</p>
			
<p>尚商不承担目的国的进口关税，尚商商城销售的商品价格均未包含进口税金。如遇海关查验、查扣等情景，请您根据要求配合缴纳税金，否则尚商无法保证配
送成功。</p>
			<p>2 
在正常派件失败后，会联系您协调再次派送的时间，并承诺免费派送3次；如若3次派送后仍无法签收的，则需要您主动联系，前往承运商在收件地附近的派送点进
行自提或联系承运商进行再次派送，并承担因此而产生的额外配送费用；从您的包裹三次派送失败后承运商将为您在派送点免费保管包裹15个自然日。逾期如您仍
未到派送点自提或联系承运商进行再次派送，则尚商有权按照当地的法律、行业惯例自行处理，不再对该包裹的存储，灭失等风险承担责任。 
（注：根据承运商提供的实际承运方式的不同，部分承运方式在正常派件失败后，则需要您主动联系，前往包裹被存放的邮局进行自提；邮局保管包裹之时间与费用
视您当地邮局政策所定，尚商将不再另行通知于您；逾期行为之处理办法同上文所述。）</p>
			<p>3. 
因非承运商原因而需要从港澳、台湾、海外退回包裹时，您需要自行联系承运商将包裹退回中国大陆境内。该退运服务的收费由您和承运商自行结算。</p>
			<br/>
			<h3>六、争议解决</h3>
			
<p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律（不包括香港、澳门、台湾法律）予以处理。如发生任何争议，双方应尽力友
好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。 </p>
			<br/>
			<h3>七、售后服务总则（只适用于港澳、台湾、海外地区）</h3>
			<p>尚商全球售商品支持订单完成后7天内退货、补发，不支持换货和维修。</p>
			<table cellspacing="0" cellpadding="0" class="oversea-table">
				<tbody>
					<tr>
	                    <th><b>退货类别</b></th>
	                    <th><b>具体描述</b></th>
	                    <th><b>申请时间期限</b></th>
	                    <th><b>是否收取返回运费</b></th>
	                    <th><b>退回方式</b></th>
	                    <th><b>退回金额</b></th>
	                    <th><b>退款方式</b></th>
	                    <th><b>备注</b></th>
	                </tr>
	                <tr>
	                    <td>到货物流损、缺件或商品描述与网站不符等尚商原因</td>
	                    
<td>物流损指在运输过程中造成的损坏、漏液、破碎、性能故障，于收到货后24小时内反馈，经售后人员核查情况属实。缺件指商品原装配件缺失。
</td>
	                    <td>收货后（且订单状态为完成）7天内申请售后退货</td>
	                    <td>否</td>
	                    <td>客户寄回</td>
	                    <td>全额（包括退回运费）</td>
	                    <td>退至账户余额</td>
	                    <td>尚商审核期间可能需要您提供实物照片、视频等，以便售后人员快速做出判断并及时处理。</td>
	                </tr>
	                <tr>
	                    <td>不支持7天无理由退货</td>
	                    <td>非尚商原因造成的，不支持顾客7天无理由退货</td>
	                    <td>不 支 持</td>
	                    <td>不 支 持</td>
	                    <td>不 支 持</td>
	                    <td>不 支 持</td>
	                    <td>不 支 持</td>
	                    <td>不 支 持</td>
	                </tr>
				</tbody>
			</table>
			<p>说明：</p>
			<p>1. 实际收货日期按照第三方物流平台显示的实际签收日期为准。</p>
			<p>2. 
在商品退货时，需扣除购买该商品时通过评价或晒单所获得的京豆及相应优惠，如账户京豆已使用，则从商品退款金额中相应扣除；有赠品的主商品发生退货时，需
将赠品一并提交退货返回，如赠品未退回，则主商品无法全额退款。</p>
			<p>3. 以下商品不支持“非尚商原因”退货</p>
			<p>（1） 个人定作类商品；</p>
			<p>（2）鲜活易腐类商品；</p>
			<p>（3）在线下载或者您拆封的音像制品，计算机软件等数字化商品； </p>
			<p>（4）交付的报纸期刊类商品；</p>
			<p>（5）其他根据商品性质不适宜退货，经您在购买时确认不宜退货的商品。</p>
		</p>
	</div>
	<div id="overseabuy-box01-btn" class="op-btns overseaConfirmBtn ac">
		<a href="#none" class="btn-1">同意并继续</a>
	</div>
</script> 
<script id="virtual-box01" type="text/temp">
    <div class="submit-warn-thickbox">
        <div class="tip-box icon-box-new">
            <span class="warn-icon m-icon"></span>
            <div class="item-fore">
                <h3>视频会员商品在实物订单妥投后不支持退货和退款，是否继续付款</h3>
            </div>
        </div>
        <div class="op-btns ac mt20 mb10">
            <a href="#none" 
onclick="javascript:parent.continue_SubmitOrder_for_norefund();closeDialog();"
 class="btn-1">继续支付</a>
            <a href="#none" class="btn-9 ml20" 
onclick="javascript:closeDialog();">取消</a>
        </div>
    </div>
</script> 
<script type="text/javascript">
   function clearError(){
		$(".pay-pwd-error").hide();
	}
	/**
     * 关闭温馨提示
     */
    function closeorderInfotip(){
    	$(".orderInfo-tip").hide();
    }
    
    $('.J_picksite_disable_info').hover(function() {
                    $(this).next('.picksite-nosuport-box').show().css({
                        left: $(this).offset().left - 17,
                        top: $(this).offset().top + 28
                    });
                });
                
                //$('.picksite-nosuport-box').mouseleave(function(event) {
                 //   $(this).hide();
                //});
                $('.picksite-nosuport-cont').mouseleave(function(event) {
                    $('.picksite-nosuport-box').hide();
                });
                
</script>
<div class="w">
  <div id="footer-2014">
    <div class="links"> <a rel="nofollow" target="_blank" href="https://www.jd.com/intro/about.aspx">关于我们</a>|<a rel="nofollow" target="_blank" href="https://www.jd.com/contact/">联系我们</a>|<a rel="nofollow" target="_blank" href="https://www.jd.com/contact/joinin.aspx">商家入驻</a>|<a rel="nofollow" target="_blank" href="https://jzt.jd.com/">营销中心</a>|<a rel="nofollow" target="_blank" href="https://app.jd.com/">手机尚商</a>|<a target="_blank" href="https://club.jd.com/links.aspx">友情链接</a>|<a target="_blank" href="https://media.jd.com/">销售联盟</a>|<a href="https://club.jd.com/" target="_blank">尚商社区</a>|<a href="https://gongyi.jd.com/" target="_blank">尚商公益</a>|<a href="https://en.jd.com/" target="_blank">English Site</a>|<a href="https://en.jd.com/help/question-58.html" target="_blank">Contact Us</a> </div>
    <div class="copyright"><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"><img src="/images/56a0a994Nf1b662dc.png"> 京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="https://img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号&nbsp;&nbsp;|&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号<br>
      <a rel="nofollow" href="https://img30.360buyimg.com/uba/jfs/t1036/328/1487467280/1405104/ea57ab94/5732f60aN53b01d06.jpg" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;<a href="https://misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;违法和不良信息举报电话：4006561155&nbsp;&nbsp;Copyright&nbsp;©&nbsp;2004-2016&nbsp;&nbsp;尚商JD.com&nbsp;版权所有<br>
      尚商旗下网站：<a href="https://www.jdpay.com/" target="_blank">尚商钱包</a> </div>
    <div class="authentication"> <a rel="nofollow" target="_blank" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026"> <img alt="经营性网站备案中心" src="js/54b8871eNa9a7067e.png" width="103" height="32"> </a> 
      <script type="text/JavaScript">function CNNIC_change(eleId){var str= 
document.getElementById(eleId).href;var str1 
=str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); 
document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var 
rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); 
return rnd;}</script> 
      <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1" href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&amp;ct=df&amp;pa=294005"> <img onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站" src="js/54b8872dNe37a9860.png" width="103" height="32" border="true"> </a> <a rel="nofollow" target="_blank" href="http://www.bj.cyberpolice.cn/index.do"> <img alt="网络警察" src="js/56a89b8fNfbaade9a.jpg" width="103" height="32"> </a> <a rel="nofollow" target="_blank" href="https://search.szfw.org/cert/l/CX20120111001803001836"> <img src="/images/54b8875fNad1e0c4c.png" width="103" height="32"> </a> <a target="_blank" href="http://www.12377.cn/"><img src="/images/5698dc03N23f2e3b8.jpg" width="103" height="32"></a> <a target="_blank" href="http://www.12377.cn/node_548446.htm"><img src="/images/5698dc16Nb2ab99df.jpg" width="103" height="32"></a> </div>
  </div>
</div>

<!-- footer end --> 
<script type="text/javascript" src="/js/json2.js"></script> 
<script type="text/javascript" src="/js/payAndShipment.js"></script> 
<script type="text/javascript" src="/js/order_virtual.js"></script> 
<script type="text/javascript" src="/js/order_002.js"></script> 
<script type="text/javascript" src="/js/jdpay.js"></script> 

<!-- 不降级  --> 
<script src="js/td.js"></script>

<!--/ /widget/footer-2015/footer-2015.tpl --> 
<script type="text/javascript">
	//<![CDATA[
	var couponToggle = (function(){
		var obj = $('[data-bind="coupon"]'),
			tObj = obj.find(".item");

		var init = function(){
			tObj.each(function(){
				var that = $(this);
				var toggler = $(this).find(".toggler");
				var toggled = false;

				toggler.bind("click", function(e){
					e.preventDefault();
					toggled = !toggled;

					toggler.parent().parent()[toggled ? "addClass" : 
"removeClass"]("toggle-active");

					that.find(".toggle-wrap")[toggled ? "removeClass" : 
"addClass"]("hide").css("display", toggled ? "block" : "none");
				});
			});
		};

		return {
			init: init
		};
	})();


	var invoiceMore = (function(){
		var expandHolder = $("#invoice-list"),
			expandHandle = $("#invoice-more-btn"),
			item = expandHolder.find(".item-fore");
			expand = false;

		var init = function(){
			expandHandle.bind("click", function(){
				expand = !expand;

				item[expand ? "removeClass" : "addClass"]("hide").css("display", 
expand ? "block" : "none");


				expandHandle.removeClass(expand ? "select-expand" : 
"select-collapse").addClass(expand ? "select-collapse" : 
"select-expand").find("span").html(expand ? "\u6536\u8D77" : 
"\u66F4\u591A\u5E38\u7528\u5730\u5740");

				if(expand) {

				} else {

				}
			});
		};

		return {
			init: init
		};
	})();
	$(function(){
		$("input.textbox").focus(function(){
			$(this).addClass("focus");
		}).blur(function(){
			$(this).removeClass("focus");
		});

		couponToggle.init();

		invoiceMore.init();

		$(".step-action a").bind("click", function(){
			$("#step-3").expose();
		});
	});
	//]]>
	//统计js	
    (function() {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 
'https://wlssl' : 'http://wl') + '.jd.com/wl.js';
		        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();

	
	//防止窗口变换，弹窗错位
	$(window).resize(function(){
           var obj=$("#freightSpan");
           if($("#transport").html()!=null){
	           $("#transport").css({
					position:"absolute",
					top:obj.offset().top+"px",
					left:(obj.offset().left-345)+"px"
	           })
           }
	});
	</script> 

</body>
</html>
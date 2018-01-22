<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>欢迎登录</title>
    <link type="text/css" rel="stylesheet" href="/css/saved_resource.css" source="widget">
    <link type="text/css" rel="stylesheet" href="/css/tinyscrollbar.css">
    <script type="text/javascript" async="" src="/js/s.js"></script>
	<script type="text/javascript" async="" src="/js/wl.dev.js"></script>
	<script type="text/javascript" async="" src="/js/wl.js"></script>
	<script type="text/javascript" src="/js/jquery-1.6.4.js"></script>
    <script type="text/javascript">
     	$(function(){
                window.SysConfig = {
                encryptInfo:  true ,
                rememberMeShowEnable:  false  };
         });
    </script>
    </head>
    <body>
<!-- SDK 登录 -->
<div class="w">
      <div id="logo"> <a href="https://www.jd.com/" clstag="pageclick|keycount|20150112ABD|45">
       <img src="/images/reglogo.png" alt="尚商" width="170" height="60"> </a> <b></b> </div>
      <a href="https://surveys.jd.com/index.php?r=survey/index/sid/568245/lang/zh-Hans" target="_blank" class="q-link"><b></b>登录页面，调查问卷</a> </div>
<div id="content">
      <div class="login-wrap">
    <div class="w">
          <div class="login-form">
        <div class="login-tab login-tab-l"> <a href="javascript:void(0)"  class="checked" style="outline: rgb(109, 109, 109) none 0px;"> 扫码登录</a> </div>
        <div class="login-tab login-tab-r"> <a href="javascript:void(0)"  class="" style="outline: rgb(109, 109, 109) none 0px;">账户登录</a> </div>
        <div class="login-box" style="display: none; visibility: visible;">
              <div class="mt tab-h"> </div>
              <div class="msg-wrap">
            <div class="msg-error hide"><b></b></div>
          </div>
              <div class="mc">
            <div class="form">
                  <form id="formlogin" action="/user/dologin.html" method="post" >
	               <!-- onsubmit="return false;" <input type="hidden" id="sa_token" name="sa_token" value="">
	                <input type="hidden" id="uuid" name="uuid" value="f978d6a3-e364-425b-8ffa-42ada0e43209">
	                <input type="hidden" name="eid" id="eid" value="" class="hide">
	                <input type="hidden" name="fp" id="sessionId" value="01a632d34113c29dfda85c5dbc0fbb70" class="hide">
	                <input type="hidden" name="_t" id="token" value="_ntDPrie" class="hide">
	                <input type="hidden" name="loginType" id="loginType" value="c" class="hide">
	                <input type="hidden" name="pubKey" id="pubKey" value="" class="hide">
	                <input type="hidden" name="TUTFzBLyNN" value="GfUdS"> -->
	                <div class="item item-fore1">
	                      <label for="loginname" class="login-label name-label"></label>
	                      <input id="loginname" type="text" class="itxt" name="loginname" tabindex="1" autocomplete="off" placeholder="邮箱/用户名/已验证手机">
	                      <span class="clear-btn"></span> </div>
	                <div id="entry" class="item item-fore2" style="visibility: visible;">
	                      <label class="login-label pwd-label" for="nloginpwd"></label>
	                      <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" tabindex="2" autocomplete="off" placeholder="密码">
	                      <span class="clear-btn"></span> <span class="capslock" style="display: none;"><b></b>大小写锁定已打开</span> </div>
	                <div id="o-authcode" class="item item-vcode item-fore3  hide ">
	                      <img id="JD_Verification1" class="verify-code" src2="//authcode.jd.com/verify/image?a=1&amp;acid=f978d6a3-e364-425b-8ffa-42ada0e43209&amp;uid=f978d6a3-e364-425b-8ffa-42ada0e43209" onclick="this.src= document.location.protocol +//authcode.jd.com/verify/image?a=1&amp;acid=f978d6a3-e364-425b-8ffa-42ada0e43209&amp;uid=f978d6a3-e364-425b-8ffa-42ada0e43209&amp;yys=&#39;+new Date().getTime();$(&#39;#authcode&#39;).val(&#39;&#39;);"> <a href="javascript:void(0)" onclick="$(&#39;#JD_Verification1&#39;).click();">看不清换一张</a> </div>
	                <div class="item item-fore4">
	                      <div class="safe"> <span> </span> <span class="forget-pw-safe"> <a href="https://passport.jd.com/uc/links?tag=safe" class="" target="_blank" clstag="pageclick|keycount|201607144|3">忘记密码</a> </span> </div>
	                    </div>
	                <div class="item item-fore5">
	                      <div class="login-btn"> <input  class="btn-img btn-entry" type="submit" id="loginsubmit" tabindex="6" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"/>
	                       </div>
	                    </div>
	              </form>
                </div>
          </div>
            </div>
        <div class="qrcode-login" style="display: block; visibility: visible;">
              <div class="mc">
            <div class="qrcode-error-2016" style="left: 0px; display: none;">
                  <div class="qrcode-error-mask"> </div>
                  <p class="err-cont">服务器出错</p>
                  <a href="javascript:void(0)" class="refresh-btn">刷新</a> </div>
            <div class="qrcode-main">
                  <div class="qrcode-img" style="left: 64px;"> <img src="/images/show.png" alt="">
                <div class="qrcode-error02 hide" id="J-qrcoderror" style="display: none;"> <a href="https://passport.jd.com/new/login.aspx?ReturnUrl=https%3A%2F%2Fwww.jd.com%2F#none"> <span class="error-icon"></span>
                  <div class="txt">网络开小差咯<span class="ml10">刷新二维码</span></div>
                  </a> </div>
              </div>
                  <div class="qrcode-help" style="display: none;"></div>
                </div>
            <div class="qrcode-panel">
                  <ul>
                <li class="fore1"> <span>打开</span> <a href="https://passport.jd.com/uc/links?tag=apps" target="_blank" clstag="pageclick|keycount|201607144|9"> <span class="red">手机尚商</span></a> </li>
                <li>扫描二维码</li>
              </ul>
                </div>
            <div class="coagent qr-coagent" id="qrCoagent">
                  <ul>
                <li><b></b><em>免输入</em></li>
                <li><b class="faster"></b><em>更快&nbsp;</em></li>
                <li><b class="more-safe"></b><em>更安全</em></li>
              </ul>
                </div>
          </div>
            </div>
        <div class="coagent" id="kbCoagent">
              <ul>
            <li> <b></b> <a href="javascript:void(0)" onclick="window.location=//qq.jd.com/new/qq/login.aspx&#39;+window.location.search;return false;" clstag="pageclick|keycount|201607144|6" class="pdl"><b class="QQ-icon"></b><span>QQ</span></a> <span class="line">|</span> </li>
            <li> <a href="javascript:void(0)" onclick="window.location=//qq.jd.com/new/wx/login.action&#39;+window.location.search;return false;" clstag="pageclick|keycount|201607144|7" class="pdl"><b class="weixin-icon"></b><span>微信</span></a> </li>
            <li class="extra-r">
                  <div>
                <div class="regist-link"><a href="/user/reg.html" clstag="pageclick|keycount|201607144|8" target="_blank"><b></b>立即注册</a></div>
              </div>
                </li>
          </ul>
            </div>
      </div>
        </div>
    <div class="login-banner" style="background-color: #f63353">
          <div class="w">
        <div id="banner-bg" clstag="pageclick|keycount|20150112ABD|46" class="i-inner" style="background: url(/images/5930de18Nede0029b.jpg) 0px 0px no-repeat;background-color: #f63353"></div>
      </div>
        </div>
  </div>
    </div>
<div class="w">
      <div id="footer-2013">
    <div class="links"> <a rel="nofollow" target="_blank" href="https://www.jd.com/intro/about.aspx"> 关于我们 </a> | <a rel="nofollow" target="_blank" href="https://www.jd.com/contact/"> 联系我们 </a> | <a rel="nofollow" target="_blank" href="https://zhaopin.jd.com/"> 人才招聘 </a> | <a rel="nofollow" target="_blank" href="https://www.jd.com/contact/joinin.aspx"> 商家入驻 </a> | <a rel="nofollow" target="_blank" href="https://www.jd.com/intro/service.aspx"> 广告服务 </a> | <a rel="nofollow" target="_blank" href="https://app.jd.com/"> 手机尚商 </a> | <a target="_blank" href="https://club.jd.com/links.aspx"> 友情链接 </a> | <a target="_blank" href="https://media.jd.com/"> 销售联盟 </a> | <a href="https://club.jd.com/" target="_blank"> 尚商社区 </a> | <a href="https://gongyi.jd.com/" target="_blank"> 尚商公益 </a> | <a target="_blank" href="https://en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a> </div>
    <div class="copyright"> Copyright&nbsp;&#169;&nbsp;2004-2017&nbsp;&nbsp;尚商xxx.com&nbsp;版权所有 </div>
  </div>
    </div>

<script type="text/javascript" src="/js/base.js"></script> 
<script type="text/javascript" src="/js/jsencrypt.min.js"></script> 
<script type="text/javascript" src="/js/login2016.js"></script> 
<script type="text/javascript" src="/js/login.index.2016-1130.js" source="widget"></script> 
<script type="text/javascript">
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 'https://cscssl' : '//csc') + '.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
</script> 
<script src="/js/td.js"></script>
<script type="text/javascript">
    var _jraq = _jraq || [];
    _jraq.push(['account', 'UA-J2011-12']);
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 'https://jrclick' : '//jrclick') + '.jd.com/wl.dev.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
</script> 
<script type="text/javascript" src="/js/jseqf.js"></script> 
<script type="text/javascript">
$(function(){
	   $("#loginsubmit").click(function(){
	       if(checkInput()) {
	           $("#formlogin").action("/user/dologin.html");
	       }else{
	           return false;
	       }

	   });
	   
	function checkInput(){

	        //判断用户名
	        if($("input[name=loginname]").val() == null || $("input[name=loginname]").val() == ""){
	            $("input[name=loginname]").focus();
	            return false;
	        }
	        //判断密码
	        if($("input[name=nloginpwd]").val() == null || $("input[name=nloginpwd]").val() == ""){
	            $("input[name=nloginpwd]").focus();
	            return false;
	        }
	        return true;
	    }

	});
</script>
<!-- SDK 登录 -->

</body>
</html>
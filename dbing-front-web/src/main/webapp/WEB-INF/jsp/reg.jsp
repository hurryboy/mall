<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache,must-revalidate">
<title>个人注册</title>
<link type="text/css" rel="stylesheet" href="/css/reg.css"/>
<script type="text/javascript" async="" src="/js/sdk.js"></script>
<script type="text/javascript" async="" src="/js/script.js"></script>
<script type="text/javascript" async="" src="/js/s.js"></script>
<script type="text/javascript" src="/js/jquery-1.6.4.js"></script>
<link type="text/css" rel="stylesheet" href="/css/tinyscrollbar.css"/>
<link type="text/css" rel="stylesheet" href="/css/saved_resource.css" source="widget"/>
</head>
<body>
<div id="form-header" class="header">
  <div class="logo-con w clearfix"> <a href="https://www.jd.com/" class="logo"><img src="/images/reglogo.png" width="200" height="57" /></a>
    <div class="logo-title">欢迎注册</div>
    <div class="have-account">已有账号？ <a href="/user/login.html">请登录</a></div>
  </div>
</div>
<div class="container w">
  <div class="main clearfix" id="form-main">
    <div class="reg-form fl">
      <form action="/user/doreg.html" id="register-form" method="post">
        <div class="form-item form-item-account" id="form-item-account">
          <label>用　户　名</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;">   </txt>
          <input type="text" id="form-account" name="username" class="field" autocomplete="off" maxlength="20" placeholder=" " default="&lt;i class=&quot;i-def&quot;&gt;&lt;/i&gt;支持中文、字母、数字、“-”“_”的组合，4-20个字符">
          <i class="i-status"></i> </div>
        <div class="input-tip"> <span></span> </div>
        <div class="form-item">
          <label>设 置 密 码</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"> </txt>
          <input type="password" name="password" id="form-pwd" class="field" maxlength="20" placeholder=" " default="&lt;i class=i-def&gt;&lt;/i&gt;建议使用字母、数字和符号两种及以上的组合，6-20个字符">
          <i class="i-status"></i>
          <div class="capslock-tip tips">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div>
          <div class="capslock-tip tips">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div>
        </div>
        <div class="input-tip"> <span></span> </div>
        <div class="form-item">
          <label>确 认 密 码</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;">  </txt>
          <input type="password" name="Repeatpassword" id="form-equalTopwd" class="field" placeholder=" " maxlength="20">
          <i class="i-status"></i>
          <div class="capslock-tip tips">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div>
          <div class="capslock-tip tips">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div>
        </div>
        <div class="input-tip"> <span></span> </div>
        <div class="form-item form-item-account" id="form-item-account">
          <label>电 子 邮 件</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;">   </txt>
          <input type="text" id="form-account" name="email" class="field">
          <i class="i-status"></i> </div>
        <div class="input-tip"> <span></span> </div>
        <div class="item-email-wrap">
          <div class="input-tip"> <span></span> </div>
          <div class="orPhone"><a href="javascript:;">手机验证</a></div>
        </div>
        <div class="item-phone-wrap">
          <div id="country_code_layer">
            <iframe frameborder="0" scrolling="no" style="background-color:transparent; position: absolute; z-index: -1; width: 100%; height: 100%; top: 0; left:0;" src="/saved_resource.html"></iframe>
            <a class="arrow"></a>
            <div class="switchbar"> <a class="ui-switchable-item ui-switchable-selected">热门</a> <a class="ui-switchable-item">亚洲</a> <a class="ui-switchable-item">美洲</a> <a class="ui-switchable-item">欧洲</a> <a class="ui-switchable-item">大洋洲</a> <a class="ui-switchable-item">非洲</a> </div>
              <div id="scrollbar0" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel ui-switchable-panel-selected" style="display: block;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0086">中国 0086</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div id="scrollbar1" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel" style="display: none;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0086">中国 0086</a></li>
                        <li><a href="javascript:void(0)" data-code="0853">中国澳门 0853</a></li>
                        <li><a href="javascript:void(0)" data-code="0971">阿联酋 0971</a></li>
                        <li><a href="javascript:void(0)" data-code="0063">菲律宾 0063</a></li>
                        <li><a href="javascript:void(0)" data-code="0082">韩国 0082</a></li>
                        <li><a href="javascript:void(0)" data-code="0060">马来西亚 0060</a></li>
                        <li><a href="javascript:void(0)" data-code="0081">日本 0081</a></li>
                        <li><a href="javascript:void(0)" data-code="0066">泰国 0066</a></li>
                        <li><a href="javascript:void(0)" data-code="0886">中国台湾 0886</a></li>
                        <li><a href="javascript:void(0)" data-code="0852">中国香港 0852</a></li>
                        <li><a href="javascript:void(0)" data-code="0065">新加坡 0065</a></li>
                        <li><a href="javascript:void(0)" data-code="0091">印度 0091</a></li>
                        <li><a href="javascript:void(0)" data-code="0062">印度尼西亚 0062</a></li>
                        <li><a href="javascript:void(0)" data-code="0084">越南 0084</a></li>
                        <li><a href="javascript:void(0)" data-code="0093">阿富汗 0093</a></li>
                        <li><a href="javascript:void(0)" data-code="0994">阿塞拜疆 0994</a></li>
                        <li><a href="javascript:void(0)" data-code="0973">巴林 0973</a></li>
                        <li><a href="javascript:void(0)" data-code="0880">孟加拉 0880</a></li>
                        <li><a href="javascript:void(0)" data-code="0975">不丹 0975</a></li>
                        <li><a href="javascript:void(0)" data-code="0673">文莱 0673</a></li>
                        <li><a href="javascript:void(0)" data-code="0357">塞浦路斯 0357</a></li>
                        <li><a href="javascript:void(0)" data-code="0850">朝鲜 0850</a></li>
                        <li><a href="javascript:void(0)" data-code="0670">东帝汶 0670</a></li>
                        <li><a href="javascript:void(0)" data-code="0995">格鲁吉亚 0995</a></li>
                        <li><a href="javascript:void(0)" data-code="0098">伊朗 0098</a></li>
                        <li><a href="javascript:void(0)" data-code="0964">伊拉克 0964</a></li>
                        <li><a href="javascript:void(0)" data-code="0962">约旦 0962</a></li>
                        <li><a href="javascript:void(0)" data-code="0855">柬埔寨 0855</a></li>
                        <li><a href="javascript:void(0)" data-code="0965">科威特 0965</a></li>
                        <li><a href="javascript:void(0)" data-code="0856">老挝 0856</a></li>
                        <li><a href="javascript:void(0)" data-code="0961">黎巴嫩 0961</a></li>
                        <li><a href="javascript:void(0)" data-code="0976">蒙古 0976</a></li>
                        <li><a href="javascript:void(0)" data-code="0977">尼泊尔 0977</a></li>
                        <li><a href="javascript:void(0)" data-code="0968">阿曼 0968</a></li>
                        <li><a href="javascript:void(0)" data-code="0092">巴基斯坦 0092</a></li>
                        <li><a href="javascript:void(0)" data-code="0970">巴勒斯坦 0970</a></li>
                        <li><a href="javascript:void(0)" data-code="0974">卡塔尔 0974</a></li>
                        <li><a href="javascript:void(0)" data-code="0966">沙特阿拉伯 0966</a></li>
                        <li><a href="javascript:void(0)" data-code="0094">斯里兰卡 0094</a></li>
                        <li><a href="javascript:void(0)" data-code="0963">叙利亚 0963</a></li>
                        <li><a href="javascript:void(0)" data-code="0374">亚美尼亚 0374</a></li>
                        <li><a href="javascript:void(0)" data-code="0960">马尔代夫 0960</a></li>
                        <li><a href="javascript:void(0)" data-code="0992">塔吉克斯坦 0992</a></li>
                        <li><a href="javascript:void(0)" data-code="0972">以色列 0972</a></li>
                        <li><a href="javascript:void(0)" data-code="0090">土耳其 0090</a></li>
                        <li><a href="javascript:void(0)" data-code="0993">土库曼斯坦 0993</a></li>
                        <li><a href="javascript:void(0)" data-code="0967">也门 0967</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div id="scrollbar2" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel" style="display: none;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0055">巴西 0055</a></li>
                        <li><a href="javascript:void(0)" data-code="0001">加拿大 0001</a></li>
                        <li><a href="javascript:void(0)" data-code="0001">美国 0001</a></li>
                        <li><a href="javascript:void(0)" data-code="0058">委内瑞拉 0058</a></li>
                        <li><a href="javascript:void(0)" data-code="1264">安圭拉 1264</a></li>
                        <li><a href="javascript:void(0)" data-code="0297">阿鲁巴 0297</a></li>
                        <li><a href="javascript:void(0)" data-code="1242">巴哈马 1242</a></li>
                        <li><a href="javascript:void(0)" data-code="1268">巴巴多斯 1268</a></li>
                        <li><a href="javascript:void(0)" data-code="0501">伯利兹 0501</a></li>
                        <li><a href="javascript:void(0)" data-code="1441">百慕大三角 1441</a></li>
                        <li><a href="javascript:void(0)" data-code="1345">开曼群岛 1345</a></li>
                        <li><a href="javascript:void(0)" data-code="0506">哥斯达黎加 0506</a></li>
                        <li><a href="javascript:void(0)" data-code="0053">古巴 0053</a></li>
                        <li><a href="javascript:void(0)" data-code="0503">萨尔瓦多 0503</a></li>
                        <li><a href="javascript:void(0)" data-code="0299">格陵兰 0299</a></li>
                        <li><a href="javascript:void(0)" data-code="1473">格林纳达 1473</a></li>
                        <li><a href="javascript:void(0)" data-code="0590">瓜德罗普 0590</a></li>
                        <li><a href="javascript:void(0)" data-code="0502">危地马拉 0502</a></li>
                        <li><a href="javascript:void(0)" data-code="0509">海地 0509</a></li>
                        <li><a href="javascript:void(0)" data-code="0504">洪都拉斯 0504</a></li>
                        <li><a href="javascript:void(0)" data-code="1876">牙买加 1876</a></li>
                        <li><a href="javascript:void(0)" data-code="0596">马提尼克 0596</a></li>
                        <li><a href="javascript:void(0)" data-code="0052">墨西哥 0052</a></li>
                        <li><a href="javascript:void(0)" data-code="1664">蒙特塞拉特 1664</a></li>
                        <li><a href="javascript:void(0)" data-code="0507">巴拿马 0507</a></li>
                        <li><a href="javascript:void(0)" data-code="1787">波多黎各 1787</a></li>
                        <li><a href="javascript:void(0)" data-code="1758">圣卢西亚 1758</a></li>
                        <li><a href="javascript:void(0)" data-code="1849">多米尼加 1849</a></li>
                        <li><a href="javascript:void(0)" data-code="0505">尼加拉瓜 0505</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div id="scrollbar3" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel" style="display: none;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0049">德国 0049</a></li>
                        <li><a href="javascript:void(0)" data-code="0007">俄罗斯 0007</a></li>
                        <li><a href="javascript:void(0)" data-code="0045">丹麦 0045</a></li>
                        <li><a href="javascript:void(0)" data-code="0033">法国 0033</a></li>
                        <li><a href="javascript:void(0)" data-code="0358">芬兰 0358</a></li>
                        <li><a href="javascript:void(0)" data-code="0031">荷兰 0031</a></li>
                        <li><a href="javascript:void(0)" data-code="0420">捷克 0420</a></li>
                        <li><a href="javascript:void(0)" data-code="0046">瑞典 0046</a></li>
                        <li><a href="javascript:void(0)" data-code="0041">瑞士 0041</a></li>
                        <li><a href="javascript:void(0)" data-code="0034">西班牙 0034</a></li>
                        <li><a href="javascript:void(0)" data-code="0039">意大利 0039</a></li>
                        <li><a href="javascript:void(0)" data-code="0044">英国 0044</a></li>
                        <li><a href="javascript:void(0)" data-code="0355">阿尔巴尼亚 0355</a></li>
                        <li><a href="javascript:void(0)" data-code="0043">奥地利 0043</a></li>
                        <li><a href="javascript:void(0)" data-code="0032">比利时 0032</a></li>
                        <li><a href="javascript:void(0)" data-code="0359">保加利亚 0359</a></li>
                        <li><a href="javascript:void(0)" data-code="0298">法罗群岛 0298</a></li>
                        <li><a href="javascript:void(0)" data-code="0030">希腊 0030</a></li>
                        <li><a href="javascript:void(0)" data-code="0036">匈牙利 0036</a></li>
                        <li><a href="javascript:void(0)" data-code="0354">冰岛 0354</a></li>
                        <li><a href="javascript:void(0)" data-code="0353">爱尔兰 0353</a></li>
                        <li><a href="javascript:void(0)" data-code="0352">卢森堡 0352</a></li>
                        <li><a href="javascript:void(0)" data-code="0356">马耳他 0356</a></li>
                        <li><a href="javascript:void(0)" data-code="0377">摩纳哥 0377</a></li>
                        <li><a href="javascript:void(0)" data-code="0382">黑山 0382</a></li>
                        <li><a href="javascript:void(0)" data-code="0047">挪威 0047</a></li>
                        <li><a href="javascript:void(0)" data-code="0048">波兰 0048</a></li>
                        <li><a href="javascript:void(0)" data-code="0351">葡萄牙 0351</a></li>
                        <li><a href="javascript:void(0)" data-code="0040">罗马尼亚 0040</a></li>
                        <li><a href="javascript:void(0)" data-code="0378">圣马力诺 0378</a></li>
                        <li><a href="javascript:void(0)" data-code="0041">瑞士 0041</a></li>
                        <li><a href="javascript:void(0)" data-code="0376">安道尔 0376</a></li>
                        <li><a href="javascript:void(0)" data-code="4175">列支敦士登 4175</a></li>
                        <li><a href="javascript:void(0)" data-code="0375">白俄罗斯 0375</a></li>
                        <li><a href="javascript:void(0)" data-code="0385">克罗地亚 0385</a></li>
                        <li><a href="javascript:void(0)" data-code="0372">爱沙尼亚 0372</a></li>
                        <li><a href="javascript:void(0)" data-code="0371">拉脱维亚 0371</a></li>
                        <li><a href="javascript:void(0)" data-code="0370">立陶宛 0370</a></li>
                        <li><a href="javascript:void(0)" data-code="0389">马其顿 0389</a></li>
                        <li><a href="javascript:void(0)" data-code="0373">摩尔多瓦 0373</a></li>
                        <li><a href="javascript:void(0)" data-code="0381">塞尔维亚 0381</a></li>
                        <li><a href="javascript:void(0)" data-code="0421">斯洛伐克 0421</a></li>
                        <li><a href="javascript:void(0)" data-code="0380">乌克兰 0380</a></li>
                        <li><a href="javascript:void(0)" data-code="0396">梵蒂冈 0396</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div id="scrollbar4" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel" style="display: none;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0061">澳大利亚 0061</a></li>
                        <li><a href="javascript:void(0)" data-code="0064">新西兰 0064</a></li>
                        <li><a href="javascript:void(0)" data-code="0684">美属萨摩亚 0684</a></li>
                        <li><a href="javascript:void(0)" data-code="0682">库克群岛 0682</a></li>
                        <li><a href="javascript:void(0)" data-code="0679">斐济群岛 0679</a></li>
                        <li><a href="javascript:void(0)" data-code="1671">关岛 1671</a></li>
                        <li><a href="javascript:void(0)" data-code="0674">瑙鲁 0674</a></li>
                        <li><a href="javascript:void(0)" data-code="0683">纽埃岛 0683</a></li>
                        <li><a href="javascript:void(0)" data-code="6723">诺福克岛 6723</a></li>
                        <li><a href="javascript:void(0)" data-code="0677">所罗门群岛 0677</a></li>
                        <li><a href="javascript:void(0)" data-code="0685">萨摩亚 0685</a></li>
                        <li><a href="javascript:void(0)" data-code="0686">基里巴斯 0686</a></li>
                        <li><a href="javascript:void(0)" data-code="0692">马绍尔群岛 0692</a></li>
                        <li><a href="javascript:void(0)" data-code="0680">帕劳 0680</a></li>
                        <li><a href="javascript:void(0)" data-code="0678">瓦努阿图 0678</a></li>
                        <li><a href="javascript:void(0)" data-code="0690">托克劳 0690</a></li>
                        <li><a href="javascript:void(0)" data-code="0676">汤加 0676</a></li>
                        <li><a href="javascript:void(0)" data-code="0688">图瓦卢 0688</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div id="scrollbar5" class="scrollbar_all">
                <div class="scrollbar">
                  <div class="track">
                    <div class="thumb">
                      <div class="end"></div>
                    </div>
                  </div>
                </div>
                <div class="viewport">
                  <div class="overview">
                    <div class="ui-switchable-panel" style="display: none;">
                      <ul>
                        <li><a href="javascript:void(0)" data-code="0244">安哥拉 0244</a></li>
                        <li><a href="javascript:void(0)" data-code="0247">阿森松岛 0247</a></li>
                        <li><a href="javascript:void(0)" data-code="0229">贝宁 0229</a></li>
                        <li><a href="javascript:void(0)" data-code="0267">博茨瓦纳 0267</a></li>
                        <li><a href="javascript:void(0)" data-code="0226">布基纳法索 0226</a></li>
                        <li><a href="javascript:void(0)" data-code="0257">布隆迪 0257</a></li>
                        <li><a href="javascript:void(0)" data-code="0237">喀麦隆 0237</a></li>
                        <li><a href="javascript:void(0)" data-code="0236">中非 0236</a></li>
                        <li><a href="javascript:void(0)" data-code="0225">科特迪瓦 0225</a></li>
                        <li><a href="javascript:void(0)" data-code="0253">吉布提 0253</a></li>
                        <li><a href="javascript:void(0)" data-code="0020">埃及 0020</a></li>
                        <li><a href="javascript:void(0)" data-code="0251">埃塞俄比亚 0251</a></li>
                        <li><a href="javascript:void(0)" data-code="0241">加蓬 0241</a></li>
                        <li><a href="javascript:void(0)" data-code="0220">冈比亚 0220</a></li>
                        <li><a href="javascript:void(0)" data-code="0254">肯尼亚 0254</a></li>
                        <li><a href="javascript:void(0)" data-code="0266">莱索托 0266</a></li>
                        <li><a href="javascript:void(0)" data-code="0231">利比里亚 0231</a></li>
                        <li><a href="javascript:void(0)" data-code="0218">利比亚 0218</a></li>
                        <li><a href="javascript:void(0)" data-code="0261">马达加斯加 0261</a></li>
                        <li><a href="javascript:void(0)" data-code="0223">马里 0223</a></li>
                        <li><a href="javascript:void(0)" data-code="0230">毛里求斯 0230</a></li>
                        <li><a href="javascript:void(0)" data-code="0212">摩洛哥 0212</a></li>
                        <li><a href="javascript:void(0)" data-code="0258">莫桑比克 0258</a></li>
                        <li><a href="javascript:void(0)" data-code="0227">尼日尔 0227</a></li>
                        <li><a href="javascript:void(0)" data-code="0234">尼日利亚 0234</a></li>
                        <li><a href="javascript:void(0)" data-code="0213">阿尔及利亚 0213</a></li>
                        <li><a href="javascript:void(0)" data-code="0262">留尼旺岛 0262</a></li>
                        <li><a href="javascript:void(0)" data-code="0290">圣赫勒拿岛 0290</a></li>
                        <li><a href="javascript:void(0)" data-code="0221">塞内加尔 0221</a></li>
                        <li><a href="javascript:void(0)" data-code="0248">塞舌尔 0248</a></li>
                        <li><a href="javascript:void(0)" data-code="0232">塞拉利昂 0232</a></li>
                        <li><a href="javascript:void(0)" data-code="0291">厄立特里亚 0291</a></li>
                        <li><a href="javascript:void(0)" data-code="0249">苏丹 0249</a></li>
                        <li><a href="javascript:void(0)" data-code="0268">斯威士兰 0268</a></li>
                        <li><a href="javascript:void(0)" data-code="0255">坦桑尼亚 0255</a></li>
                        <li><a href="javascript:void(0)" data-code="0222">毛里塔尼亚 0222</a></li>
                        <li><a href="javascript:void(0)" data-code="0238">佛得角 0238</a></li>
                        <li><a href="javascript:void(0)" data-code="0235">乍得 0235</a></li>
                        <li><a href="javascript:void(0)" data-code="0240">赤道几内亚 0240</a></li>
                        <li><a href="javascript:void(0)" data-code="0233">加纳 0233</a></li>
                        <li><a href="javascript:void(0)" data-code="0224">几内亚 0224</a></li>
                        <li><a href="javascript:void(0)" data-code="0245">几内亚比绍 0245</a></li>
                        <li><a href="javascript:void(0)" data-code="0265">马拉维 0265</a></li>
                        <li><a href="javascript:void(0)" data-code="0264">纳米比亚 0264</a></li>
                        <li><a href="javascript:void(0)" data-code="0250">卢旺达 0250</a></li>
                        <li><a href="javascript:void(0)" data-code="0027">南非 0027</a></li>
                        <li><a href="javascript:void(0)" data-code="0211">南苏丹 0211</a></li>
                        <li><a href="javascript:void(0)" data-code="0252">索马里 0252</a></li>
                        <li><a href="javascript:void(0)" data-code="0228">多哥 0228</a></li>
                        <li><a href="javascript:void(0)" data-code="0216">突尼斯 0216</a></li>
                        <li><a href="javascript:void(0)" data-code="0256">乌干达 0256</a></li>
                        <li><a href="javascript:void(0)" data-code="0269">科摩罗 0269</a></li>
                        <li><a href="javascript:void(0)" data-code="0210">西撒哈拉 0210</a></li>
                        <li><a href="javascript:void(0)" data-code="0260">赞比亚 0260</a></li>
                        <li><a href="javascript:void(0)" data-code="0263">津巴布韦 0263</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ui-switchable-panel" data-switchable-clone="1" style="display: none;">
                <ul>
                  <li><a href="javascript:void(0)" data-code="0086">中国 0086</a></li>
                  <li><a href="javascript:void(0)" data-code="0886">中国台湾 0886</a></li>
                  <li><a href="javascript:void(0)" data-code="0852">中国香港 0852</a></li>
                  <li><a href="javascript:void(0)" data-code="0081">日本 0081</a></li>
                  <li><a href="javascript:void(0)" data-code="0082">韩国 0082</a></li>
                  <li><a href="javascript:void(0)" data-code="0060">马来西亚 0060</a></li>
                  <li><a href="javascript:void(0)" data-code="0001">美国 0001</a></li>
                  <li><a href="javascript:void(0)" data-code="0001">加拿大 0001</a></li>
                  <li><a href="javascript:void(0)" data-code="0065">新加坡 0065</a></li>
                  <li><a href="javascript:void(0)" data-code="0061">澳大利亚 0061</a></li>
                  <li><a href="javascript:void(0)" data-code="0064">新西兰 0064</a></li>
                </ul>
              </div>
            </ul>
          </div>
          <div class="form-item form-item-phone">
            <label class="select-country" id="select-country" country_id="0086">中国 0086<a href="javascript:void(0) " tabindex="-1" class="arrow"><font size="2px">∨</font></a></label>
            <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 7px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"> </txt>
            <input type="text" id="form-phone" name="phone" class="field" placeholder=" " autocomplete="off" maxlength="11" default="&lt;i class=&quot;i-def&quot;&gt;&lt;/i&gt;完成验证后，你可以用该手机登录和找回密码">
            <i class="i-status"></i> </div>
          <div class="input-tip"> <span></span> </div>
        </div>
        <div class="form-item form-item-authcode">
          <label>验　证　码</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"> </txt>
          <input type="text" autocomplete="off" name="authCode" id="authCode" maxlength="6" class="field form-authcode" placeholder=" " default="&lt;i class=&quot;i-def&quot;&gt;&lt;/i&gt;看不清？点击图片更换验证码">
          <img class="img-code" title="换一换" id="imgAuthCode" onclick="this.src= document.location.protocol +//authcode.jd.com/verify/image?a=0&amp;acid=86ad0393-2f25-4435-ba88-61fdf8734b6c&amp;uid=86ad0393-2f25-4435-ba88-61fdf8734b6c&amp;srcid=reg&amp;is=b951a9167ce3c349a1349a7dca9f0a86&amp;yys=&#39;+new Date().getTime()" ver_colorofnoisepoint="#888888" src="/images/image.jpg"> </div>
        <div class="input-tip"> <span></span> </div>
        <div class="form-item form-item-phonecode">
          <label>手机验证码</label>
          <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"> </txt>
          <input type="text" name="mobileCode" maxlength="6" id="phoneCode" class="field phonecode" placeholder=" " autocomplete="off">
          <button id="getPhoneCode" class="btn-phonecode" type="button">获取验证码</button>
          <i class="i-status"></i> </div>
        <div class="input-tip"> <span></span> </div>
        <div class="form-agreen">
          <div>
            <input type="checkbox" name="agreen" checked="">
            阅读并同意<a href="javascript:;" id="protocol">《尚商用户注册协议》</a> <a href="javascript:;" class="blue" id="privacyProtocolTrigger">《隐私政策》</a> </div>
          <div class="input-tip"> <span></span> </div>
        </div>
        <div>
          <input type="submit" class="btn-register" id="btn-register" value="立即注册"/>
        </div>
      </form>
    </div>
    <div id="form-company" class="reg-other">
      <div class="company-reg"> <a href="https://reg.jd.com/reg/company" target="_blank" clstag="pageclick|keycount|201612011|3"> <i class="i-company"></i> <span>企业用户注册</span> </a> </div>
      <div class="inter-cust"> <a href="https://reg.joybuy.com/reg/person.html" target="_blank" clstag="pageclick|keycount|201612011|4"> <i class="i-global"></i> <span>INTERNATIONAL<br>
        CUSTOMERS</span> </a> </div>
    </div>
  </div>
  <div id="protocoldiv" style="display:none">
    <div class="protocol-con">
      <h4>尚商用户注册协议</h4>
      <p> 本协议是您与尚商网站（简称;本站;，网址：www.jd.com）所有者（以下简称为;尚商;）之间就尚商网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击;同意并继续;按钮后，本协议即构成对双方有约束力的法律文件。</p>
      <h5> 第1条 本站服务条款的确认和接纳</h5>
      <p><strong>1.1</strong>本站的各项电子服务的所有权和运作权归尚商所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。 </p>
      <p><strong>1.2</strong>用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。</p>
      <p><strong>1.3</strong>如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。</p>
      <p><strong>1.4</strong>尚商保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利。</p>
      <h5> 第2条 本站服务</h5>
      <p><strong>2.1</strong>尚商通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。</p>
      <p><strong>2.2</strong>用户必须自行准备如下设备和承担如下开支：（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。 </p>
      <h5> 第3条 用户信息</h5>
      <p><strong>3.1</strong>用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且尚商保留终止用户使用尚商各项服务的权利。 </p>
      <p><strong>3.2</strong>用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。 </p>
      <p><strong>3.3</strong>用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。 </p>
      <p><strong>3.4</strong><strong>用户同意，尚商拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。</strong></p>
      <p><strong>3.5</strong><strong>用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。</strong></p>
      <p><strong>3.6</strong><strong>用户同意，尚商有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。</strong></p>
      <h5> 第4条 用户依法言行义务</h5>
      <p> 本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：</p>
      <p><strong>（1）</strong>不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论； </p>
      <p><strong>（2）</strong>从中国大陆向境外传输资料信息时必须符合中国有关法规；</p>
      <p><strong>（3）</strong>不得利用本站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动； </p>
      <p><strong>（4）</strong>不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；</p>
      <p><strong>（5）</strong>不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；</p>
      <p><strong>（6）</strong>不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；</p>
      <p><strong>（7）</strong>不得教唆他人从事本条所禁止的行为；</p>
      <p><strong>（8）</strong>不得利用在本站注册的账户进行牟利性经营活动；</p>
      <p><strong>（9）</strong>不得发布任何侵犯他人著作权、商标权等知识产权或合法权利的内容；</p>
      <p> 用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。</p>
      <p><strong>本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。</strong></p>
      <p><strong>若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。</strong>用户须对自己在网上的言论和行为承担法律责任。</p>
      <h5> 第5条 商品信息</h5>
      <p> 本站上的商品价格、数量、是否有货等商品信息随时都有可能发生变动，本站不作特别通知。由于网站上商品信息的数量极其庞大，虽然本站会尽最大努力保证您所浏览商品信息的准确性，但由于众所周知的互联网技术因素等客观原因存在，本站网页显示的信息可能会有一定的滞后性或差错，对此情形您知悉并理解；尚商欢迎纠错，并会视情况给予纠错者一定的奖励。</p>
      <p> 为表述便利，商品和服务简称为;商品;或;货物;。</p>
      <h5> 第6条 订单</h5>
      <p><strong>6.1</strong>在您下订单时，请您仔细确认所购商品的名称、价格、数量、型号、规格、尺寸、联系地址、电话、收货人等信息。<span>收货人与用户本人不一致的，收货人的行为和意思表示视为用户的行为和意思表示，用户应对收货人的行为及意思表示的法律后果承担连带责任。</span> </p>
      <p><strong>6.2</strong><strong>除法律另有强制性规定外，双方约定如下：本站上销售方展示的商品和价格等信息仅仅是交易信息的发布，您下单时须填写您希望购买的商品数量、价款及支付方式、收货人、联系方式、收货地址等内容；系统生成的订单信息是计算机信息系统根据您填写的内容自动生成的数据，仅是您向销售方发出的交易诉求；销售方收到您的订单信息后，只有在销售方将您在订单中订购的商品从仓库实际直接向您发出时（
        以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了交易关系；如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了交易关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品才成立交易关系。您可以随时登录您在本站注册的账户，查询您的订单状态。</strong> </p>
      <p> <strong>6.3</strong><strong>由于市场变化及各种以合理商业努力难以控制的因素的影响，本站无法保证您提交的订单信息中希望购买的商品都会有货；如您拟购买的商品，发生缺货，您有权取消订单。</strong> </p>
      <h5> 第7条 配送</h5>
      <p><strong>7.1</strong>销售方将会把商品（货物）送到您所指定的收货地址，所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。 </p>
      <p><strong>7.2</strong>因如下情况造成订单延迟或无法配送等，销售方不承担延迟配送的责任：</p>
      <p><strong>（1）</strong>用户提供的信息错误、地址不详细等原因导致的； </p>
      <p><strong>（2）</strong>货物送达后无人签收，导致无法配送或延迟配送的；</p>
      <p><strong>（3）</strong>情势变更因素导致的；</p>
      <p><strong>（4）</strong>不可抗力因素导致的，例如：自然灾害、交通戒严、突发战争等。</p>
      <h5> 第8条 所有权及知识产权条款</h5>
      <p><strong>8.1</strong><strong>用户一旦接受本协议，即表明该用户主动将其在任何时间段在本站发表的任何形式的信息内容（包括但不限于客户评价、客户咨询、各类话题文章等信息内容）的财产性权利等任何可转让的权利，如著作权财产权（包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利），全部独家且不可撤销地转让给尚商所有，用户同意尚商有权就任何主体侵权而单独提起诉讼。</strong> </p>
      <p><strong>8.2</strong><strong>本协议已经构成《中华人民共和国著作权法》第二十五条（条文序号依照2011年版著作权法确定）及相关法律规定的著作财产权等权利转让书面协议，其效力及于用户在尚商网站上发布的任何受著作权法保护的作品内容，无论该等内容形成于本协议订立前还是本协议订立后。</strong> </p>
      <p> <strong>8.3</strong><strong>用户同意并已充分了解本协议的条款，承诺不将已发表于本站的信息，以任何形式发布或授权其它主体以任何方式使用（包括但不限于在各类网站、媒体上使用）。</strong> </p>
      <p><strong>8.4</strong><strong>尚商是本站的制作者,拥有此网站内容及资源的著作权等合法权利,受国家法律保护,有权不时地对本协议及本站的内容进行修改，并在本站张贴，无须另行通知用户。在法律允许的最大限度范围内，尚商对本协议及本站内容拥有解释权。</strong> </p>
      <p><strong>8.5</strong><strong>除法律另有强制性规定外，未经尚商明确的特别书面许可,任何单位或个人不得以任何方式非法地全部或部分复制、转载、引用、链接、抓取或以其他方式使用本站的信息内容，否则，尚商有权追究其法律责任。</strong> </p>
      <p><strong>8.6</strong>本站所刊登的资料信息（诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件），均是尚商或其内容提供者的财产，受中国和国际版权法的保护。本站上所有内容的汇编是尚商的排他财产，受中国和国际版权法的保护。本站上所有软件都是尚商或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。 </p>
      <h5> 第9条 责任限制及不承诺担保</h5>
      <p><strong>除非另有明确的书面说明,本站及其所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务，均是在;按现状;和;按现有;的基础上提供的。</strong> </p>
      <p> <strong>除非另有明确的书面说明,尚商不对本站的运营及其包含在本网站上的信息、内容、材料、产品（包括软件）或服务作任何形式的、明示或默示的声明或担保（根据中华人民共和国法律另有规定的以外）。</strong> </p>
      <p><strong>尚商不担保本站所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务、其服务器或从本站发出的电子信件、信息没有病毒或其他有害成分。</strong></p>
      <p><strong>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，尚商会合理地尽力协助处理善后事宜。</strong></p>
      <h5> 第10条 协议更新及用户关注义务</h5>
      根据国家法律法规变化及网站运营需要，尚商有权对本协议条款不时地进行修改，修改后的协议一旦被张贴在本站上即生效，并代替原来的协议。用户可随时登录查阅最新协议； <strong><em>用户有义务不时关注并阅读最新版的协议及网站公告。如用户不同意更新后的协议，可以且应立即停止接受尚商网站依据本协议提供的服务；如用户继续使用本网站提供的服务的，即视为同意更新后的协议。尚商建议您在使用本站之前阅读本协议及本站的公告。</em></strong> 如果本协议中任何一条被视为废止、无效或因任何理由不可执行，该条应视为可分的且并不影响任何其余条款的有效性和可执行性。
      <h5> 第11条 法律管辖和适用</h5>
      本协议的订立、执行和解释及争议的解决均应适用在中华人民共和国大陆地区适用之有效法律（但不包括其冲突法规则）。
      如发生本协议与适用之法律相抵触时，则这些条款将完全按法律规定重新解释，而其它有效条款继续有效。
      如缔约方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。
      <h5> 第12条 其他 </h5>
      <p><strong>12.1</strong>尚商网站所有者是指在政府部门依法许可或备案的尚商网站经营主体。</p>
      <p><strong>12.2</strong>尚商尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，尚商将虚心接受并适时修改本协议及本站上的各类规则。 </p>
      <p><strong>12.3</strong><span>本协议内容中以黑体、加粗、下划线、斜体等方式显著标识的条款，请用户着重阅读。</span></p>
      <p><strong>12.4</strong><span>您点击本协议下方的;同意并继续;按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</span> </p>
    </div>
    <div class="protocol-button">
      <button>同意并继续</button>
    </div>
  </div>
  <div id="privacyProtocol" style="display:none">
    <div class="protocol-con">
      <p class="MsoNormal" align="center" style="text-align:centerline-height:150%"> <b> <span style="line-height:150%;">隐私政策</span> </b> <span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"> <span style="line-height:150%;"> </span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">尚商（以下或称“我们”）注重保护用户个人信息及个人隐私。本隐私政策解释了用户（“您”）个人信息收集（以下或称“信息”）和使用的有关情况，本隐私政策适用于尚商向您提供的所有相关服务（包括但不限于电子商务、网络资讯、网络社交、互联网金融服务等，以下称“尚商服务”或“服务”）。<b style="mso-bidi-font-weight:normal">如果您不同意本隐私政策的任何内容，您应立即停止使用尚商服务。当您使用尚商提供的任一服务时，即表示您已同意我们按照本隐私政策来合法使用和保护您的个人信息。</b><span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">一、您个人信息的收集</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">我们收集信息是为了向您提供更好以及更个性化的服务，并努力提高您的用户体验。我们收集信息的种类如下：<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style="line-height:150%;">1</span></b><b><span style="line-height:150%;">、您向我们提供的信息</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">当您注册尚商账户及您在使用相关尚商服务时填写、提交及<span>/</span>或其他任何方式提供的信息，包括您的姓名、性别、出生年月日、身份证号码、护照姓、护照名、护照号码、电话号码、电子邮箱、收货地址、尚商钱包或网银在线账号、银行卡信息及相关附加信息（如您地址中的所在的省份和城市、邮政编码等）。<b style="mso-bidi-font-weight:normal">您可以选择不提供某一或某些信息，但是这样可能使您无法使用尚商的许多特色服务。</b>请您理解，我们使用您提供的信息是为了回应您的要求，为您在尚商购物或享受服务提供便利，完善尚商网站以及与您进行信息沟通。另外，我们可能会将您所提供的信息与您的尚商账户关联，用以识别您的身份。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style="line-height:150%;">2</span></b><b><span style="line-height:150%;">、我们在您使用服务过程中获得的信息<span></span></span></b> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">为了提高服务质量和用户体验，我们会留存您使用服务以及使用方式的相关信息，这类信息包括：<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">（<span>1</span>）您的浏览器和计算机上的信息。</span></b><span style=";
line-height:150%;">在您访问尚商网站或使用尚商服务时，尚商系统自动接收并记录的您的浏览器和计算机上的信息（包括但不限于您的<span>IP</span>地址、浏览器的类型、使用的语言、访问日期和时间、软硬件特征信息及您需求的网页记录等数据）。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">（<span>2</span>）您的位置信息。</span></b><span style="line-height:
150%;">当您下载或使用尚商、其关联方及合作伙伴开发的应用程序（例如尚商<span>APP</span>），或访问移动网页使用尚商服务时，尚商可能会读取您的位置（大多数移动设备将允许您关闭定位服务，具体建议您联系您的移动设备的服务商或生产商）。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">（<span>3</span>）您的设备信息。</span></b><span style="line-height:
150%;&gt;尚商可能会读取您访问尚商或使用尚商服务时所使用的终端设备的信息，包括但不限于设备型号、设备识别码、操作系统、分辨率、电信运营商等。&lt;span lang=" en-us"=""> </span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">（<span>4</span>）您的行为或交易信息。</span></b><span style=";
line-height:150%;">尚商可能会记录您访问尚商或使用尚商服务时所进行的操作以及您在尚商网站上进行交易的相关信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">除上述信息外，我们还可能为了提供服务及改进服务质量的合理需要而获得的您的其他信息，包括您与我们的客服团队联系时您提供的相关信息，您参与问卷调查时向我们发送的问卷答复信息，以及您与尚商的关联方、尚商合作伙伴之间互动时我们获得的相关信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">同时，为提高您使用尚商提供的服务的安全性，更准确地预防钓鱼网站欺诈和木马病毒，我们可能会通过了解一些您的网络使用习惯、您常用的软件信息等手段来判断您账户的风险，并可能会记录一些我们认为有风险的链接（“<span>URL</span>”）。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style="line-height:150%;">3</span></b><b><span style="line-height:150%;">、来自第三方的信息</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">指在您注册尚商账户和使用服务过程中，您授权的尚商可向尚商的关联方、合作伙伴所收集的相关信息，以及您授权的尚商的关联方、合作伙伴可向尚商分享相关的信息。这些信息包括但不限于您的身份信息、行为信息、交易信息、设备信息等，尚商会将此类信息汇总，用于帮助尚商向您提供更好以及更加个性化的服务或更好的预防互联网欺诈。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">您了解并同意，以下信息不适用本隐私政策：<span></span></span></b> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>1</span>）您在使用尚商提供的搜索服务时输入的关键字信息；<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>2</span>）信用评价、违反法律法规规定或违反尚商平台规则行为及尚商已对您采取的措施；<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>3</span>）应法律法规要求需公示的企业名称等相关工商注册信息以及自然人经营者的信息。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>4</span>）其他您与尚商或尚商的关联方所签署的协议（包括在线签署的电子协议，例如《尚商用户注册协议》）以及尚商平台规则中明确约定或提示您不适用本隐私政策的与您有关的信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style="line-height:150%;"></span></b> </p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">二、我们对您个人信息的管理和使用<span></span></span></b></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">为向您提供服务、提升我们的服务质量以及优化您的服务体验，我们会在符合法律规定或根据您授权的情况下使用您的个人信息，并主要用于下列用途：<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">1</span><span style="line-height:150%;">、向您提供您使用的各项服务，并维护、改进这些服务。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">2</span><span style="line-height:150%;">、向您推荐您可能感兴趣的内容，包括但不限于向您发出产品和服务信息，或通过系统向您展示个性化的第三方推广信息，或在征得您同意的情况下与尚商的合作伙伴共享信息以便他们向您发送有关其产品和服务的信息。如您不希望接收上述信息，可通过相应的退订功能进行退订。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">3</span><span style="line-height:150%;">、我们可能使用您的个人信息以验证身份、预防、发现、调查欺诈、危害安全、非法或违反与我们或其关联方协议、政策或规则的行为，以保护您、其他尚商用户，或我们或其关联方的合法权益。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">4</span><span style="line-height:150%;">、我们可能会将来自某项服务的个人信息与来自其他服务所获得的信息结合起来，用于为了给您提供更加个性化的服务使用，例如为让您通过购物拥有更广泛的社交圈而使用、共享或披露您的信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">5</span><span style="line-height:150%;">、我们会对我们的服务使用情况进行统计，并可能会与公众或第三方分享这些统计信息，以展示我们的产品或服务的整体使用趋势。但这些统计信息不包含您的任何身份识别信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">6</span><span style="line-height:150%;">、让您参与有关我们产品及服务的调查。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">7</span><span style="line-height:150%;">、经您同意或授权的其他用途。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">三、您个人信息的分享<span></span></span></b></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">您的个人信息是我们为您提供服务的重要部分，我们会遵循法律规定对您的信息承担保密义务<b style="mso-bidi-font-weight:normal">。除以下情形外，我们不会将您的个人信息披露给第三方</b>：<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">1</span><span style="line-height:150%;">、征得您的同意或授权。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">2</span><span style="line-height:150%;">、根据法律法规的规定或行政或司法机构的要求。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">3</span><span style="line-height:150%;">、出于实现“我们对您个人信息的管理和使用”部分所述目的，或为履行我们在《尚商用户注册协议》或本隐私政策中的义务和行使我们的权利，向尚商的关联方、合作伙伴或代表尚商履行某项职能的第三方（例如代表我们发出推送通知的通讯服务商、处理银行卡的支付机构等）分享您的个人信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">4</span><span style="line-height:150%;">、如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能产生的权利纠纷。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">5</span><span style="line-height:150%;">、只有共享您的信息，才能提供您需要的服务，或处理您与他人的纠纷或争议。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">6</span><span style="line-height:150%;">、您出现违反中国有关法律、法规规定或者违反您与尚商签署的相关协议（包括在线签署的电子协议）或违反相关尚商平台规则时需要向第三方披露的情形。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">7</span><span style="line-height:150%;">、为维护尚商及其关联方或其他尚商用户的合法权益。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">随着我们业务的发展，我们及我们的关联方有可能进行合并、收购、资产转让或类似的交易，您的个人信息有可能作为此类交易的一部分而被转移。我们将在转移前通知您。<span></span></span></b></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style="line-height:150%;"></span></b> </p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">四、您个人信息的安全</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">尚商严格保护您的个人信息安全。我们使用各种制度、安全技术和程序等措施来保护您的个人信息不被未经授权的访问、篡改、披露或破坏。如果您对我们的个人信息保护有任何疑问，请联系我们的客服。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">在通过尚商网站与第三方进行网上商品或服务的交易时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或者邮政地址等。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是你的账户及密码发生泄露，请您立即联络我们的客服，以便我们采取相应措施。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">五、访问和更新您的个人信息</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">您可以在“我的尚商”页面的“账户设置”菜单中查阅您提交给尚商的所有个人信息，你也可通过上述途径更新除实名认证信息之外的其他个人信息（您的实名认证信息是您通过实名认证时使用的姓名和身份证信息），如您需要变更您的实名认证信息，您可拨打95118 服务热线申请变更。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">六、<span>Cookie </span>及网络<span> Beacon</span>的使用</span></b><span style=";
line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">1</span><span style="line-height:150%;">、<span>Cookie</span>的使用<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">Cookie</span><span style="line-height:150%;">是由网页服务器存放在您的访问设备上的文本文件。指定给您的<span>Cookie </span>是唯一的，它只能被将<span>Cookie</span>发布给您的域中的<span>Web</span>服务器读取。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">尚商使用<span> Cookie </span>来帮助您实现您的联机体验的个性化，使您在尚商及其关联方获得更轻松的访问体验。例如，<span>Cookie </span>会帮助您在后续访问尚商网站时调用您的信息，简化记录您填写个人信息（例如一键登录等）的流程；为您提供安全购物的偏好设置；帮助您优化对广告的选择与互动；保护您的数据安全等。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">您有权接受或拒绝<span> Cookie</span>。大多数浏览器会自动接受<span>Cookie</span>，但您通常可根据自己的需要来修改浏览器的设置以拒绝<span> Cookie</span>。如果选择拒绝 <span>Cookie</span>，那么您可能无法完全体验所访问的尚商网站或某些服务的全部功能。<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;">2</span><span style="line-height:150%;">、网络<span>Beacon</span>的使用<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">尚商网页上常会包含一些电子图象（称为<span>"</span>单像素<span>" GIF </span>文件或<span> "</span>网络<span> beacon"</span>），它们可以帮助网站计算浏览网页的用户或访问某些<span>cookie</span>。尚商使用网络<span>beacon</span>的方式有：<span></span></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>1</span>）尚商通过在尚商网站上使用网络<span>beacon</span>，计算用户访问数量，并通过访问<span> cookie </span>辨认注册用户。 <span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">（<span>2</span>）尚商通过得到的<span>cookie</span>信息，可以在尚商网站提供个性化服务。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b><span style=";
line-height:150%;">七、未成年人的个人信息保护</span></b><span style="line-height:150%;"></span> </p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">尚商非常重视对未成年人个人信息的保护。若您是<span>18</span>周岁以下的未成年人，在使用尚商服务前，应事先取得您家长或法定监护人的书面同意。尚商根据国家相关法律法规的规定保护未成年人的个人信息。<span></span></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><b style="mso-bidi-font-weight:
normal"><span style="line-height:150%;">八、通知和修订<span></span></span></b></p>
      <p class="MsoNormal" style="line-height:150%"><span style="font-size:
12.0pt;line-height:150%;"></span></p>
      <p class="MsoNormal" style="line-height:150%"><span style=";
line-height:150%;">为给你提供更好的服务，尚商的业务将不时变化，本隐私政策也将随之调整。尚商会通过在尚商网站、移动端上发出更新版本并提醒您相关内容的更新，也请您访问尚商以便及时了解最新的隐私政策。如果您对于本隐私政策或在使用尚商服务时对于您的个人信息或隐私情况有任何问题，请联系尚商客服并作充分描述，尚商将尽力解决。</span> </p>
    </div>
    <div class="protocol-button">
      <button>同意并继续</button>
    </div>
  </div>
</div>
<div id="form-footer" class="footer w">
  <div class="links"> <a rel="nofollow" target="_blank" href="https://www.jd.com/intro/about.aspx"> 关于我们</a>| <a rel="nofollow" target="_blank" href="https://www.jd.com/contact/">联系我们</a>| <a rel="nofollow" target="_blank" href="https://zhaopin.jd.com/">人才招聘</a>| <a rel="nofollow" target="_blank" href="https://www.jd.com/contact/joinin.aspx">商家入驻</a>| <a rel="nofollow" target="_blank" href="https://www.jd.com/intro/service.aspx">广告服务</a>| <a rel="nofollow" target="_blank" href="https://app.jd.com/">手机尚商</a>| <a target="_blank" href="https://club.jd.com/links.aspx">友情链接</a>| <a target="_blank" href="https://media.jd.com/">销售联盟</a>| <a href="https://club.jd.com/" target="_blank">尚商社区</a>| <a href="https://gongyi.jd.com/" target="_blank">尚商公益</a>| <a target="_blank" href="https://en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a> </div>
  <div class="copyright"> Copyright&#169;2004-2016&nbsp;&nbsp;尚商xxx.com&nbsp;版权所有 </div>
</div>
<script type="text/javascript">
$(function(){
	   $("#btn-register").click(function(){
	       if(checkInput()) {
	           $("#register-form").action("/user/doreg.html");
	       }else{
	           return false;
	       }

	   });
	   
	function checkInput(){

	        //判断用户名
	        if($("input[name=username]").val() == null || $("input[name=username]").val() == ""){
	            $("input[name=username]").focus();
	            return false;
	        }
	        //判断密码
	        if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){
	            $("input[name=password]").focus();
	            return false;
	        }
	        //判断邮箱
	        if($("input[name=email]").val() == null || $("input[name=email]").val() == ""){
	            $("input[name=email]").focus();
	            return false;
	        }
	      	//判断手机
	        if($("input[name=phone]").val() == null || $("input[name=phone]").val() == ""){
	            $("input[name=phone]").focus();
	            return false;
	        }
	        return true;
	    }

	});
</script>
<a target="_blank" href="https://surveys.jd.com/index.php?r=survey/index/sid/447941/lang/zh-Hans" class="feedback" style="margin-top: -85px; position: fixed; right: 0px; bottom: 50%;"></a>
</body></html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>找回密码</title>
    <link href="https://passport.yhd.com/front-passport/passport/css/find_paswd.css?89c7455" rel="stylesheet" type="text/css"/>
    <script src="https://passport.yhd.com/front-passport/passport/js/find_paswd.js?89c7455" type="text/javascript"></script>
</head>

<body>
<link rel="shortcut icon" href="https://passport.yhd.com/front-passport/passport/images/yhd_favicon.ico"/>
<div class="regist_header clearfix">
    <div class="wrap">
        <a href="http://www.yhd.com" class="logo"><img src="https://passport.yhd.com/front-passport/passport/images/loginlogo.jpg" height="55" alt="1号店" /></a>
        <div class="regist_header_right clearfix">
            <!--<a href="#" class="english_edition" id="edition" style="display:none">English</a>-->
            <div class="help_wrap">
                <a class="hd_menu" href="http://cms.yhd.com/cms/view.do?topicId=12"><s class="help_ico"></s>帮助中心</a>
                <div class="hd_menu_list">
                    <ul>
                        <li><a href="http://home.yhd.com/order/toOrderList.do">包裹跟踪</a></li>
                        <li><a href="http://cms.yhd.com/cms/view.do?topicId=12">常见问题</a></li>
                        <li><a href="http://rma.yhd.com/return/returnApplyList.do">在线退换货</a></li>
                        <li><a href="http://cms.yhd.com/cms/view.do?topicId=43">在线投诉</a></li>
                        <!--
                        <li><a href="http://www.yhd.com/deliveryinfo/deliveryInfo.do">配送范围</a></li>
                        -->
                    </ul>
                </div>
            </div>
            <span class="fr">您好，欢迎光临1号店！ <a href="/passport/login_input.do" class="blue_link">请登录</a></span>
        </div>
    </div>
</div>
<script type="text/javascript">
    var no3wUrl="yhd.com";
    var currSiteId = 1;
    var URLPrefix = {"yhd_domain":".yhd.com","global_statics":"https://passport.yhd.com/front-passport","sam_passport_statics":"https://security.samsclub.cn/front-passport/passport","chinese":"1号店","passportother":"https://passport.1mall.com","sam_domain":".samsclub.cn","sam_captcha_js_url":"https://security.samsclub.cn/captcha/js/api.js","helpUrl":"http://www.yihaodian.com/cms/view.do?topicId=9864","hk_passport_statics":"https://passport.yihaodian.com.hk/front-passport/passport","yhd_captcha_host":"https://captcha.yhd.com","tracker":"tracker.yhd.com","sam_login_url":"https://security.samsclub.cn/customer/login_input.do","sam_passport_host":"https://security.samsclub.cn","central":"http://www.yhd.com","out3wurl":"www.yihaodian.com","yhd_passport_host":"https://passport.yhd.com","sam_request_namespace":"/customer","mySite":"http://my.yihaodian.com/member/my.do","passport_statics":"https://passport.yhd.com/front-passport/passport","yaowang":"http://www.111.com.cn","sam_captcha_host":"https://security.samsclub.cn","my":"http://my.yhd.com","httpurl":"http://www.yhd.com","mymall":"http://my.1mall.com","yhd_login_url":"https://passport.yhd.com/passport/login_input.do","agreementUrl":"http://cms.yhd.com/cms/view.do?topicId=10","no3wUrl":"yhd.com","h5AgreementUrl":"http://cms.yhd.com/cms/view.do?topicId=54","yiwangauth":"http://mall.yiwang.cn","webStaticResourceUrl":"http://image.yihaodianimg.com","passport":"https://passport.yhd.com","validCodeShowUrl":"https://captcha.yhd.com/public/validcode.do","mall":"http://www.1mall.com"};
    var yhdUrl="http://www.yhd.com";
    var yhdPassportUrl="https://passport.yhd.com";
    var loli = window['loli'] || {};
    var valid_code_service_flag="1";
</script>
<script type="text/javascript" src="https://passport.yhd.com/front-passport/passport/js/jquery.cookie.js?89c7455"></script>


<input type="hidden" value="0" id="iscompletepassword"/>
<div class="find_wrap">
    <div class="find_step">
        <ul class="clearfix">
            <!--完成给li加done,当前状态加cur -->
            <li class="cur">
                <em>1</em>
                <p>填写用户名</p>
                <i></i>
            </li>
            <li>
                <em>2</em>
                <p>验证身份</p>
                <i></i>
            </li>
            <li>
                <em>3</em>
                <p>设置新密码</p>
                <i></i>
            </li>
            <li>
                <em>4</em>
                <p>完成</p>
            </li>
        </ul>
    </div>
    <div class="find_detail">
        <div class="y_regist_form">
            <ul class="clearfix">
                <input id="validateSig" type="hidden"/>
                <!--判断正确给li加class  “ipt_right”,错误给li加class  “ipt_wrong” -->
                <li>
                    <div class="y_same_item">
                        <input class="ysame_input" type="text" value="" id="login_account"/>
                        <span class="y_same_label" >用户名</span>
                    </div>
                    <!--提示信息begin -->
                    <i class="item_icon_sure"></i>
                    <div class="y_regist_tips y_regist_tips_black">
                        <div class="y_regtip_rel">
                            <i></i>
                            <div class="y_tips_words">
                                请输入手机号/邮箱/用户名
                            </div>
                        </div>
                    </div>
                    <!--提示信息end -->
                </li>

                <li>
                    <a href="#" class="y_agreement_btn" id="confirmUser">下一步</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<div id="simplefooter"><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备16050468号</a>|<a>沪B2-20170039</a>|<a href="http://d7.yihaodianimg.com/N09/M07/BD/7B/ChEi11kJnKaAJQMrAAK-LnhML4o60600.jpg" data-ref="YHD_Footer_Licence" target="_blank">营业执照</a><p>Copyright © 天池网上超市 2007-2017，All Rights Reserved</p></div>    <script type="text/javascript" src='https://captcha.yhd.com/captcha/js/api.js?89c7455'></script>
</body>
<script type="text/javascript" src="https://captcha.yhd.com/statics/gridcaptcha/dist/require.js" data-main="https://captcha.yhd.com/statics/gridcaptcha/dist/main"></script>
<script>
    jFindPw.init();
    //显示九宫格验证码
    function showGrid(){
        try {
            require(['gd'], function (captcha) {
                captcha.showGrid(
                    {
                        su: 'https://passport.yhd.com/publicPassport/showDispatcher.do',
                        cb: function (code, sig) {
                            jFindPw.confirm_user(code, sig);
                        }
                    }
                );
            });
        } catch (e) {
            alert('系统异常：' + e);
        }
    }
</script>
</html>

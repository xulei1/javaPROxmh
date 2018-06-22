<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>为考研加油</title>
    <meta charset="utf-8">
    <style type="text/css">
        body { font-size: 12px; line-height: 120%; text-align: center; color:#333; padding: 20px;}
        a { color: #333; text-decoration: none;}
        a:hover { text-decoration: underline;}
        * { margin: 0; padding: 0; border: none;}
        .clearfix:after { content:"."; display:block; height:0; clear:both; visibility:hidden}
        .clearfix { *height:1%;}
        #list { margin: 0 auto; text-align: left; width: 540px;}
        .box { border-top: 1px solid #eee; position: relative;  width: 540px; padding: 20px 0}
        .box:hover .close { display: block;}
        .close { display: none; top:0px; right: 0px; width: 28px; height: 28px; border: 1px solid #eee; position: absolute; background: #f2f4f7; line-height: 27px; text-align: center;}
        .close:hover { background: #c8d2e2; text-decoration: none;}
        .head { float: left; width: 60px; height: 60px; margin-right: 10px;}
        .content { float: left; width: 440px;}
        .main { margin-bottom: 10px;}
        .txt { margin-bottom: 10px;}
        .user { color: #369; }
        .pic { margin-right: 5px; width: 200px; border: 1px solid #eee;}
        .info { height: 20px; line-height: 19px; font-size: 12px; margin: 0 0 10px 0;}
        .info .time { color: #ccc; float: left; height: 20px; padding-left: 20px; background: url("images2/bg1.jpg") no-repeat left top;}
        .info .praise { color: #369; float: right; height: 20px; padding-left: 18px; background: url("images2/bg2.jpg") no-repeat left top;}
        .info .praise:hover { text-decoration: underline; background: url("images2/bg3.jpg") no-repeat left top;}
        .praises-total { margin: 0 0 10px 0; height: 20px; background: url("images2/praise.png") no-repeat 5px 5px rgb(247, 247, 247); padding: 5px 0 5px 25px; line-height: 19px;}
        .comment-box { padding: 10px 0; border-top: 1px solid #eee;}
        .comment-box:hover { background: rgb(247, 247, 247);}
        .comment-box .myhead { float: left; width: 30px; height: 30px; margin-right: 10px;}
        .comment-box .comment-content { float: left; width: 400px; }
        .comment-box .comment-content .comment-time { color: #ccc; margin-top: 3px; line-height: 16px; position: relative;}
        .comment-box .comment-content .comment-praise { display: none; color: #369; padding-left: 17px; height: 20px; background: url("images2/praise.png") no-repeat;  position: absolute; bottom: 0px; right: 44px;}
        .comment-box .comment-content .comment-operate { display: none; color: #369; height: 20px;  position: absolute; bottom: 0px; right: 10px;}
        .comment-box .comment-content:hover .comment-praise { display: inline-block;}
        .comment-box .comment-content:hover .comment-operate { display: inline-block;}
        .text-box .comment { border: 1px solid #eee; display: block; height: 15px; width: 428px; padding: 5px; resize: none; color: #ccc}
        .text-box .btn { font-size: 12px; font-weight: bold; display: none; float: right; width: 65px; height: 25px; border: 1px solid #0C528D; color: #fff; background: #4679AC;}
        .text-box .btn-off { border: 1px solid #ccc; color: #ccc; background: #F7F7F7;}
        .text-box .word{ display: none; float: right; margin: 7px 10px 0 0; color: #666;}
        .text-box-on .comment{ height: 50px; color: #333;}
        .text-box-on .btn{ display: inline;}
        .text-box-on .word{ display: inline;}
    </style>
    <script type="text/javascript" src="js/demo.js"></script>
</head>
<body>
    <div id="list">
        <div class="box clearfix">
            <a class="close" href="javascript:;">×</a>
            <img class="head" src="images2/1.jpg" alt=""/>
            <div class="content">
                <div class="main">
                    <p class="txt">
                        <span class="user">Andy：</span>严寒到酷暑，酷暑再到严寒，努力十月，破茧成蝶。
                    </p>
                    <img class="pic" src="images2/img1.jpg" alt=""/>
                </div>
                <div class="info clearfix">
                    <span class="time">06-14 23:01</span>
                    <a class="praise" href="javascript:;">赞</a>
                </div>
                <div class="praises-total" total="4" style="display: block;">4个人觉得很赞</div>
                <div class="comment-list">
                    <div class="comment-box clearfix" user="self">
                        <img class="myhead" src="images2/my.jpg" alt=""/>
                        <div class="comment-content">
                            <p class="comment-text"><span class="user">LIMING：</span>加油哦。</p>
                            <p class="comment-time">
                                2018-06-19 14:36
                                <a href="javascript:;" class="comment-praise" total="1" my="0" style="display: inline-block">1 赞</a>
                                <a href="javascript:;" class="comment-operate">删除</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="text-box">
                    <textarea class="comment" autocomplete="off">评论…</textarea>
                    <button class="btn ">回 复</button>
                    <span class="word"><span class="length">0</span>/140</span>
                </div>
            </div>
        </div>

        <div class="box clearfix">
            <a class="close" href="javascript:;">×</a>
            <img class="head" src="images2/2.jpg" alt=""/>
            <div class="content">
                <div class="main">
                    <p class="txt">
                        <span class="user">人在旅途：</span>数学一点也不难学。
                    </p>
                    <img class="pic" src="images2/img5.jpg" alt=""/> <img class="pic" src="images2/img51.jpg" alt=""/>
                </div>
                <div class="info clearfix">
                    <span class="time">06-14 23:01</span>
                    <a class="praise" href="javascript:;">赞</a>
                </div>
                <div class="praises-total" total="0" style="display: none;"></div>
                <div class="comment-list">
                    <div class="comment-box clearfix" user="other">
                        <img class="myhead" src="images2/4.jpg" alt=""/>
                        <div class="comment-content">
                            <p class="comment-text"><span class="user">老鹰：</span>立即推，放弃考研。</p>
                            <p class="comment-time">
                                2018-06-05 14:36
                                <a href="javascript:;" class="comment-praise" total="0" my="0">赞</a>
                                <a href="javascript:;" class="comment-operate">回复</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="text-box">
                    <textarea class="comment" autocomplete="off">评论…</textarea>
                    <button class="btn ">回 复</button>
                    <span class="word"><span class="length">0</span>/140</span>
                </div>
            </div>
        </div>

        <div class="box clearfix">
            <a class="close" href="javascript:;">×</a>
            <img class="head" src="images2/3.jpg" alt=""/>
            <div class="content">
                <div class="main">
                    <p class="txt">
                        <span class="user">艾克：</span>时间不在乎你拥有多少而是取决于你如何利用，考研时间很短大家一定要摒弃一切杂念为考研努力。
                    </p>
                </div>
                <div class="info clearfix">
                    <span class="time">06-11 13:17</span>
                    <a class="praise" href="javascript:;">赞</a>
                </div>
                <div class="praises-total" total="0" style="display: none;"></div>
                <div class="comment-list">

                </div>
                <div class="text-box">
                    <textarea class="comment" autocomplete="off">评论…</textarea>
                    <button class="btn ">回 复</button>
                    <span class="word"><span class="length">0</span>/140</span>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
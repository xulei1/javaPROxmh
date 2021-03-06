<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登录
						</div>
						<form action="user/shouye" method="post">
							
							<div class="form_text_ipt">
								<input name="UserName" type="text" placeholder="手机号/邮箱" value="${UserName}">
							</div>
							<div class="ececk_warning"><span>账号不能为空</span></div>
							<div class="form_text_ipt">
								<input name="pawd" type="password" placeholder="密码" value="${pawd}">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 下次自动登录</label>
								</div>
								<div class="right check_right">
									<a href="#">忘记密码</a>
								</div>
							<div id="v_container" style="width: 200px;height: 60px; margin:0 auto;"></div>
							<div style="width:200px;  height:50px; margin:0 auto;">
								<input type="text" id="code_input" value="" /><button id="my_button">验证</button>
							
	                              <script src="js/gVerify.js"></script>
	                             <script>
		                       var verifyCode = new GVerify("v_container");

		                     document.getElementById("my_button").onclick = function(){
			 var res = verifyCode.validate(document.getElementById("code_input").value);
			if(res){
				alert("验证正确");
			}else{
				alert("验证码错误");
			}
		}
	</script>
							</div>
	                        
							</div>
							<div class="form_btn">
								 <button type="submit">登录</button> 
							</div>
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="regist.jsp">马上注册</a>&nbsp;&nbsp;<a href="houtai.jsp">后台登录</a>
							</div>
							
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#">QQ登录</a>
								<a href="#">微信登录</a>
								<a href="404.jsp">其它登录</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
	</body>
</html>

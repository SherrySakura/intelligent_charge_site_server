<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>register</title>
<link rel="shortcut icon" type="image/x-icon" href= "img/cat.ico" media="screen" /> 
<!--支持移动设备优先-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--引入bootstrap的css-->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<!--引入jquery-->
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<!--引入bootstrap的js-->
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/register_script.js"></script>

<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/iconfont.css">
<!--放在最下面，优先级高-->
<link rel="stylesheet" href="css/reg_style.css">
</head>

<body>


	<!--导航栏-->
	<div class="before-pc-header hidden-xs"></div>
	<div class="before-phone-header visible-xs"></div>
	<header>
 	<!--PC端可见-->
 	
	<div id="pc-header" class="nav-box hidden-xs">  	
	
		<nav>
				<span class="span-box">  			
					<a class="a-nav" href="./index">首页</a>
					<a class="a-nav" href="#">方案展示</a> 
					<a class="a-nav" href="#">产品</a> 
					<a class="a-nav" href="#">关于我们</a> 

					<span id="login_register" class="login_register_span"><a href="./gologin">登录</a><span style="font-size: 20px;">|</span><a  href="./goregister" target="_blank">注册</a></span>
				</span>
		</nav>
  	</div>

	<!--手机端可见-->
	<div id="phone-header" class="container visible-xs" style="">
			<div class="row">
				<div class="phone-header-imgbox col-md-4">
					<img src="img/logo - yellow.png" class="phone-logo img-responsive" alt="">
				</div>

				<div class="col-md-offset-2 col-md-6">
					<nav class="navbar navbar-default" role="navigation" style="margin: 10px auto"> 
						<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse"
									data-target="#example-navbar-collapse-2">
								<span class="sr-only">切换导航</span>
								<span class="icon-bar"></span>  
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Menu</a>
						</div>
						<div class="collapse navbar-collapse" id="example-navbar-collapse-2">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="./index"  style="">首页</a></li>
								<li><a href="#" style="">方案展示</a></li>
								<li><a href="#" style="">产品</a></li>
								<li><a href="#" style="">关于我们</a></li>
								<li id="login_phone"><a href="./gologin" >登录</a></li>
								<li id="register_phone"><a href="./goregister" >注册</a></li>
								
						  </ul>
						</div>
						
						</div>
					</nav>
				</div>
			</div>
		</div>
	
	

</header>






<div class="register-inner-bg">
	

	<div class="register container">
                    <div class="title row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>中南智充</strong></h1>
                            <div class="description">
                            	<p>
	                            	加入我们，感受云计算和人工智能带给世界的美好！
                            	</p>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	
                        	<form role="form" action="" method="post" class="registration-form">
                        		
                        		<fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>注册</h3>
		                            		<p>告诉我们您的信息</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    	
				                    		<label class="sr-only" for="name">name</label>
				                        	<input type="text" name="name" placeholder="用户名 （英文、数字或字符，位数：5-20）" class="form-control" id="name">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="password">password</label>
				                        	<input type="text" name="password" placeholder="密码    （英文、数字或字符，位数：5-20）" class="form-control" id="password">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="repassword">repassword</label>
				                        	<input type="text" name="repassword" placeholder="密码确认" class="form-control" id="repassword">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="phone">phone</label>
				                        	<input type="text" name="phone" placeholder="手机号" class="form-control" id="phone">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="mail">Last name</label>
				                        	<input type="text" name="mail" placeholder="邮箱" class="form-control" id="mail">
				                        </div>
				                        
				                        
				                        
			                        	<div class="form-group">
				                        	<input type="text" name="check_code" placeholder="验证码" class="form-control" id="check_code" >
				                        	

				                        	<label id="autoRandom" value="" ></label>
				                        	
				                        	<input TYPE="button" value="获取验证码" id="getcheckcode" >
				                        </div>
				                        

				                        <div class="form-group">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="agree"> 同意网站服务条款
													</label>
												</div>
										</div>				                     
				                        <button type="button" id="btnReg" class="btn btn-next">提交</button>
				                    </div>
			                    </fieldset>
			                    

		                    </form>
		                    
                        </div>
                    </div>
                </div>

</div>

<!--模态框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					提示
				</h4>
			</div>
			<div id="modal_info_box" class="modal-body">
				在这里添加一些文本
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>

			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>







<!--PC端 页脚-->
<div class="pc-footer container-fluid hidden-xs">
	<p>中南智充是我们参与"赛尔网络下一代互联网技术创新项目"的作品，是一款结合云计算、人工智能的新型充电平台</p>
	<p> 编号：NGII20170634 基于云计算的IPv6校园智慧充电平台</p>
</div>



<!--phone端 页脚-->

<div class="phone-footer container-fluid visible-xs">
	<div class="phone-footer-top">
		<p class="phone-footer-bottom-p">基于云计算的IPv6校园智慧充电平台</p>
		<p class="phone-footer-bottom-p"> 编号：NGII20170634</p>
	</div>
	
</div>


</body>
</html>

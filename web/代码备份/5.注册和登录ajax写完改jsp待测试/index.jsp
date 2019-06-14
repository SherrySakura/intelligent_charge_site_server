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
<title>CSU Intelligent Charge</title>
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


<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/iconfont.css">
<script type="text/javascript" src="js/sript.js"></script>
</head>
<style>


	
</style>
<body>


	<!--导航栏-->
	<div class="before-pc-header hidden-xs"></div>
	<div class="before-phone-header visible-xs"></div>
	<header>
 	<!--PC端可见-->
 	
	<div id="pc-header" class="nav-box hidden-xs">  	
	
		<nav>
				<span class="span-box" style="margin-left: 620px;">  			
					<a class="a-nav" href="./index">首页</a>
					<a class="a-nav" href="#">方案展示</a> 
					<a class="a-nav" href="#">产品</a> 
					<a class="a-nav" href="#">关于我们</a> 
					 
					<!--未登录状态-->
					<span id="login_register" class="login_register_span"><a href="./gologin">登录</a><span style="font-size: 20px;">|</span><a  href="./goregister" target="_blank">注册</a></span>
					
					<!--已登录状态-->
					<div id="myAccount">
						<a class="myAccount_title_a" href="javascript:;">我的账号</a> 
						<span class="down_arrow glyphicon glyphicon-chevron-down"></span>
						<div class="Account_Info">
				    		<div>
								<img src="img/user_img.jpg" width="253" height="262" alt=""/>
								<span id="user_name">郑智勇5416456456547</span>
							  	<span id="user_class">[普通用户]</span>
				    		</div>
				    		<hr>
				    		<div class="p_box">
				    			<p id="user_center"><a href="./my_home">用户中心</a></p>
								<p id="quit"><a href="javascript:;">注销</a></p>
				    		</div>
				    		
				      </div>
					</div>
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
								<li><a href="./index">首页</a></li>
								<li><a href="#" >方案展示</a></li>
								<li><a href="#" >产品</a></li>
								<li><a href="#" >关于我们</a></li>
								<li id="login_phone"><a href="./gologin" >登录</a></li>
								<li id="register_phone"><a href="./goregister" >注册</a></li>
								<li id="account_phone"><a href="./my_home" >我的账号</a></li>
								<li id="quit_phone"><a href="javascript:;" >注销</a></li>								
						  </ul>
						</div>
						
						</div>
					</nav>
				</div>
			</div>
		</div>
	
	

</header>


<!--主图-->

            <div class="billboard">
                <div class="bg-grid"></div>
                <img class="index-bg visible-xs" src= "img/video_img4.jpg">
                
                <video class="video-bg hidden-xs" preload="" loop muted playsinline="" autoplay width="100%" height="100%">
                  <source src="media/4.webm" type="video/webm">
                  <source src="media/4.mp4" type="video/mp4">
                </video>
           

                    <div class="inner-text">
                        <h1 >技术源于人类的需求与愿望</h1>
                        <div class="sub-slogan-box">
                            <h2>我们非常荣幸地，与赛尔网络一起</h2>
                            <h2>为向全国超过3000多所高校提供最优质的共享充电物联网解决方案而努力</h2>
                        </div>
                    </div>

            </div>



<div class="wrapper container">
	
  <div class="container">
    <div class="row">
      <h1>项目宗旨</h1>
      <div class="server_content col-md-12 ">我们聚焦于充电桩的智能化，致力于推动电动车行业的快速发展，为环境改善贡献力量.
      我们提供完成的物联网+充电服务，为制造商提供高性价比的智能控制硬件与整桩方案，为运营商提供运营管理平台与整站管理控制方案，为用户提供APP与微信公众号.</div>
      
      <!--四个方框-->
      <div class="four-Box col-md-3 col-sm-6">
        <div class="service-box">
          <div class="service-icon"><span class="fa fa-pencil-square-o"></span></div>
          <div class="service_title">智能充电</div>
          <p>Donec euismod, justo sed convallis blandit, ipsum erat mattis lectus, vel pharetra neque enim tristique risus.</p>
        </div>
      </div>
      <div class="four-Box col-md-3 col-sm-6">
        <div class="service-box">
          <div class="service-icon"><span class="fa fa-home"></span></div>
          <div class="service_title">便捷共享</div>
          <p>Conquer is free HTML5 template by <span class="blue">template</span><span class="green">mo</span>. Feel free to download, edit and use this template for any purpose.</p>
        </div>
      </div>
      <div class="four-Box col-md-3 col-sm-6">
        <div class="service-box">
          <div class="service-icon"><span class="fa fa-download"></span></div>
          <div class="service_title">健康估计</div>
          <p>Credit goes to <a rel="nofollow" href="#">Unsplash</a> for images used in this template. Curabitur rhoncus felis quis nibh pulvinar.</p>
        </div>
      </div>
      <div class="four-Box col-md-3 col-sm-6">
        <div class="service-box">
          <div class="service-icon"><span class="fa fa-random"></span></div>
          <div class="service_title">云端监控</div>
          <p>Donec euismod, justo sed convallis blandit, ipsum erat mattis lectus, vel pharetra neque enim tristique risus.</p>
        </div>
      </div>
    </div>
  </div>
	
	
	
<!--	<div class="content content_back">
            <div class="layout">
                <h3>
                    <p class="content_title">互联网+ 电动自行车充电系统</p>

                </h3>

      
            </div>
  </div>	-->
	
	
	  <div class="system-real-title container">
	  	<div class="row">
			<h1 class="">中南智充—电动车共享充电解决方案提供者</h1>
				<div class="system-real-subtltle col-md-12 ">我们聚焦于充电桩的智能化，致力于推动电动汽车行业的快速发展，为环境改善贡献力量。
				我们提供完成的物联网+充电服务，为制造商提供高性价比的智能控制硬件与整桩方案，为运营商提供运营管理平台与整站管理控制方案，为用户提供APP与微信公众号。</div>
		</div>	
  	  </div>	
	
	
	
	
	
	
	
	
	
<!--pc 项目实物图-->	
	<div class="pc-system-real-image container">

			<div class="pc-real-image-left">
				<img src= "img/phone-figure.png" alt="">
			</div>
			
			<div class="pc-real-image-right">
					<img src= "img/chanping-01.png" alt="">
			</div>
	</div>
	
	


<div class="row feature-box">
	<div class="col-md-3 col-sm-3 feature-box-sub">
		<p class="p-1"><i class="iconfont icon-saoma"></i>扫码支付 无需换零</p>
		<p class="p-1"><i class="iconfont icon-location"></i>基站定位 就近充电</p>
	</div>
	<div class="col-md-3 col-sm-3 feature-box-sub">
		<p class="p-1"><i class="iconfont icon-xudianchi"></i>容量估计 寿命预测</p>
		<p class="p-1"><i class="iconfont icon-icon--"></i>推荐方案 模式自选</p>
	</div>
	<div class="col-md-3 col-sm-3 feature-box-sub">
		<p class="p-1"><i class="iconfont icon-banjizhenduan"></i>电量监控 自动提醒</p>
		<p class="p-1"><i class="iconfont icon-message"></i>用户分析 智能推送</p>
	</div>
	<div class="col-md-3 col-sm-3 feature-box-sub">
		<p class="p-1"><i class="iconfont icon-weixinzhifu"></i>4G  数传  便捷部署</p>
		<p class="p-1"><i class="iconfont icon-icon-cos"></i>资源共享 分层博弈</p>
	</div>
</div>



<!--产品介绍+项目框图-->


<div class="system-info clearfix row-fluid">
		
		
			<div class="col-md-6">
				<div class="titleborder">
					<div>
						 SYSTEM FRAMEWORK
					</div>
				</div>

				<div class="heightauto">

						<div class="system-frame">
					    <img src="img/system-demo2.png " class="img-responsive" alt=""/> 
					    </div>

						<div class="system-frame-info" >

								<p>
									<b>基于云计算的IPv6校园智慧充电平台</b> 一个基于云计算的IPv6校园智慧充电平台，将电动车智能充电服务部署在云环境中。首先，本项目将搭建数传平台，完成充电设施和云端服务器的链接；并充分利用IPv6地址空间大、节点即插即用、安全性能高及服务质量好的技术特点，引入博弈理论，进行校园充电高峰时期充电设施的资源调度与合理配置，得到高效、可行的充电资源共享解决方案，实现资源分配和定价机制的多目标联合优化，在低峰时期提高资源的利用率；在充电服务方面，项目提出了蓄电池的Stage Of Charge（SOC）、Stage Of Health（SOH）观测，<span id="extend_info1">集合不同电池的实际情况和用户要求给出相应的充电策略，并将充电过程信息（曲线、所需时间等）通过云服务器实时反馈给校园用户；最后，利用IPv6和云服务资源的优势，对各充电基站、充电桩的运营数据及用户的使用习惯信息进行深度的数据挖掘，综合考虑充电设备投资成本和充电用户的利益，实现智能充电桩的最优部署，并针对不同用户的使用习惯，为用户提供定制的个性化服务。 </span><a id="get_more" href="javascript:;">[显示更多]</a>
								</p>	
						</div>
			  </div>

				<div class="clearfix">

				</div>

			</div>

			<div class="col-md-6">

				<div class="titleborder">

					<div>

						 INNOVATION SECTION

					</div>

				</div>

				<div class="accordion">

					<h3 id="h3_cont1" class="active"><span>Quis dolor id nunc</span></h3>

					<div class="accord_cont" id="accord_cont1">

						<p>

							 Nunc sit amet velit metus. At leo tincidunt felis facilisis tincidunt. Proin posuere, ligula nec porttitor eget luctus, risus lectus tristique ligula, quis pretium elit diam a nisi eget mauris vestibulum. Proin vehicula malesuada dolor, vel rutrum. quam sollicitu hasellus turpis justo, sagittis sit amet elementum eget, ultricies ac tortor. Ut est mi, consequat ut bibendum quis, vehicula vel nibh. In urna tortor, pulvinar ut.

						</p>

					</div>

					<h3 id="h3_cont2"><span>Mauris suspendisse laoreet imperdiet</span></h3>

					<div class="accord_cont" id="accord_cont2">

						<p>

							 At leo tincidunt felis facilisis tincidunt. Nunc sit amet velit metus. Proin posuere, ligula nec porttitor eget luctus, risus lectus tristique ligula, quis pretium elit diam a nisi eget mauris vestibulum. Proin vehicula malesuada dolor, vel rutrum. quam sollicitu hasellus turpis justo, sagittis sit amet elementum eget, ultricies ac tortor. Ut est mi, consequat ut bibendum quis, vehicula vel nibh. In urna tortor, pulvinar ut.

						</p>

					</div>

					<h3 id="h3_cont3"><span>Quis porttitor semper mauris!</span></h3>

					<div class="accord_cont" id="accord_cont3">

						<p>

							 At leo tincidunt felis facilisis tincidunt. Nunc sit amet velit metus. Proin posuere, ligula nec porttitor eget luctus, risus lectus tristique ligula, quis pretium elit diam a nisi eget mauris vestibulum. Proin vehicula malesuada dolor, vel rutrum. quam sollicitu hasellus turpis justo, sagittis sit amet elementum eget, ultricies ac tortor. Ut est mi, consequat ut bibendum quis, vehicula vel nibh. In urna tortor.

						</p>

					</div>

					<h3 id="h3_cont4"><span>Eros odio ornare commodo</span></h3>

					<div class="accord_cont" id="accord_cont4">

						<p>

							 Ut est mi, consequat ut bibendum quis, vehicula vel nibh. At leo tincidunt felis facilisis tincidunt. Nunc sit amet velit metus. Proin posuere, ligula nec porttitor eget luctus, risus lectus tristique ligula, quis pretium elit diam a nisi eget mauris vestibulum. Proin vehicula malesuada dolor, vel rutrum. quam sollicitu hasellus turpis justo, sagittis sit amet elementum eget, ultricies ac tortor.

						</p>

					</div>

				</div>

			</div>

		</div>



<!--产品介绍-->
<div class="product_toptitle row-fluid">
			<div class="col-md-12">
				<div class="titleborder">
					<div>
						 已有产品
					</div>
				</div>
			</div>
		</div>




<!--产品图展示-->

<div class="product-info clearfix row-fluid">

			<div class="real_product_box col-md-3" >

				<article>

				<img src="img/temp/masonry/helsinki-94309_640.jpg" alt="" class="real_product_img">

				<div>
					<span class="sub_title">硬件</span>

					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
					
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article>

			</div>

			<div class="real_product_box col-md-3">

				<img src="img/temp/masonry/berlin-91850_640.jpg" alt="" class="real_product_img">

				<article>
				
				<div>
					<span class="sub_title">软件</span>

					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>
				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
				</article>

			</div>

			<div class="real_product_box col-md-3">

				<img src="img/temp/masonry/spain-93903_640.jpg" alt="" class="real_product_img">

				<article>

				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>
				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article>

			</div>

			<div class="real_product_box col-md-3" >
				<img src="img/temp/masonry/beasain-91730_640.jpg" alt="" class="real_product_img">
				<article>
				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
			
				</article>

			</div>
						<div class="real_product_box col-md-3" >
				<img src="img/temp/masonry/beasain-91730_640.jpg" alt="" class="real_product_img">
				<article>
				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
			
				</article>

			</div>
						<div class="real_product_box col-md-3" >
				<img src="img/temp/masonry/beasain-91730_640.jpg" alt="" class="real_product_img">
				<article>
				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
			
				</article>

			</div>
						<div class="real_product_box col-md-3" >
				<img src="img/temp/masonry/beasain-91730_640.jpg" alt="" class="real_product_img">
				<article>
				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
			
				</article>

			</div>
						<div class="real_product_box col-md-3" >
				<img src="img/temp/masonry/beasain-91730_640.jpg" alt="" class="real_product_img">
				<article>
				<div>
					<span class="sub_title">算法</span>
					<h4><a href="javascript:;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
				</div>

				<p>

					 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>
			
				</article>

			</div>

		</div>
	
	
	
	
	

	<!--成员介绍-->
		<div class="clearfix group_toptitle row-fluid">
			<div class="col-md-12">
				<div class="titleborder">
					<div>
						 Our Team
					</div>
				</div>
			</div>
		</div>
	
	
	
	<div class="group-info clearfix row-fluid">
		
		
			<div class="col-md-6">
				<div class="titleborder">
					<div>
						 团队简介
					</div>
				</div>

				<div class="team_info">


								<p>
									<b>基于云计算的IPv6校园智慧充电平台</b> 一个基于云计算的IPv6校园智慧充电平台，将电动车智能充电服务部署在云环境中。首先，本项目将搭建数传平台，完成充电设施和云端服务器的链接；并充分利用IPv6地址空间大、节点即插即用、安全性能高及服务质量好的技术特点，引入博弈理论，进行校园充电高峰时期充电设施的资源调度与合理配置，得到高效、可行的充电资源共享解决方案，实现资源分配和定价机制的多目标联合优化，在低峰时期提高资源的利用率；在充电服务方面，项目提出了蓄电池的Stage Of Charge（SOC）、Stage Of Health（SOH）观测。
								</p>	
	
			 	 </div>
	
			</div>
	
	
			<div class="teacher-box col-md-6">
				<div class="titleborder">
					<div>
						 指导老师
					</div>
				</div>

				<div class="teacher_info" >

					<img src="img/huang.png" width="150" height="210" alt=""/>
					<p>
					  <b>黄志武</b>，信息科学与工程学院教授、博士、博士生导师。国家重点学科交通信息工程及控制的学术带头人，任中南大学轨道交通安全运行控制与通信研究所所长，是湖南省首批新世纪121人才工程培养对象。多年来，通过从事国家和省部级科学研究项目并开展国际合作交流，致力于轨道交通网络通信系统、智能交通移动通信系统、列车通信网（TCN)技术、基于信息物理融合系统(CPS)的新型列车网络通信控制系统、网络化系统多故障诊断技术、分布式网络协同优化技术、多智能体系统协作技术、增强学习技术等方面的研究。主持完成国家自然科学基金、国家863计划目、教育部博士点基金、湖南省科技计划项承担，铁道部项目等工业应用项目50余项。
					</p>	
	
			 	 </div>
	
			</div>		
	
	</div>
	
	
	
	<div class="student-info-box clearfix row-fluid">
			<div class="clearfix" style=" ">
				<div class="col-md-6 ">
					<div class="titleborder">
						<div>
							 学生成员
						</div>
					</div>
				</div>
				
			</div>

			

			<div class="student_box col-md-3" >

				<div class="student_info" >

					<img src="img/1.jpg" width="150" height="210" alt=""/>
					<div class="stud-discript" >
						
								<b>郑智勇</b>--项目前期调研，方案制定，人员组织，基站无线数传终端的硬件及软件开发，web前端开发。
							
					</div>
				 </div>

			</div>
			<div class="student_box col-md-3" >

				<div class="student_info">

					<img src="img/333.jpg" width="150" height="210" alt=""/>
					<div class="stud-discript" >
						
						<b>杜威</b>--用户行为及基站运营数据挖掘程序的研究与实现，基于安卓和iOS的APP客户端的辅助开发，系统后端开发。
							
					</div>
				 </div>

			</div>
				<div class="student_box col-md-3">

				<div class="student_info">

					<img src="img/444.jpg" width="150" height="210" alt=""/>
					<div class="stud-discript" >
						
								<b>武悦</b>--充电资源的分层博弈算法设计，充电基站部署方案的研究，充电桩控制电路与功率电路的设计及其软件开发。
							
					</div>
				 </div>

			</div>
				<div class="student_box col-md-3" >

				<div class="student_info">

					<img src="img/222.jpg" width="150" height="210" alt=""/>
					<div class="stud-discript" >
						
								<b>刘勇杰</b>--基于安卓和iOS的APP客户端开发，铅酸电池SOC、SOH算法的设计与实现，充电桩硬件电路的辅助设计。
							
					</div>
				 </div>

			</div>

		</div>		





</div>





<!--PC端 页脚-->
<div class="pc-footer container-fluid hidden-xs">
	<div class="footer-a-box">
		<a href="#">方案展示</a>
		<a href="#">关于产品</a>
		<a href="#">关于我们</a>
		<a href="#">赛尔网络下一代互联网技术创新项目</a>
		<a href="#">站点地图</a>
	</div>
	<div class="footer-image-box">
		<p>
			<span>扫一扫关注官方微信公众号</span>
			<img src="img/wechat.jpg" width="430" height="430" alt=""/> 
		</p>
		<p>
			<img src= "img/app.png" width="430" height="430" alt=""/>
			<span>扫一扫立即下载中南智充APP</span>
		</p>
	</div>
	<p>中南智充是我们参与"赛尔网络下一代互联网技术创新项目"的作品，是一款结合云计算、人工智能的新型充电平台</p>
	<p> 编号：NGII20170634 基于云计算的IPv6校园智慧充电平台</p>
</div>



<!--phone端 页脚-->

<div class="phone-footer container-fluid visible-xs">
	<div class="phone-footer-top">
		<div class="phone-footer-a-box">
			<a href="#">方案展示</a>
			<a href="#">赛尔网络</a>
			<a href="#">关于我们</a>
			<a href="#">站点地图</a>
		</div>
		<div class="phone-footer-image-box">
			<p>
				<img src="img/wechat.jpg" width="430" height="430" alt=""/> 
				<span>扫一扫关注官方微信公众号</span>
			</p>
			<p>
				<img src= "img/app.png" width="430" height="430" alt=""/>
				<span>扫一扫立即下载中南智充APP</span>
			</p>
		</div>
		<p class="phone-footer-bottom-p">基于云计算的IPv6校园智慧充电平台</p>
		<p class="phone-footer-bottom-p"> 编号：NGII20170634</p>
	</div>
	
	<div class="party">
		<i></i>
		<a href="javascript:;" class="the_end">  欢迎交流</a>
<!--		<a href="tel:15574337418" class="phone_number">  欢迎交流</a>
		<a class="qq" rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&amp;uin=846080118&amp;site=qq&amp;menu=yes" target="_blank"></a>
		<a href="http://robocup.csu.edu.cn/web/newyan/html/index.html" class="wb" rel="nofollow" target="_blank"></a>-->
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

</body>
</html>

<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<head>
		<title>后台管理</title>
		<!-- start: META -->
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/Public/Admin/fonts/style.css">
		<link rel="stylesheet" href="/Public/Admin/css/main.css">
		<link rel="stylesheet" href="/Public/Admin/css/main-responsive.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
		<link rel="stylesheet" href="/Public/Admin/css/theme_light.css" type="text/css" id="skin_color">
		<link rel="stylesheet" href="/Public/Admin/css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="/Public/Admin/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="/Public/Admin/plugins/select2/select2.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/datepicker/css/datepicker.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
		<link rel="stylesheet" href="/Public/Admin/plugins/summernote/build/summernote.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
    <!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="/Public/Admin/plugins/respond.min.js"></script>
		<script src="/Public/Admin/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="/Public/Admin/js/jquery.1.10.2.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="/Public/Admin/js/jquery.2.0.3.js"></script>
		<!--<![endif]-->
		<script src="/Public/Admin/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="/Public/Admin/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
		<script src="/Public/Admin/plugins/blockUI/jquery.blockUI.js"></script>
		<script src="/Public/Admin/plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="/Public/Admin/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script src="/Public/Admin/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
		<script src="/Public/Admin/plugins/less/less-1.5.0.min.js"></script>
		<script src="/Public/Admin/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
		<script src="/Public/Admin/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="/Public/Admin/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="/Public/Admin/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="/Public/Admin/plugins/select2/select2.min.js"></script>
		<script src="/Public/Admin/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
		<script src="/Public/Admin/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-daterangepicker/moment.min.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-colorpicker/js/commits.js"></script>
		<script src="/Public/Admin/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
		<script src="/Public/Admin/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="/Public/Admin/plugins/summernote/build/summernote.min.js"></script>
		<script src="/Public/Admin/plugins/ckeditor/ckeditor.js"></script>
		<script src="/Public/Admin/plugins/ckeditor/adapters/jquery.js"></script>
		<script src="/Public/Admin/js/form-elements.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body>
				<!-- start: HEADER -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<!-- start: TOP NAVIGATION CONTAINER -->
			<div class="container">
				<div class="navbar-header">
					<!-- start: RESPONSIVE MENU TOGGLER -->
					<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
						<span class="clip-list-2"></span>
					</button>
					<!-- end: RESPONSIVE MENU TOGGLER -->
					<!-- start: LOGO -->
					<a class="navbar-brand" href="index.html">
						CLIP<i class="clip-clip"></i>ONE
					</a>
					<!-- end: LOGO -->
				</div>
				<div class="navbar-tools">
					<!-- start: TOP NAVIGATION MENU -->
					<ul class="nav navbar-right">
						<!-- start: TO-DO DROPDOWN -->
						<!--<li class="dropdown">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
								<i class="clip-list-5"></i>
								<span class="badge"> 12</span>
							</a>
							<ul class="dropdown-menu todo">
								<li>
									<span class="dropdown-menu-title"> You have 12 pending tasks</span>
								</li>
								<li>
									<div class="drop-down-wrapper">
										<ul>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc" style="opacity: 1; text-decoration: none;">Staff Meeting</span>
													<span class="label label-danger" style="opacity: 1;"> today</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc" style="opacity: 1; text-decoration: none;"> New frontend layout</span>
													<span class="label label-danger" style="opacity: 1;"> today</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> Hire developers</span>
													<span class="label label-warning"> tommorow</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc">Staff Meeting</span>
													<span class="label label-warning"> tommorow</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> New frontend layout</span>
													<span class="label label-success"> this week</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> Hire developers</span>
													<span class="label label-success"> this week</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> New frontend layout</span>
													<span class="label label-info"> this month</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> Hire developers</span>
													<span class="label label-info"> this month</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc" style="opacity: 1; text-decoration: none;">Staff Meeting</span>
													<span class="label label-danger" style="opacity: 1;"> today</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc" style="opacity: 1; text-decoration: none;"> New frontend layout</span>
													<span class="label label-danger" style="opacity: 1;"> today</span>
												</a>
											</li>
											<li>
												<a class="todo-actions" href="javascript:void(0)">
													<i class="fa fa-square-o"></i>
													<span class="desc"> Hire developers</span>
													<span class="label label-warning"> tommorow</span>
												</a>
											</li>
										</ul>
									</div>
								</li>
								<li class="view-all">
									<a href="javascript:void(0)">
										See all tasks <i class="fa fa-arrow-circle-o-right"></i>
									</a>
								</li>
							</ul>
						</li>-->
						<!-- end: TO-DO DROPDOWN-->
						<!-- start: NOTIFICATION DROPDOWN -->
						<!--<li class="dropdown">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
								<i class="clip-notification-2"></i>
								<span class="badge"> 11</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li>
									<span class="dropdown-menu-title"> You have 11 notifications</span>
								</li>
								<li>
									<div class="drop-down-wrapper">
										<ul>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-primary"><i class="fa fa-user"></i></span>
													<span class="message"> New user registration</span>
													<span class="time"> 1 min</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> 7 min</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> 8 min</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> 16 min</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-primary"><i class="fa fa-user"></i></span>
													<span class="message"> New user registration</span>
													<span class="time"> 36 min</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-warning"><i class="fa fa-shopping-cart"></i></span>
													<span class="message"> 2 items sold</span>
													<span class="time"> 1 hour</span>
												</a>
											</li>
											<li class="warning">
												<a href="javascript:void(0)">
													<span class="label label-danger"><i class="fa fa-user"></i></span>
													<span class="message"> User deleted account</span>
													<span class="time"> 2 hour</span>
												</a>
											</li>
											<li class="warning">
												<a href="javascript:void(0)">
													<span class="label label-danger"><i class="fa fa-shopping-cart"></i></span>
													<span class="message"> Transaction was canceled</span>
													<span class="time"> 6 hour</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> yesterday</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-primary"><i class="fa fa-user"></i></span>
													<span class="message"> New user registration</span>
													<span class="time"> yesterday</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-primary"><i class="fa fa-user"></i></span>
													<span class="message"> New user registration</span>
													<span class="time"> yesterday</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> yesterday</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<span class="label label-success"><i class="fa fa-comment"></i></span>
													<span class="message"> New comment</span>
													<span class="time"> yesterday</span>
												</a>
											</li>
										</ul>
									</div>
								</li>
								<li class="view-all">
									<a href="javascript:void(0)">
										See all notifications <i class="fa fa-arrow-circle-o-right"></i>
									</a>
								</li>
							</ul>
						</li>-->
						<!-- end: NOTIFICATION DROPDOWN -->
						<!-- start: MESSAGE DROPDOWN -->
						<!--<li class="dropdown">
							<a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown" href="#">
								<i class="clip-bubble-3"></i>
								<span class="badge"> 9</span>
							</a>
							<ul class="dropdown-menu posts">
								<li>
									<span class="dropdown-menu-title"> You have 9 messages</span>
								</li>
								<li>
									<div class="drop-down-wrapper">
										<ul>
											<li>
												<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img alt="" src=".//Public/Admin/images/avatar-2.jpg">
														</div>
														<div class="thread-content">
															<span class="author">Nicole Bell</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
															<span class="time"> Just Now</span>
														</div>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img alt="" src=".//Public/Admin/images/avatar-1.jpg">
														</div>
														<div class="thread-content">
															<span class="author">Peter Clark</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
															<span class="time">2 mins</span>
														</div>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img alt="" src=".//Public/Admin/images/avatar-3.jpg">
														</div>
														<div class="thread-content">
															<span class="author">Steven Thompson</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
															<span class="time">8 hrs</span>
														</div>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img alt="" src=".//Public/Admin/images/avatar-1.jpg">
														</div>
														<div class="thread-content">
															<span class="author">Peter Clark</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
															<span class="time">9 hrs</span>
														</div>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img alt="" src=".//Public/Admin/images/avatar-5.jpg">
														</div>
														<div class="thread-content">
															<span class="author">Kenneth Ross</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
															<span class="time">14 hrs</span>
														</div>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</li>
								<li class="view-all">
									<a href="pages_messages.html">
										See all messages <i class="fa fa-arrow-circle-o-right"></i>
									</a>
								</li>
							</ul>
						</li>-->
						<!-- end: MESSAGE DROPDOWN -->
						<!-- start: USER DROPDOWN -->
						<li class="dropdown current-user">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
								<span class="username">欢迎您！管理员：<?php echo (session('username')); ?></span>
								<i class="clip-chevron-down"></i>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="<?php echo U('AdminPassWord/index');?>"><i class="clip-locked"></i>
										&nbsp;修改管理员密码 </a>
								</li>
								<li>
									<a href="<?php echo U('Login/logout');?>">
										<i class="clip-exit"></i>
										&nbsp;管理员退出登录
									</a>
								</li>
							</ul>
						</li>
						<!-- end: USER DROPDOWN -->
					</ul>
					<!-- end: TOP NAVIGATION MENU -->
				</div>
			</div>
			<!-- end: TOP NAVIGATION CONTAINER -->
		</div>
		<!-- end: HEADER -->
		<!-- start: MAIN CONTAINER -->
		<div class="main-container">
			<div class="navbar-content">
								<!-- start: SIDEBAR -->
				<div class="main-navigation navbar-collapse collapse">
					<!-- start: MAIN NAVIGATION MENU -->
          <div class="pc-navigation">
            <ul class="main-navigation-menu">
              <li class="<?php if(($_SESSION['menu']['module']) == "index"): ?>active<?php endif; ?>">
                <span class="column_item">
                <i class="clip-home-3"></i>
                  <span class="title"> <a href="<?php echo U('Index/index');?>">后台首页</a> </span><span class="selected"></span>
                </span>
              </li>
              <li class="<?php if(($_SESSION['menu']['module']) == "config"): ?>active<?php endif; ?>">
                <span class="column_item">
                <i class="clip-wrench"></i>
                  <span class="title"> <a href="<?php echo U('Config/index');?>">全局设置</a> </span><span class="selected"></span>
                </span>
              </li>
              <li class="<?php if(($_SESSION['menu']['module']) == "Slide"): ?>active<?php endif; ?>">
                <span class="column_item">
                <i class="clip-pictures"></i>
                  <span class="title"> <a href="<?php echo U('Slide/index');?>">电脑首页幻灯片</a> </span><span class="selected"></span>
                
                </span>
              </li>
              <li class="<?php if(($_SESSION['menu']['module']) == "MobSlide"): ?>active<?php endif; ?>">
                <span class="column_item">
                <i class="clip-pictures"></i>
                  <span class="title"> <a href="<?php echo U('MobSlide/index');?>">手机首页幻灯片</a> </span><span class="selected"></span>
                </span>
              </li>
              <li>
                <span class="column_item">
                </span>
              </li>
              <li class="<?php if(($_SESSION['menu']['module']) == "MobSlide"): ?>active<?php endif; ?>">
                <span class="column_item">
                <i class="clip-list-2"></i>
                  <span class="title"> <a href="<?php echo U('Column/form',array('type'=>'add','id'=>0));?>">添加根目录</a> </span><span class="selected"></span>
                </span>
              </li>
              <?php if(is_array($aort_list)): $i = 0; $__LIST__ = $aort_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="<?php if(($_GET['column_id']) == "1"): ?>active<?php endif; ?>">
                <!--<a href="<?php echo U('Article/lists',array('column_id'=>1));?>">-->
                <span class="column_item">
                  <?php echo ($vo["depth_str"]); ?><i class="clip-list-2"></i>
                  <span style="cursor:pointer" class="title column_title"> 
                    <a href="<?php echo U('Article/lists',array('column_id'=>$vo['id']));?>"><?php echo ($vo["name"]); ?></a> 
                  </span>
                  <span style="float:right;" class="dropup">
                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
                      <i class="clip-chevron-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <a href="<?php echo U('Column/form',array('type'=>'add','id'=>$vo['id']));?>">添加子栏目</a>
                      </li>
                      <li>
                        <a href="<?php echo U('Column/form',array('type'=>'edit','id'=>$vo['id']));?>">编辑</a>
                      </li>
                    </ul>
                  </span>
                </span>
              </li><?php endforeach; endif; else: echo "" ;endif; ?>
              <li>
                <span class="column_item">
                </span>
              </li>
              <li>
              	<span class="column_item">
              		合作伙伴
                </span>
              </li>
              <li>
              	<span class="column_item">
              		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo U('ObtainLinks/index');?>">就业合作伙伴</a>
                </span>
              </li>
              <li>
              	<span class="column_item">
              		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo U('EducationLinks/index');?>">教育合作伙伴</a>
                </span>
              </li>
            </ul>
          </div>
					<!-- end: MAIN NAVIGATION MENU -->
				</div>
				<!-- end: SIDEBAR -->
			</div>
			<!-- start: PAGE -->
			<div class="main-content">
				<div class="container">
					<!-- start: PAGE HEADER -->
					<div class="row">
						<div class="col-sm-12">
							<!-- start: PAGE TITLE & BREADCRUMB -->
							<ol class="breadcrumb">
								<li>
									<i class="clip-file"></i>
									<a href="<?php echo U('Index/index');?>">
										后台首页
									</a>
								</li>
                <li class="active">
									 <?php echo ($column_data["name"]); ?>
								</li>
								<li class="active">
									 文章表单
								</li>
								<li class="search-box">
									<form class="sidebar-search">
										<div class="form-group">
											<input type="text" placeholder="Start Searching...">
											<button class="submit">
												<i class="clip-search-3"></i>
											</button>
										</div>
									</form>
								</li>
							</ol>
							<div class="page-header">
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
						</div>
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<div class="row">
						<div class="col-sm-12">
							<!-- start: TEXT FIELDS PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-external-link-square"></i>
									文章表单
								</div>
								<div class="panel-body">
									<form role="form" method="post" action="<?php echo U('Article/post',array('type'=>$_GET['type']));?>" class="form-horizontal" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-sm-2 control-label">
												文章标题
											</label>
											<div class="col-sm-4">
												<input placeholder="请输入文章标题" name="title" value="<?php echo ($data["title"]); ?>" class="form-control" type="text">
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												英文标题
											</label>
											<div class="col-sm-4">
												<input placeholder="请输入英文标题" name="title_en" value="<?php echo ($data["title_en"]); ?>" class="form-control" type="text">
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												关键词
											</label>
											<div class="col-sm-4">
												<input placeholder="请输入关键词" name="keywords" value="<?php echo ($data["keywords"]); ?>" class="form-control" type="text">
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												描述
											</label>
											<div class="col-sm-4">
                      	<textarea class="form-control" name="descriptions" maxlength="200" placeholder="请输入描述"><?php echo ($data["descriptions"]); ?></textarea>
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												来源
											</label>
											<div class="col-sm-4">
												<input placeholder="请输入来源" name="source" value="<?php echo ($data["source"]); ?>" class="form-control" type="text">
											</div>
										</div>
                    <?php if(($_GET['type']) == "edit"): if(($data["thumb"]) != ""): ?><div class="form-group">
                    	<div class="col-sm-4 col-sm-offset-2">
                    		<img src="/Uploads/<?php echo ($data["thumb"]); ?>" width="200">
                      </div>
                    </div><?php endif; endif; ?>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												缩略图
											</label>
											<div class="col-sm-3">
                      	<div class="fileupload fileupload-new" data-provides="fileupload">
													<div class="input-group">
														<div class="form-control uneditable-input">
															<i class="fa fa-file fileupload-exists"></i>
															<span class="fileupload-preview"></span>
														</div>
														<div class="input-group-btn">
															<div class="btn btn-light-grey btn-file">
																<span class="fileupload-new"><i class="fa fa-folder-open-o"></i> 选择文件</span>
																<span class="fileupload-exists"><i class="fa fa-folder-open-o"></i> 重新选择</span>
																<input type="file" name="thumb" class="file-input">
															</div>
															<a href="#" class="btn btn-light-grey fileupload-exists" data-dismiss="fileupload">
																<i class="fa fa-times"></i> 删除选择
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												上传时间
											</label>
											<div class="col-sm-2">
                      	<div class="input-group">
                          <input type="text" data-date-format="yyyy-mm-dd" name="post_time" data-date-viewmode="years" value="<?php echo date('Y-m-d'); ?>" class="form-control date-picker">
                          <span class="input-group-addon"> <i class="fa fa-calendar"></i> </span>
                        </div>
											</div>
										</div>
                    <?php if(($column_data["id"]) == "11"): ?><!-- 加载编辑器的容器 --> 
                    <!-- 配置文件 --> 
                    <script type="text/javascript" src="/Public/ueditor/ueditor.config.js"></script> 
                    <!-- 编辑器源码文件 --> 
                    <script type="text/javascript" src="/Public/ueditor/ueditor.all.js"></script> 
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												培养方向
											</label>
											<div class="col-sm-8">
                        <script id="ueditor1" name="direction" type="text/plain">
														<?php echo ($data["direction"]); ?>
												</script>
                        <!-- 实例化编辑器 --> 
                    		<script type="text/javascript">
													var ue = UE.getEditor('ueditor1',{
														'initialFrameHeight':400,
														'zIndex':999
													});
                      	</script> 
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												主要课程
											</label>
											<div class="col-sm-8">
                        <script id="ueditor2" name="course" type="text/plain">
														<?php echo ($data["course"]); ?>
												</script>
                        <!-- 实例化编辑器 --> 
                    		<script type="text/javascript">
													var ue = UE.getEditor('ueditor2',{
														'initialFrameHeight':400,
														'zIndex':999
													});
                      	</script> 
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												就业方向
											</label>
											<div class="col-sm-8">
                        <script id="ueditor3" name="obtain" type="text/plain">
														<?php echo ($data["obtain"]); ?>
												</script>
                        <!-- 实例化编辑器 --> 
                    		<script type="text/javascript">
													var ue = UE.getEditor('ueditor3',{
														'initialFrameHeight':400,
														'zIndex':999
													});
                      	</script> 
											</div>
										</div>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												部分就业单位
											</label>
											<div class="col-sm-8">
                        <script id="ueditor4" name="enterprise" type="text/plain">
														<?php echo ($data["enterprise"]); ?>
												</script>
                        <!-- 实例化编辑器 --> 
                    		<script type="text/javascript">
													var ue = UE.getEditor('ueditor4',{
														'initialFrameHeight':400,
														'zIndex':999
													});
                      	</script> 
											</div>
										</div>
                    <?php else: ?>
                    <div class="form-group">
											<label class="col-sm-2 control-label">
												内容
											</label>
											<div class="col-sm-8">
                        <script id="ueditor" name="content" type="text/plain">
														<?php echo ($data["content"]); ?>
												</script>
                    		<!-- 加载编辑器的容器 --> 
                        <!-- 配置文件 --> 
                        <script type="text/javascript" src="/Public/ueditor/ueditor.config.js"></script> 
                        <!-- 编辑器源码文件 --> 
                        <script type="text/javascript" src="/Public/ueditor/ueditor.all.js"></script> 
                        <!-- 实例化编辑器 --> 
                    		<script type="text/javascript">
													var ue = UE.getEditor('ueditor',{
														'initialFrameHeight':400,
														'zIndex':999
													});
                      	</script> 
											</div>
										</div><?php endif; ?>
                    <div class="form-group">
                      <div class="col-sm-2 col-sm-offset-2">
                      	<input type="hidden" name="column_id" value="<?php echo ($_GET['column_id']); ?>">
                      	<input type="hidden" name="id" value="<?php echo ($data["id"]); ?>">
                        <button class="btn btn-blue next-step btn-block">
                          提交 <i class="fa fa-arrow-circle-right"></i>
                        </button>
                      </div>
                    </div>
									</form>
								</div>
							</div>
							<!-- end: TEXT FIELDS PANEL -->
						</div>
					</div>
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			<!-- end: PAGE -->
		</div>
		<!-- end: MAIN CONTAINER -->
				<!-- start: FOOTER -->
		<div class="footer clearfix">
			<div class="footer-inner">
				2014 &copy; clip-one by cliptheme.
			</div>
			<div class="footer-items">
				<span class="go-top"><i class="clip-chevron-up"></i></span>
			</div>
		</div>
		<!-- end: FOOTER -->
	</body>
	<!-- end: BODY -->
</html>
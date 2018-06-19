<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo ($config_data["name"]); ?></title>
<meta name="keywords" content="<?php echo ($config_data["keywords"]); ?>" />
<meta name="description" content="<?php echo ($config_data["description"]); ?>" />
<link href="/Public/Home/PC/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/PC/css/swiper.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/PC/css/liMarquee.css" rel="stylesheet" type="text/css" />
<link href="/Public/Home/PC/css/style1.css" rel="stylesheet" type="text/css" />

<script src="/Public/Home/PC/js/jquery-1.9.1.min.js"></script>
<script src="/Public/Home/PC/js/jquery.liMarquee.js"></script>
</head>

<body>
	<div class="header">
  <div class="meitou">
		<div class="meitou-zhong">
      <img src="/Public/Home/PC/images/zhonglai/shou_02.jpg"  class="logo"/>
			<div class="meitou-right">
				<div class="meitou-right-top">
					<a href="">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">网站地图</a>
				</div>
				<div class="meitou-right-down">
					<form action="post">
						<input type="text" value="请输入关键字" class="so">
						<input type="image" src="/Public/Home/PC/images/zhonglai/shou_05.png" alt="Submit" class="ti"/>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="daohang">
		<div class="daohang-zhong">
			<ul class="clearfix">
				<li><a href="/">首页</a></li>
				<li><a href="<?php echo U('Index/article',array('column_id'=>1,'id'=>1));?>">关于我们</a></li>
				<li><a href="<?php echo U('Index/column',array('column_id'=>8));?>">产业中心</a></li>
        <li><a href="<?php echo U('Index/column',array('column_id'=>20));?>">资讯中心</a></li>
        <li><a href="<?php echo U('Index/column',array('column_id'=>23));?>">合资合作</a></li>
        <li><a href="<?php echo U('Index/column',array('column_id'=>17));?>">党群建设</a></li>
				<li><a href="">人才招聘</a></li>
				<li><a href="">联系我们</a></li>
			</ul>
		</div>
	</div>

</div>

  <div class="bodyer">
  	<div class="other_banner" style="background:url(/Uploads/<?php echo ($column_data["pc_pic"]); ?>) no-repeat center; background-size: cover; height: 360px;"></div>
    <div class="other_content neijj">
				<div class="neijj-zhong">
					<div class="neijj-left">
						<h4><?php echo ($column_data["name"]); ?></h4>
						<ul>
							<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="<?php if(($vo["id"]) == $_GET['id']): ?>over<?php endif; ?>"><a href="<?php echo U('Index/article',array('column_id'=>1,'id'=>$vo['id']));?>">
									<?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

						</ul>
					</div>
					<div class="neijj-right">
						<img src="/Public/Home/PC/images/zhonglai/jj_01.jpg" class="shou-gy">
						<h4><?php echo ($data["title"]); ?></h4>
						<span class="entitle">ENTERPRISE INTRODUCTION</span>
						<div class="shou-mian">
							<img src="/Public/Home/PC/images/zhonglai/jj_02.jpg" class="shou-jj">
							<span>首页&gt;关于我们&gt;公司简介</span>
						</div>

						<div style="clear:both"></div>
						<hr>
						<div class="neirong">
													<?php echo ($data["content"]); ?>
						</div>

					</div>
				</div>
    </div>
  </div>
  <div class="foot">
	<div class="foot-zhong">
		<table border="0px" class="foot-xi">
			<tr>
				<td>联系我们</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>地址：山东省龙口市通海路29号</td>
				<td>邮编：265701</td>
				<td></td>
			</tr>
			<tr>
				<td>电话：0535-8511088</td>
				<td>传真：0535-8511088</td>
				<td>邮箱：sdzhongliang@163.com</td>
			</tr>
		</table>
		<div class="foot-er">
			<div class="foot-left">
				<h5>官方微信</h5>
			<img src="/Public/Home/PC/images/zhonglai/shou_52.jpg">
			</div>
			<div class="foot-tan">友情链接<div class="tan"><a href="">友情地址名称</a><a href="">友情地址名称</a><a href="">友情地址名称</a></div></div>
		</div>
	</div>
</div>

</body>
</html>
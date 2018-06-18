<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>山东中莱建设集团有限公司</title>
	<link href="/Public/Home/PC/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="/Public/Home/PC/css/swiper.css" rel="stylesheet" type="text/css" />
	<link href="/Public/Home/PC/css/liMarquee.css" rel="stylesheet" type="text/css" />
	<link href="/Public/Home/PC/css/style1.css" rel="stylesheet" type="text/css" />
	<script src="/Public/Home/PC/js/jquery-1.9.1.min.js"></script>
	<script src="/Public/Home/PC/js/swiper.jquery.js"></script>
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
				<li><a href="">产业中心</a></li>
				<li><a href="">资讯中心</a></li>
				<li><a href="">合资合作</a></li>
				<li><a href="">党群建设</a></li>
				<li><a href="">人才招聘</a></li>
				<li><a href="">联系我们</a></li>
			</ul>
		</div>
	</div>

</div>

	<div class="banner">
		<div class="index_banner swiper-container">
			<div class="swiper-wrapper">
				<?php if(is_array($slide_list)): $i = 0; $__LIST__ = $slide_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a class="swiper-slide" href="<?php echo ($vo["url"]); ?>"  target="_blank" ><div class="swiper-slide" style="background:url(/Uploads/<?php echo ($vo["pic"]); ?>) no-repeat center;"></div></a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
		</div>
		<script>
			var mySwiper = new Swiper('.index_banner', {
				autoplay: 5000, //可选选项，自动滑动
				autoplayDisableOnInteraction: false
			})
		</script>
		<img src="/Public/Home/PC/images/zhonglai/shou_09.jpg">
	</div>
	<div class="nei">
		<div class="nei-zhong">
			<div class="yewu">
				<h4>业务领域</h4>
				<p>更多&gt;</p>
				<div style="clear:both"></div>
				<ul>
			<li class="bg1"><a href="">中莱建筑</a></li>
			<li class="bg2"><a href="">中莱建筑</a></li>
			<li class="bg3"><a href="">中莱建筑</a></li>
			<li class="bg4"><a href="">中莱建筑</a></li>
		</ul>
			</div>
		</div>
		<div class="nei-wen">
			<img src="/Public/Home/PC/images/zhonglai/shou_25.jpg">
			<div class="nei-xin">

						<a href="">集团新闻</a>
						<a href="">中莱要闻</a>
						<a href="">下属动态</a>
						<a href="" class="nei-duo">更多&gt;</a>
						<div style="clear:both"></div>
						<ul class="xxww">
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
							<li><a href=""><p>中莱集团建设目标中莱集团建设目标</p></a><span>2018-02-05</span></li>
						</ul>

			</div>
		</div>
		<div class="nei-jianjie">
			<ul>
				<li>
					<h4>企业简介</h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_03.jpg" class="nei-xian">
					<img src="/Public/Home/PC/images/zhonglai/shou_29.jpg" class="nei-xian-tu">
					<p>山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团山东中粮集团</p>
				</li>
				<li>
					<h4>媒体聚焦<a href="" class="nei-duo">更多&gt;</a></h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_03.jpg" class="nei-xian">
					<img src="/Public/Home/PC/images/zhonglai/shou_31.jpg" class="nei-xian-tu">
					<div style="clear:both"></div>
					<ul class="xinwen">
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
					</ul>
				</li>
				<li>
					<h4>党群工作<a href="" class="nei-duo">更多&gt;</a></h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_03.jpg" class="nei-xian">
					<img src="/Public/Home/PC/images/zhonglai/shou_33.jpg" class="nei-xian-tu">
					<div style="clear:both"></div>
					<ul class="xinwen">
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
						<li><a href="">这里是i新闻标题新闻标题</a><a  class="nei-duo">2015-05-05</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="nei-shi">
			<ul>
				<li>
					<h4>企业简介</h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_03.jpg" class="nei-xian">

					<VIDEO src="movie.ogg" controls="controls" class="nei-xian-tu"></VIDEO>
				</li>
				<li class="shi-zhuan">
					<h4>企业简介</h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_07.jpg" class="shi-xian">

					<div class="shi-top">
					<a href="" class="xin-left"><img src="/Public/Home/PC/images/zhonglai/shou_39.jpg"></a>
					<a href="" class="xin-right"><img src="/Public/Home/PC/images/zhonglai/shou_41.jpg"></a>
					<a href="" class="xin-left"><img src="/Public/Home/PC/images/zhonglai/shou_45.jpg"></a>
					<a href="" class="xin-right"><img src="/Public/Home/PC/images/zhonglai/shou_47.jpg"></a>
					</div>

				</li>
				<li class="shi-re">
					<h4>热点链接</h4>
					<img src="/Public/Home/PC/images/zhonglai/xian_09.jpg" class="re-xian">
					<div  class="shi-top">
						<a href="" class="shi-dian1">OA办公</a>
						<a href="" class="shi-dian2">招标平台</a>
					</div>
				</li>
			</ul>
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
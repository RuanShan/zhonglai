<?php
namespace Home\Controller;
use Home\Common\CommonController;
class IndexController extends CommonController {
	public function isMobile()
	{
		// 如果有HTTP_X_WAP_PROFILE则一定是移动设备
		if (isset ($_SERVER['HTTP_X_WAP_PROFILE']))
		{
			return true;
		}
		// 如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息
		if (isset ($_SERVER['HTTP_VIA']))
		{
			// 找不到为flase,否则为true
			return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
		}
		// 脑残法，判断手机发送的客户端标志,兼容性有待提高
		if (isset ($_SERVER['HTTP_USER_AGENT']))
		{
			$clientkeywords = array ('nokia',
				'sony',
				'ericsson',
				'mot',
				'samsung',
				'htc',
				'sgh',
				'lg',
				'sharp',
				'sie-',
				'philips',
				'panasonic',
				'alcatel',
				'lenovo',
				'iphone',
				'ipod',
				'blackberry',
				'meizu',
				'android',
				'netfront',
				'symbian',
				'ucweb',
				'windowsce',
				'palm',
				'operamini',
				'operamobi',
				'openwave',
				'nexusone',
				'cldc',
				'midp',
				'wap',
				'mobile'
				);
			// 从HTTP_USER_AGENT中查找手机浏览器的关键字
			if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT'])))
			{
				return true;
			}
		}
		// 协议法，因为有可能不准确，放到最后判断
		if (isset ($_SERVER['HTTP_ACCEPT']))
		{
			// 如果只支持wml并且不支持html那一定是移动设备
			// 如果支持wml和html但是wml在html之前则是移动设备
			if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html'))))
			{
				return true;
			}
		}
		return false;
	}
	public function index(){
		$Config     = M('Config');
		$Article    = M('Article');
		$Column     = M('Column');

		//配置
		$config_data = $Config->where('id=1')->find();
		$this->assign('config_data',$config_data);


		//集团新闻
		$jituan_list = $Article->where('column_id=20')->order('id DESC')->limit(8)->select();
		$this->assign('jituan_list',$jituan_list);

		//行业动态
		$hangye_list = $Article->where('column_id=22')->order('id DESC')->limit(8)->select();
		$this->assign('hangye_list',$hangye_list);

		//下属动态
		$xiashu_list = $Article->where('column_id=35')->order('id DESC')->limit(8)->select();
		$this->assign('xiashu_list',$xiashu_list);

		//党群工作
		$dangqun_list = $Article->where('column_id=17')->order('id DESC')->limit(8)->select();
		$this->assign('dangqun_list',$dangqun_list);

		//子菜单
		$child_columns = $Column->where(array('pid'=>array('gt', 0)))->select();
		$this->assign('child_columns',$child_columns);

		// 产业中心
		$chanye_columns = array_filter($child_columns, function($item){
                 return $item['pid'] == 2;
    });
		$this->assign('chanye_columns',$chanye_columns);

		if($this->isMobile()){
			$MobSlide     = M('MobSlide');
			$mob_slide_list = $MobSlide->select();
			$this->assign('mob_slide_list',$mob_slide_list);

			$this->display('MOB/Index/index');
		}else{
			$Slide     = M('Slide');
			$slide_list = $Slide->select();
			$this->assign('slide_list',$slide_list);

			$this->display('PC/Index/index');
		}
	}

	public function column(){
		$Config  = M('Config');
		$Column  = M('Column');
		$Article  = M('Article');

		//配置
		$config_data = $Config->where('id=1')->find();

		$this->assign('config_data',$config_data);

		//导航子菜单
		$child_columns = $Column->where(array('pid'=>array('gt', 0)))->select();
		$this->assign('child_columns',$child_columns);

		$column_data = $Column->where('id='.I('column_id'))->find();
		$this->assign('column_data',$column_data);

		//栏目子栏目
		if( $column_data['pid'] > 0){
			//当前栏目的所有兄弟栏目, 如：中莱建筑
			$column_list = $Column->where(array('pid'=>array('eq',$column_data['pid'])))->select();
			$this->assign('column_list',$column_list);
		}else{
			//当前栏目的子栏目， 如：产业中心
			$column_list = $Column->where(array('pid'=>array('eq',$column_data['id'])))->select();
			$this->assign('column_list',$column_list);
		}

		$column_parent = $Column->where('id='.$column_data['pid'])->find();
		$this->assign('column_parent',$column_parent);
		$column_parent_name = "";
		if( !empty($column_parent)){
			$column_parent_name = $column_parent['name'];
		}
		$this->assign('column_parent_name',$column_parent_name);

		$column_map['column_id'] = array('eq',I('column_id'));

		$count      = $Article->where($column_map)->count();
		$Page       = new \Think\Page($count,24);
		$show       = $Page->show();

		$list = $Article->order('id DESC')->where($column_map)->limit($Page->firstRow.','.$Page->listRows)->select();

		$this->assign('list',$list);
		$this->assign('page',$show);

		if($this->isMobile()){
			if( I('column_id')== 2 ){
				//产业中心
				$this->display('MOB/Index/parent_column');
			}else if( I('column_id') == 21 ){
				//公司视频
				$this->display('MOB/Index/column_video_list');

			}else if( I('column_id')== 17 || I('column_id')== 20 || I('column_id')== 30 || I('column_id')== 22 ){
				//党群工作,集团新闻,在线招聘, 行业动态
				$this->display('MOB/Index/column_article_list');
			}else{
				$this->display('MOB/Index/column');
			}
		}else{
			if( I('column_id')== 17 || I('column_id')== 20 || I('column_id')== 22 ){
				$this->display('PC/Index/column_article_list');
			}else if( I('column_id') == 30 ){
				//在线招聘
				$this->display('PC/Index/column_zhaopin');

			}else{
				$this->display('PC/Index/column');
			}
		}
	}
	public function article(){
		$Config  = M('Config');
		$Column  = M('Column');
		$Article = M('Article');

		//配置
		$config_data = $Config->where('id=1')->find();

		$column_data = $Column->where('id='.I('column_id'))->find();

		$Article->where('id='.I('id'))->setInc('click');

		$data = $Article->where('id='.I('id'))->find();
		if( !empty($data['keywords'])){
			$config_data['keywords'] = $data['keywords'];
		}
		if( !empty($data['description'])){
			$config_data['description'] = $data['description'];
		}
		$data['content'] = stripslashes(htmlspecialchars_decode($data['content']));

		$this->assign('config_data',$config_data);

		$this->assign('column_data',$column_data);

		$this->assign('data',$data);

		//子菜单
		$child_columns = $Column->where(array('pid'=>array('gt', 0)))->select();
		$this->assign('child_columns',$child_columns);

		if($this->isMobile()){
			if(true){
				$this->display('MOB/Index/article');

			}else{
				$column_list = $Column->where(array('id'=>array('in','14,15,16,21,22')))->select();
				$this->assign('column_list',$column_list);

				$prev_data = $Article->where('id<'.I('id').' AND column_id='.$column_data['id'])->order('id DESC')->limit(1)->find();
				$this->assign('prev_data',$prev_data);

				$next_data = $Article->where('id>'.I('id').' AND column_id='.$column_data['id'])->order('id ASC')->limit(1)->find();
				$this->assign('next_data',$next_data);

				$this->display('MOB/Index/news_article');
			}
		}else{
			if(I('column_id')==1 || I('column_id')==7){
				//关于我们, 联系我们
				$column_map['column_id'] = array('eq',I('column_id'));

				$list = $Article->order('post_time DESC')->where($column_map)->limit($Page->firstRow.','.$Page->listRows)->select();
				$this->assign('list',$list);
				$this->display('PC/Index/article');
			}else if(I('column_id')>=8 && I('column_id')<=19){
				//产业中心
				$column_parent = $Column->where('id='.$column_data['pid'])->find();
				$column_parent_name = "";
				if( !empty($column_parent)){
					$column_parent_name = $column_parent['name'];
				}
				$this->assign('column_parent',$column_parent);
				$this->assign('column_parent_name',$column_parent_name);

				$column_map['pid'] = array('eq',$column_data['pid']);
				$column_list = $Column->where($column_map)->select();
				$this->assign('column_list',$column_list);
				$this->display('PC/Index/chanye_article');
			}else{

				$column_parent = $Column->where('id='.$column_data['pid'])->find();
				$this->assign('column_parent',$column_parent);
				$column_parent_name = "";
				if( !empty($column_parent)){
					$column_parent_name = $column_parent['name'];
				}
				$this->assign('column_parent_name',$column_parent_name);

				$prev_data = $Article->where('id<'.I('id').' AND column_id='.$column_data['id'])->order('id DESC')->limit(1)->find();
				$this->assign('prev_data',$prev_data);

				$next_data = $Article->where('id>'.I('id').' AND column_id='.$column_data['id'])->order('id ASC')->limit(1)->find();
				$this->assign('next_data',$next_data);

				$this->display('PC/Index/news_article');
			}
		}
	}

	public function search()
  {
		$Config  = M('Config');
		$Column  = M('Column');
		$Article  = M('Article');

		//配置
		$config_data = $Config->where('id=1')->find();

		$this->assign('config_data',$config_data);

		//导航子菜单
		$child_columns = $Column->where(array('pid'=>array('gt', 0)))->select();
		$this->assign('child_columns',$child_columns);


		$keyword  = isset($_GET['keyword'])?$_GET['keyword'] : '';

		$where = array();
		if($keyword){
			 $where['title'] = array('like','%'.$keyword.'%');
		}
		$count = $Article->where($where)->order('id DESC')->count();
		$Page       = new \Think\Page($count,24);
		$show       = $Page->show();

		//$model->query('select * from user where id=%d and status=%d',$id,$status);

    //$sql = "SELECT * FROM think_article WHERE match(name,title) against('%s') offset %d limit %d;"
	  $list = $Article->where($where)->order('id DESC')->limit($Page->firstRow.','.$Page->listRows)->select();
		foreach ($list as &$data) {
		  $data['content'] = stripslashes(htmlspecialchars_decode($data['content']));
    }
	  $this->assign('list',$list);
		$this->assign('page',$show);

		$this->display('PC/Index/search');
  }


}

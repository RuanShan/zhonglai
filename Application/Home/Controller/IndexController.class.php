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
		$ObtainLinks    = M('ObtainLinks');
		$EducationLinks    = M('EducationLinks');

		//配置
		$config_data = $Config->where('id=1')->find();
		$this->assign('config_data',$config_data);


		//热门专业
		$major_list = $Article->where('column_id=11')->order('id DESC')->limit(12)->select();
		$this->assign('major_list',$major_list);

		//新闻栏目
		$news_column = $Column->where(array('id'=>array('in','14,15,16,21,22')))->select();
		$this->assign('news_column',$news_column);

		//校园新闻
		$campus_list = $Article->where('column_id=14')->order('id DESC')->limit(5)->select();
		$this->assign('campus_list',$campus_list);

		//就业咨询
		$consult_list = $Article->where('column_id=15')->order('id DESC')->limit(6)->select();
		$this->assign('consult_list',$consult_list);

		//文化生活
		$culture_list = $Article->where('column_id=16')->order('id DESC')->limit(5)->select();
		$this->assign('culture_list',$culture_list);

		//毕业生风
		$student_list = $Article->where('column_id=17')->order('id DESC')->limit(20)->select();
		$this->assign('student_list',$student_list);

		//就业合作伙伴
		$obtain_links_list = $ObtainLinks->order('id DESC')->limit(10)->select();
		$this->assign('obtain_links_list',$obtain_links_list);

		//教育合作伙伴
		$education_links_list = $EducationLinks->order('id DESC')->limit(5)->select();
		$this->assign('education_links_list',$education_links_list);


		//教育科研
		$education_list = $Article->where('column_id=21')->order('id DESC')->limit(6)->select();
		$this->assign('education_list',$education_list);
		//奖励资助
		$prize_list = $Article->where('column_id=22')->order('id DESC')->limit(5)->select();
		$this->assign('prize_list',$prize_list);


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

		$column_data = $Column->where('id='.I('column_id'))->find();
		$this->assign('column_data',$column_data);

		$column_list = $Column->where(array('pid'=>array('eq',$column_data['pid'])))->select();
		$this->assign('column_list',$column_list);


		$column_map['column_id'] = array('eq',I('column_id'));

		$count      = $Article->where($column_map)->count();
		$Page       = new \Think\Page($count,24);
		$show       = $Page->show();

		$list = $Article->order('id DESC')->where($column_map)->limit($Page->firstRow.','.$Page->listRows)->select();

		$this->assign('list',$list);
		$this->assign('page',$show);

		if($this->isMobile()){
			$this->display('MOB/Index/column');
		}else{
			$this->display('PC/Index/column');
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

		if($this->isMobile()){
			if(I('column_id')==1||I('column_id')==3||I('column_id')==4||I('column_id')==5||I('column_id')==6||I('column_id')==7||I('column_id')==9){
				$this->display('MOB/Index/article');
			}else if(I('column_id')==8){
				//热门专业
				$major_list = $Article->where('column_id=11')->order('id DESC')->select();
				$this->assign('major_list',$major_list);

				//我们的优势
				$superiority_list = $Article->where('column_id=18')->order('id DESC')->select();
				$this->assign('superiority_list',$superiority_list);

				$this->display('MOB/Index/junior_college_article');
			}else if(I('column_id')==2){
				$this->display('MOB/Index/study_article');
			}else  if(I('column_id')==10){
				if(I('id')==10){
					$this->display('MOB/Index/overseas1_article');
				}else if(I('id')==11){
					$this->display('MOB/Index/overseas3_article');
				}else if(I('id')==12){
					$this->display('MOB/Index/overseas2_article');
				}
			}else if(I('column_id')==11){
				//热门专业
				$major_list = $Article->where('column_id=11')->order('id DESC')->select();
				$this->assign('major_list',$major_list);
				$this->display('MOB/Index/major_article');
			}else if(I('column_id')==12){
				$this->display('MOB/Index/plan_article');
			}else if(I('column_id')==13){
				$this->display('MOB/Index/reason_article');
			}else if(I('column_id')==19){
				$this->display('MOB/Index/qrcode');
			}else if(I('column_id')==20){
				$this->display('MOB/Index/learn_in_japan');
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
			if(I('column_id')==1||I('column_id')==3||I('column_id')==4||I('column_id')==5||I('column_id')==6||I('column_id')==7||I('column_id')==9){
				//关于我们
				$column_map['column_id'] = array('eq',I('column_id'));

				$list = $Article->order('post_time DESC')->where($column_map)->limit($Page->firstRow.','.$Page->listRows)->select();
				$this->assign('list',$list);
				$this->display('PC/Index/article');
			}else if(I('column_id')>=8 && I('column_id')<=16){
				//产业中心
				$column_map['pid'] = array('eq',2);
				$column_list = $Column->where($column_map)->select();
				$this->assign('column_list',$column_list);
				$this->display('PC/Index/column');
			}else{
				$column_list = $Column->where(array('id'=>array('in','14,15,16,21,22')))->select();
				$this->assign('column_list',$column_list);

				$prev_data = $Article->where('id<'.I('id').' AND column_id='.$column_data['id'])->order('id DESC')->limit(1)->find();
				$this->assign('prev_data',$prev_data);

				$next_data = $Article->where('id>'.I('id').' AND column_id='.$column_data['id'])->order('id ASC')->limit(1)->find();
				$this->assign('next_data',$next_data);

				$this->display('PC/Index/news_article');
			}
		}
	}
}

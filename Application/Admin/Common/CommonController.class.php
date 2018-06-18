<?php
namespace Admin\Common;
use Common\Controller\AuthController;
class CommonController extends AuthController {
	//侧边栏列表
	public function side_list(){
		$Column = M('Column');
		
		$column_list = $Column->select();
		
		foreach($column_list as $key=>$val){
			$column_list[$key]['fid'] = $val['pid'];
		}
		
		$LimitlessSort = new \Think\LimitlessSort();
		
		$aort_list = $LimitlessSort->get_tree_option($column_list,0);
		
		foreach($aort_list as $key=>$val){
			for($i=0; $i<$val['depth']; $i++){
				$aort_list[$key]['depth_str'].= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			}
		}
		
		$this->assign('aort_list',$aort_list);
	}
}
?>
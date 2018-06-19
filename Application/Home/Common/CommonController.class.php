<?php
namespace Home\Common;
use Think\Controller;
class CommonController extends Controller {
	//侧边栏列表
	public function _initialize(){
		$Column     = M('Column');
		$column_list = $Column->select();
		foreach($column_list as $key=>$val){
			if($val['pid']==2){
				$goods_column_list[$val['id']] = $val;
			}
			
			if($val['pid']==3){
				$project_column_list[$val['id']] = $val;
			}
			
			$column_id_list[$val['id']] = $val;
		}
		
		
		
		foreach($goods_column_list as $key=>$val){
			foreach($column_id_list as $c_key=>$c_val){
				if($val['id']==$c_val['pid']){
					$goods_column_list[$key]['son'][$c_val['id']] = $c_val;
					
					$goods_column_son[$c_val['id']] =  $c_val;
				}
			}
		}
		
		$this->assign('goods_column_list',$goods_column_list);
		
		$this->assign('project_column_list',$project_column_list);
	}
}
?>
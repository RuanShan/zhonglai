<?php
namespace Home\Controller;
use Home\Common\CommonController;
class ApplicantController extends CommonController {

		//用户申请工作, ajax post 请求
		public function post(){
			$Applicant = M('Applicant');

			$data = array(
				'fullname'     => I('fullname'),
				'position'    => I('position'), //职位
				'id_num'        => I('id_num'),   //身份证
				'id_address'        => I('id_address'),   //身份证
				'address'    => I('address'),
				'mobile' => I('mobile'),   //联系方式
				'major'       => I('major'),   //专业
				'degree'      => I('degree'),  //学历
				'gender'     => I('gender'),
				'married'     => I('married'),  //婚否
				'graduated_from'    => I('graduated_from'),
				'qualification'       => I('qualification'),
				'self_evaluation'   => I('self_evaluation'),
			);
			if(strlen(I('graduated_at') ) >0){
				$data['graduated_at'] = I('graduated_at').' '.date('H:i:s');
			}
			for ($i=1; $i<=5; $i++) {
				if( I('exp'.$i.'_company')){
					if( strlen(I('exp'.$i.'_start_at') ) >0 ){
						$data['exp'.$i.'_start_at']=I('exp'.$i.'_start_at').' '.date('H:i:s');
					}
					if( strlen(I('exp'.$i.'_start_at') ) >0 ){
						$data['exp'.$i.'_end_at']=I('exp'.$i.'_end_at').' '.date('H:i:s');
					}
				 	$data['exp'.$i.'_company']=I('exp'.$i.'_company');
				 	$data['exp'.$i.'_position']=I('exp'.$i.'_position');
				 	$data['exp'.$i.'_responsibility']=I('exp'.$i.'_responsibility');
				}

			}


			$result = $Applicant->add($data);
			if($result){

				$ret = think_send_mail( "david@getstore.cn", "test", "test title", "this is test body");

				$this->AjaxReturn( array('ret'=>1) );
			}else{
				$this->AjaxReturn( array('ret'=>0) );
			}
		}

		public function secret_inner_show(){
			$Applicant = M('Applicant');
			$id = I('id');
			$data = $Applicant->where('id='.$id)->find();
			$this->assign('data',$data);


			$this->display('PC/Applicant/secret_inner_show');

    }

}

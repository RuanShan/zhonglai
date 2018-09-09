<?php
namespace Home\Controller;
use Home\Common\CommonController;
class ApplicantController extends CommonController {

		//用户申请工作, ajax post 请求
		public function post(){
			$Config  = M('Config');
			$Applicant = M('Applicant');
			//配置
			$config_data = $Config->where('id=1')->find();


			$data = array(
				'fullname'     => I('fullname'),
				'position'    => I('position'), //职位
				'gender'     => I('gender'),   // 性别
				'birth'     => I('birth'),   // 出生日期
				'nation'     => I('nation'),   // 民族
				'blood_type'     => I('blood_type'),   // 血型
				'height'     => I('height'),   // 身高
				'id_num'        => I('id_num'),   //身份证
				'native_place'     => I('native_place'),   // 籍贯
				'political_status'     => I('political_status'),   // 政治面貌
				'health_status'     => I('health_status'),  //健康状况
				'married'     => I('married'),  //婚否
				'oversea'     => I('oversea'),  //是否海外留学生
				'graduated_from'    => I('graduated_from'), //毕业院校
				'major'       => I('major'),   //专业
				'degree'      => I('degree'),  //学位
				'graduated_state'     => I('graduated_state'),  //毕业生性质
				'research_area'    => I('research_area'),//研究方向
				'foreign_language'    => I('foreign_language'),//外语等级
				'zhonglai_relative'    => I('zhonglai_relative'), //亲戚是否中莱任职
				'zhonglai_relative_info'    => I('zhonglai_relative_info'),
				'mobile' => I('mobile'),   //联系方式
				'second_contact'        => I('second_contact'),   //紧急联系人
				'email'        => I('email'),   //电子邮件
				'id_address'        => I('id_address'),   //身份证住址
				'hobby'        => I('hobby'),   //爱好特长
				'main_courses'       => I('main_courses'),//主要课程
				'activity_and_practice'       => I('activity_and_practice'), //社团活动或社会实践
				'prize_and_honor'       => I('prize_and_honor'), //所获的主要奖励和荣誉
				'achievements'       => I('achievements'), //学习期间主要科研成果
				'qualification'       => I('qualification'),//所获的资格证书及编号
				'reason'       => I('reason'), //说明您选择中莱的理由
				'work_other_city'       => I('work_other_city'), //1、	是否考虑接受集团外派到龙口市外工作
				'native_residence'       => I('native_residence'), //2、	是否拥有龙口市常住居民户口
				'self_evaluation'   => I('self_evaluation'),//您如何规划自己的职业生涯
			);
			if(strlen(I('graduated_at') ) >0){
				$data['graduated_at'] = I('graduated_at');
			}
			for ($i=1; $i<=4; $i++) {
				if( I('exp'.$i.'_company')){
					if( strlen(I('exp'.$i.'_start_at') ) >0 ){
						$data['exp'.$i.'_start_at']=I('exp'.$i.'_start_at');
					}
					if( strlen(I('exp'.$i.'_start_at') ) >0 ){
						$data['exp'.$i.'_end_at']=I('exp'.$i.'_end_at');
					}
				 	$data['exp'.$i.'_company']=I('exp'.$i.'_company');
				 	$data['exp'.$i.'_position']=I('exp'.$i.'_position');
					$data['exp'.$i.'_responsibility']=I('exp'.$i.'_responsibility');
					$data['exp'.$i.'_fulltime']=I('exp'.$i.'_fulltime');
				}
			}
			//教育背景
			for ($i=1; $i<=3; $i++) {
				if( I('ed'.$i.'_school')){
					if( strlen(I('ed'.$i.'_start_at') ) >0 ){
						$data['ed'.$i.'_start_at']=I('ed'.$i.'_start_at');
					}
					if( strlen(I('ed'.$i.'_start_at') ) >0 ){
						$data['ed'.$i.'_end_at']=I('ed'.$i.'_end_at');
					}
					$data['ed'.$i.'_school']=I('ed'.$i.'_school');
					$data['ed'.$i.'_department']=I('ed'.$i.'_department');
					$data['ed'.$i.'_major']=I('ed'.$i.'_major');
					$data['ed'.$i.'_academic']=I('ed'.$i.'_academic');
					$data['ed'.$i.'_degree']=I('ed'.$i.'_degree');
					$data['ed'.$i.'_position']=I('ed'.$i.'_position');
				}
			}
			//家庭成员
			for ($i=1; $i<=3; $i++) {
				if( I('fam'.$i.'_name')){
					$data['fam'.$i.'_relative']=I('fam'.$i.'_relative');
					$data['fam'.$i.'_name']=I('fam'.$i.'_name');
					$data['fam'.$i.'_company']=I('fam'.$i.'_company');
					$data['fam'.$i.'_position']=I('fam'.$i.'_position');
				}
			}
			//dump($_FILES  );

			if($_FILES['pic']['name']!=''){

				$upload = new \Think\Upload();// 实例化上传类
				$upload->maxSize   =     3145728 ;// 设置附件上传大小
				$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
				$upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
				$upload->savePath  =     ''; // 设置附件上传（子）目录

				$image = new \Think\Image();
				$image->open($_FILES['pic']['tmp_name']);
				$image->thumb(1920, 793)->save($_FILES['pic']['tmp_name']);

				// 上传文件
				$info   =   $upload->upload();
				//dump($info  );

				if(!$info) {// 上传错误提示错误信息
					$this->error($upload->getError());
				}else{// 上传成功
					$data['pic'] = $info['pic']['savepath'].$info['pic']['savename'];
				}
			}

			$result = $Applicant->add($data);
			if($result){
        if( !empty($config_data['qq_2'])){
          $link = U('Home/Applicant/secret_inner_show', array('id'=>$result), 'html' , true);
					$str = <<<ET
收到新的应聘简历，请查看。查看地址如下：<br>
<a target="_blank" href="$link"> $link </a>
ET;
					$ret = think_send_mail( "sdzljt@163.com", "在线应聘", "网站在线应聘简历", $str);
				}

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

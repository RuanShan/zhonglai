<?php
namespace Admin\Controller;
use Admin\Common\CommonController;
class SlideController extends CommonController {
	public function index(){
		redirect(U('Slide/lists'));
	}
	public function lists(){
		$Slide = M('Slide');
		
		$count      = $Slide->count();
		$Page       = new \Think\Page($count,25);
		$show       = $Page->show();
		
		$list = $Slide->order('id DESC')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);
		$this->assign('page',$show);
		
		$this->display();
	}
	public function form($type,$id=0){
		if($type=='edit'){
			$Slide = M('Slide');
			$data = $Slide->where('id='.$id)->find();
			$this->assign('data',$data);
		}
		$this->display();
	}
	public function post($type){
		$Slide = M('Slide');
		
		$data = array(
			'title'      => I('title'),
			'url'        => I('url')
		);
		
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
			
			if(!$info) {// 上传错误提示错误信息
				$this->error($upload->getError());
			}else{// 上传成功
				$data['pic'] = $info['pic']['savepath'].$info['pic']['savename'];
			}
		}
		
		if($type=='add'){
			
			$result = $Slide->add($data);
			if($result){
				$this->success('添加成功！');
			}else{
				$this->error('添加失败！');
			}
		}else if($type=='edit'){
			if($_FILES['pic']['name']!=''){
				$pic = $Slide->where('id='.I('id'))->getField('pic');
				@unlink('./Uploads/'.$pic);
			}
			
			$data['id'] = I('id');
			$result = $Slide->save($data);
			if($result){
				$this->success('修改成功！');
			}else{
				$this->error('修改失败！');
			}
		}
	}
	public function delete(){
		$Slide = M('Slide');
		$pic = $Slide->where('id='.I('id'))->getField('pic');
		@unlink('./Uploads/'.$pic);
		$result = $Slide->delete(I('id'));
		if($result){
			$this->success('删除成功！',U('Slide/lists'));
		}
	}
}
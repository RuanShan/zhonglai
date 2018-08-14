<?php
// 集团荣誉
namespace Admin\Controller;
use Admin\Common\CommonController;
class ObtainLinksController extends CommonController {
	public function index(){
		redirect(U('ObtainLinks/lists'));
	}
	public function lists(){
		$ObtainLinks = M('ObtainLinks');

		$count      = $ObtainLinks->count();
		$Page       = new \Think\Page($count,50);
		$show       = $Page->show();

		$list = $ObtainLinks->order('position ASC')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);
		$this->assign('page',$show);

		$this->display();
	}
	public function form($type,$id=0){
		if($type=='edit'){
			$ObtainLinks = M('ObtainLinks');
			$data = $ObtainLinks->where('id='.$id)->find();
			$this->assign('data',$data);
		}
		$this->display();
	}
	public function post($type){
		$ObtainLinks = M('ObtainLinks');

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
      $max = $ObtainLinks->max('position');
			$data['position'] = $max+1;
			$result = $ObtainLinks->add($data);
			if($result){
				$this->success('添加成功！');
			}else{
				$this->error('添加失败！');
			}
		}else if($type=='edit'){
			if($_FILES['pic']['name']!=''){
				$pic = $ObtainLinks->where('id='.I('id'))->getField('pic');
				@unlink('./Uploads/'.$pic);
			}

			$data['id'] = I('id');
			$result = $ObtainLinks->save($data);
			if($result){
				$this->success('修改成功！');
			}else{
				$this->error('修改失败！');
			}
		}
	}

	public function move($id, $position){
		$ObtainLinks = M('ObtainLinks');
		//$position = I('position');
		//$id = I('id');
		$data = $ObtainLinks->where('id='.$id)->find();
    if( $position == 'up'){
			$ObtainLinks->where('position='.($data['position']-1))->setInc('position',1);
			$ObtainLinks->where('id='.$id)->setDec('position',1);
		}else if ( $position == 'down'){
			$ObtainLinks->where('position='.($data['position']+1))->setDec('position',1);
			$ObtainLinks->where('id='.$id)->setInc('position',1);
		}else if ( $position == 'top'){
			$ObtainLinks->where('id='.$id)->setField('position',1);
			$ObtainLinks->where('id!='.($data['id']))->setInc('position',1);
		}else if ( $position == 'bottom'){
			$max = $ObtainLinks->max('position');
			$ObtainLinks->where('id='.$id)->setField('position',$max);
			$ObtainLinks->where('id!='.($data['id']))->setDec('position',1);
		}
		dump($data);
		dump($position);

		$this->ajaxReturn($data);

	}

	public function delete(){
		$ObtainLinks = M('ObtainLinks');
		$pic = $ObtainLinks->where('id='.I('id'))->getField('pic');
		@unlink('./Uploads/'.$pic);
		$result = $ObtainLinks->delete(I('id'));
		if($result){
			$this->success('删除成功！',U('ObtainLinks/lists'));
		}
	}
}

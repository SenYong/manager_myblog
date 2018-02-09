<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 18-1-31
 * Time: 下午14:00
 */
 namespace app\admin\controller;
 use app\admin\model\SayModel;
 use think\Request;
 use think\Controller;

 class Say extends Controller
 {
    /*
     * 图片上传
     */
    public function uploadImg(){
        if(request()->isPost()){
            $file = input('param.image');
            $url = explode(",", $file);
            strpos($url[0], 'png') ? $filename = md5(time()) . '.png' : $filename = md5(time()) . '.jpg';
            $imgurl = '/public/static/sayImg/' . $filename;
            $filepath = ROOT_PATH . $imgurl;
            $url[1] = base64_decode(str_replace(" ", "+",$url[1]));
            if(file_put_contents($filepath,$url[1])){
               return ['errcode'=>0, "msg"=>"图片上传成功", "filepath"=>$imgurl];
            }else{
               return ['errcode'=>2, 'msg'=>'图片上传失败'];
            }
        }else{
            return ['errcode'=>1, "msg"=>"提交方式不正确"];
        }
    }

    /*
     * 新增说说
     */
    public function addSay(){
       if(request()->isPost()){
         $data = input('param.');
         $data['s_ip'] = request()->ip();
         $data['s_system'] = 'Win 7';
         $say = new SayModel();
         if($say->addSay($data)){
            return ['errcode'=>0, 'msg'=>"新增说说成功"];
         }else{
            return ['errcode'=>2, "msg"=>"新增说说失败"];
         }
       }else{
         return ['errcode'=>1, "msg"=>"提交方式不正确"];
       }
    }

    /*
     * 获取说说列表
     */
    public function selectSay(){
        if(request()->isPost()){
           $say = new SayModel();
           $data = $say->selectSay();
           return ['errcode'=>0, 'data'=>$data];
        }else{
           return ['errcode'=>1, "msg"=>"提交方式不正确"];
        }
    }

    /*
     * 获取单条说说
     */
    public function getOneSay(){
        if(request()->isPost()){
           $id = input('param.id');
           $say = new SayModel();
           $data = $say->getOneSay($id);
           if($data){
              return ['errcode'=>0, "msg"=>"获取说说成功", "data"=>$data];
           }else{
              return ['errcode'=>2, "msg"=>"获取说说失败"];
           }
        }else{
            return ['errcode'=>1, "msg"=>"提交方式不正确"];
        }
    }

    /*
     * 修改说说
     */
    public function updateSay(){
      if(request()->isPost()){
        $data = input('param.');
        $say = new SayModel();
        if($say->updateSay($data)){
          return ['errcode'=>0, "msg"=>"修改成功"];
        }else{
          return ['errcode'=>2, "msg"=>"修改失败"];
        }
      }else{
        return ['errcode'=>1, "msg"=>"提交方式不正确"];
      }
    }

    /*
     * 删除说说
     */
    public function deleteSay(){
      if(request()->isPost()){
        $id = input('param.id');
        $say = new SayModel();
        if($say->delSay($id)){
           return ['errcode'=>0, 'msg'=>'删除成功'];
        }else{
           return ['errcode'=>2, 'msg'=>'删除失败'];
        }
      }else{
        return ['errcode'=>1, "msg"=>'提交方式不正确'];
      }
    }
 }
?>
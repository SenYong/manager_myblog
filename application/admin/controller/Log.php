<?php
  /**
 * Created by PhpStorm.
 * User: root
 * Date: 18-2-1
 * Time: 下午3:40
 */
 namespace app\admin\controller;
 use app\admin\model\LogModel;
 use think\Controller;

 class Log extends Controller
 {
    /*
     * 图片上传
     */
    public function uploadImg(){
       if(request()->isPost()){
          $file = input('param.image');
          $url = explode(",", $file);
          strpos($url[0], 'png') ? $filename = md5(time()) . '.png' : $filename = md5(time()) . '.jpg';
          $imgurl = '/public/static/logImg/' . $filename;
          $filepath = ROOT_PATH . $imgurl;
          $url[1] = base64_decode(str_replace(" ", "+",$url[1]));
          if(file_put_contents($filepath, $url[1])){
            return ['errcode'=>0, "msg"=>"图片上传成功", "filename"=>$imgurl];
          }else{
            return ['errcode'=>2, "msg"=>"图片上传不成功"]; 
          }
          
       }else{
          return['errcode'=>1, "msg"=>"提交方式不正确"];
       }
    }

    /*
     * 添加日志
     */
    public function addLog(){
       if(request()->isPost()){
         $data = input('param.');
         $data['l_content'] = '发布日志内容';
         $data['l_system'] = 'win 7';
         $data['l_ip'] = request()->ip(); 
         $log = new LogModel();
         if($log->addLog($data)){
            return ['errcode'=>0, "msg"=>"添加日志成功"];
         }else{
            return ['errcode'=>2, "msg"=>"添加日志失败"];
         }
       }else{ 
         return ['errcode'=>1, "msg"=>"提交方式不正确"];
       }
    }

    /*
     * 获取所有日志
     */
    public function selectLog(){
        if(request()->isPost()){
           $log = new LogModel();
           $data = $log->selectLog();
           if($data != null){
              return ['errcode'=>0, "msg"=>"获取日志成功", "data"=>$data];
           }else{
              return ['errcode'=>2, "msg"=>"获取日志失败"];
           } 
        }else{
           return ['errcode'=>1, "msg"=>"提交方式不正确"];
        }
    }

    /*
     * 获取单条日志
     */
    public function getOneLog(){
       if(request()->isPost()){
         $id = input('param.id');
         $log = new LogModel();
         $data = $log->getOneLog($id);
         if($data){
            return ['errcode'=>0, "msg"=>"获取日志成功", "data"=>$data];
         }else{
            return ['errcode'=>2, "msg"=>"获取日志失败"];
         }
       }else{
         return ['errcode'=>1, "msg"=>"提交方式不正确"];
       }
    }

    /*
     *修改日志 
     */
    public function updateLog(){
      if(request()->isPost()){
        $data = input('param.');
        $log = new LogModel();
        if($log->updateLog($data)){
           return ['errcode'=>0, "msg"=>"修改日志成功"];
        }else{
           return ['errcode'=>2, 'msg'=>'修改日志失败'];
        }
      }else{
        return ['errcode'=>1, "msg"=>'提交方式不正确'];
      }
    }

    /*
     * 删除日志
     */
    public function deleteLog(){
      if(request()->isPost()){
        $id = input('param.id');
        $log = new LogModel();
        if($log->delLog($id)){
          return ['errcode'=>0, 'msg'=>'删除日志成功'];
        }else{
          return ['errcode'=>2, 'msg'=>'删除日志失败'];
        }
      }else{
        return ['errcode'=>1, 'msg'=>'提交方式不正确'];
      }
    }

 }
?>



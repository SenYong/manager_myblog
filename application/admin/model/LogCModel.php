<?php
  namespace app\admin\model;
  use think\Model;

  class LogCModel extends Model
  {
      protected $table = 'fh_log_c';
      /*
       * 日志评论回复
       */
      public function replyLogs($data){
         return $this->update($data);
      }
  } 
?>
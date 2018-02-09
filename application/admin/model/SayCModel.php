<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 18-1-12
 * Time: 下午2:33
 */
 namespace app\admin\model;
 use think\Model;

 class SayCModel extends Model{
     protected $table = 'fh_say_c';

     /*
     * 获取说说新的评论数
     */
     public function saycNum(){
         return $this->where("id","")->count();
     }
 }
<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 18-1-16
 * Time: 下午2:18
 */
namespace app\admin\model;
use think\Model;

class BoardModel extends Model{
    /*
     * 定义留言板表
     */
    protected $table = 'fh_board';

    /*
     * 获取发布的留言数据
     */
    public function boardNum(){
        return $this->count();
    }
}
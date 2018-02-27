<?php
  /**
 * Created by PhpStorm.
 * User: root
 * Date: 18-02-27
 * Time: 下午14:10
 */
 namespace app\admin\model;
 use think\Model;

 class ArticleCModel extends Model
 {
    /*
     * 定义文章评论表名
     */
    protected $table = 'fh_article_c';
    
    /*
     * 文章评论回复
    */
    public function replyArts($data){
        return $this->update($data);
    } 
 }
?>
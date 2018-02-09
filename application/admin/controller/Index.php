<?php
namespace app\admin\controller;
use app\admin\model\BoardModel;
use app\admin\model\SayModel;
use app\admin\model\ArticleModel;
use app\admin\model\LogModel;
use think\Controller;
use org\Verify;

class Index extends Controller
{
    public function index()
    {
        $data['username'] = input('param.username');
        $data['password'] = input('param.password');
        return ['data'=>$data,'code'=>1,'message'=>'操作完成'];
    }

    public function publishNum()
    {
        if (request()->isPost()) {
            $artModel = new ArticleModel();
            $sayModel = new SayModel();
            $logModel = new LogModel();
            $boardModel = new BoardModel();
            $data['artNum'] = $artModel->artNum();
            $data['sayNum'] = $sayModel->sayNum();
            $data['logNum'] = $logModel->LogNum();
            $data['boardNum'] = $boardModel->boardNum();
            return ['errcode' => 0, 'msg' => '成功', 'data' => $data];
        }else{
            return ['errcode' => 1, 'msg' => '提交方式不正确'];
        }
    }
}



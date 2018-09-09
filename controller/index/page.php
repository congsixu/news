<?php
include '../core/db.php';

class page extends db
{
    const PER_PAGE = 6;

    //主页
    public function index()
    {
        if (isset($_GET['cid'])) {
            $cid = $_GET['cid'];
        } else {
            $cid = 1;
        }
        $fixed = $this->pdo
            ->query('select * from category where is_default = "2" ')
            ->fetchAll();
        $default = $this->pdo
            ->query('select * from category where is_default = "1" ')
            ->fetchAll();
        if(isset($_GET['s'])){
            $keyword = $_GET['s'];
        }else{
            $keyword = ' ';
        }
        if(isset($_GET['page'])){
            $page = $_GET['page'];
        }else{
            $page = 1;
        }
        $news = $this->pdo
            ->query(
                'select * from news where cid= ' . $cid . ' limit '.$this::PER_PAGE.' offset ' . ($page - 1) * $this::PER_PAGE
            )
            ->fetchAll();

        include '../view/index/index.html';
    }
    //主页js发送的ajax（加载更多以及更换选项卡内容）
    public function dataResources(){
        if (isset($_GET['cid'])) {
            $cid = $_GET['cid'];
        } else {
            $cid = 1;
        }

        if(isset($_GET['page'])){
            $page = $_GET['page'];
        }else{
            $page = 1;
        }
        $news = $this->pdo
            ->query(
                'select * from news where cid= ' . $_GET['cid'] . ' limit '.$this::PER_PAGE.' offset ' . ($page - 1) * $this::PER_PAGE
            )
            ->fetchAll();

        echo json_encode($news);
    }

    //分类页面
    public function add()
    {
        // 查三次
        // 查固定一直在的      2
        // 查默认存在的        1
        // 查其他不存在的      0
        $fixed = $this->pdo
            ->query('select * from category where is_default = "2" ')
            ->fetchAll();
        $default = $this->pdo
            ->query('select * from category where is_default = "1" ')
            ->fetchAll();
        $other = $this->pdo
            ->query('select * from category where is_default = "0" ')
            ->fetchAll();
        include '../view/index/add.html';
    }

    public function update()
    {
        if( $_GET['x'] == 1 ){
            $stmt = $this->pdo->prepare("update category set is_default = ? where id = ?");
            $stmt->bindValue(1, "0");
            $stmt->bindValue(2, $_GET["id"]);
            echo $stmt->execute();
        }elseif ( $_GET['x'] == 0 ){
            $stmt = $this->pdo->prepare("update category set is_default = ? where id = ?");
            $stmt->bindValue(1, "1");
            $stmt->bindValue(2, $_GET["id"]);
            echo $stmt->execute();
        }
    }

    //搜索页面
    public function search()
    {
        $total_number = -1;
        $result = [];
        if (isset($_GET['wd'])) {
            $wd = $_GET['wd'];
            $total_number =
                $this->pdo
                    ->query('select count(*) as total_number from news where title like "%' . $wd . '%"')
                    ->fetch()['total_number'];

            $sql = 'select * from news where title like "%' . $wd . '%" limit ' . $this::PER_PAGE . ' offset 0';
            $result = $this->pdo->query($sql)->fetchAll();
        }
        include '../view/index/search.html';
    }
    //搜索页js发送的ajax(搜索与关键字有关的资源)
    public function news()
    {
        if (isset($_GET['page']) && isset($_GET['wd'])) {
            $page = $_GET['page'];
            $wd = $_GET['wd'];
            $sql = 'select * from news where title like "%' . $wd . '%" limit ' . $this::PER_PAGE . ' offset '.($page-1)*$this::PER_PAGE;
            $r = $this->pdo->query($sql)->fetchAll();
            echo json_encode($r);
        } else {
            echo json_encode('参数错误');
        }
    }
}
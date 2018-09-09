<?php
include '../core/db.php';

class news extends db{
    const PER_PAGE = 5;

    public function actiondelete(){
        $stmt = $this->pdo->prepare("delete from  news where id = ?");
        $stmt->bindValue(1, $_GET["id"]);
        echo $stmt->execute();
    }
    public function actionupdate(){
        $stmt = $this->pdo->prepare('update news set '.$_GET['k'].' = ?  where id = ?');
        $stmt->bindValue(1, $_GET['v'] );
        $stmt->bindValue(2, $_GET['id']);
        $stmt->execute();
    }
    public function actioninsert(){
        $stmt = $this->pdo->prepare("insert into news(title,ctime,comment_num,cid,content)values(?,?,?,?,?)");
        $stmt->bindValue(1, "");
        $stmt->bindValue(2, "");
        $stmt->bindValue(3, "");
        $stmt->bindValue(4, "");
        $stmt->bindValue(5, "");
        echo $stmt->execute();
    }
    public function actionview(){
        //接收页数
        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        } else {
            $page = 1;
        }

        //总条数
        $num = $this->pdo
            ->query('select count(*) as total from news ')
            ->fetch()['total'];

        //总页数
        $page_total = ceil($num / $this::PER_PAGE);


        //新闻
        $rows = $this->pdo
            ->query(
                'select * from news limit '.$this::PER_PAGE.' offset '. ($page - 1) * $this::PER_PAGE
            )
            ->fetchAll();

        include('../view/admin/news.html');
    }

    public function searchList(){
        if(isset($_GET['s'])){
            $keyword = $_GET['s'];
        }else{
            $keyword = '';
        }

        //新闻
        $rows = $this->pdo
            ->query(
                'select * from news where title like "%'.$keyword.'%"'
            )
            ->fetchAll();
        echo json_encode($rows);
    }
}
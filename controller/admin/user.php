<?php
include '../core/db.php';

class user extends db{
    public function actiondelete(){
        $stmt = $this->pdo->prepare("delete from  news where id = ?");
        $stmt->bindValue(1, $_GET["id"]);
        echo $stmt->execute();
    }
    public function actionupdate(){
        $stmt = $this->pdo->prepare("update news set title = ? where id = ?");
        $stmt->bindValue(1, $_GET['title']);
        $stmt->bindValue(2, $_GET['id']);
        $stmt->execute();
    }
    public function actioninsert(){
        $stmt = $this->pdo->prepare("insert into news(title,dsc,content)values(?,?,?)");
        $stmt->bindValue(1, $_GET['title']);
        $stmt->bindValue(2, $_GET['dsc']);
        $stmt->bindValue(3, $_GET['content']);
        echo $stmt->execute();
    }
    public function actionview(){
        $stmt = $this->pdo->query('select * from news');
        $rows = $stmt->fetchAll();
        include('../view/admin/user.html');
    }
}
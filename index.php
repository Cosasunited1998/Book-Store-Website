<?php



require_once 'Controllers/HomeController.php';
//$_GET['page']=1;
$auth = new HomeController();
$auth->index();

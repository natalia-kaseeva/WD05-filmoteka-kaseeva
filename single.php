<?php 

//DB Connection
require('config.php');
require('database.php');
$link=db_connect();
require('models/films.php');
require('functions/login-functions.php');

// Удаление фильма
if ( @$_GET['action'] == 'delete') {

	$reslut = film_delete($link, $_GET['id']);

	if ( $reslut ) {
		$resultInfo = "Фильм был удален!";
	} else {
		$resultError = "Что то пошло не так.";
	}
}

$film=get_film($link,$_GET['id']);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/film-single.tpl');
include('views/footer.tpl');

 ?>
<?php 

require('config.php');
require('database.php');
$link = db_connect();
//require('models/users.php');
require('functions/login-functions.php');

if ( isset($_POST['enter']) ) {
	$userLogin = 'admin';
	$userPassword = '123456';
	$userName=$_POST['user-name'];
	$userCity=$_POST['user-city'];
	$expire=time()+60*60*24*30;

	if ( $_POST['login'] == $userLogin ) {
		if ( $_POST['password'] == $userPassword ) {
			//session_start();
			$_SESSION['user'] = 'admin';

			setcookie('user-name',$userName,$expire);
			setcookie('user-city',$userCity,$expire);
			header('Location: ' . HOST . 'index.php');
		}
	}
}

include('views/head.tpl');
include('views/login.tpl');
include('views/footer.tpl');

 ?>
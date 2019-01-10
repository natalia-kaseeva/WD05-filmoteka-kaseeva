<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>[Natalia Kaseeva] - Фильмотека</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" /><!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" /><!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="./css/main.css" /><!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="index-page">
	<div class="container user-content section-page mt-30">
		<div class="admin-nav mb-30">
			<a href="index.php" class="button">Все фильмы</a>

			<?php  if ( isAdmin() ) { ?>
				<a href="new.php" class="button">Добавить новый фильм</a>
			<?php } ?>

			<?php  if ( !isAdmin() ) { ?>
			<!--<a href="request.php" class="button">Указать информацию</a>-->
			<a href="login.php" class="button">Вход для админа</a>
			<?php } ?>
			
			<?php  if ( isAdmin() ) { ?>
				<a href="logout.php?name=user-unset" class="button">Выход</a>
			<?php }  ?>


		</div>

	<?php if ( isset($_COOKIE['user-name']) ) { ?>
	<div class="mb-30">

		<?php if ( isset($_COOKIE['user-city']) ) { ?>
			Привет, <?=$_COOKIE['user-name']?> из <?=$_COOKIE['user-city']?>!
		<?php } else { ?>
			Привет, <?=$_COOKIE['user-name']?>!
		<?php } ?>

	</div>
	<?php } ?>
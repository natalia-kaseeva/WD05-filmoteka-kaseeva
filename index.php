<?php 

//DB Connection

$link=mysqli_connect('localhost','root','','wd05-filmoteka-kaseeva');
 
if (mysqli_connect_error()) {
	die("Ошибка подключения к базе данных.");
}

// Удаление фильма
if (@$_GET['action']=='delete') {
	$query="DELETE FROM films WHERE id='".mysqli_real_escape_string($link,$_GET['id'])."'LIMIT 1";
	mysqli_query($link,$query);

	if (mysqli_affected_rows($link)>0) {
		$resultInfo="Фильм был удален!";
	}
}

//Save form data to DB
$errors=array();

if (array_key_exists('newFilm',$_POST)) {

	// Обработка ошибок
	if ($_POST['title']=='') {
		$errors[]="Необходимо ввести название фильма!";	
	}
	if ( $_POST['genre'] == '') {
		$errors[] = "Необходимо ввести жанр фильма!";
	}
	if ( $_POST['year'] == '') {
		$errors[] = "Необходимо ввести год фильма!";
	}

	// Если ошщибок нет - сохраняем фильм
	if (empty($errors)) {
		// Запись данных в БД
		$query="INSERT INTO films (title,genre,year) VALUES (
			'".mysqli_real_escape_string($link,$_POST['title'])."',
			'".mysqli_real_escape_string($link,$_POST['genre'])."',
			'".mysqli_real_escape_string($link,$_POST['year'])."'
			)";

		if (mysqli_query($link,$query)) {
			$resultSuccess="Фильм успешно добавлен!";
		} else {
			$resultError="Что то пошло не так. Добавьте фильм еще раз!";		
		}
	}
}

//Getting films from DB

$query="SELECT*FROM films";
$films=array();

$result=mysqli_query($link,$query);

if ($result=mysqli_query($link,$query)) {
	while ($row=mysqli_fetch_array($result)) {
		$films[]=$row;
	}
}

 ?>

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
	<div class="container user-content section-page">

	<?php if (@$resultSuccess !='') { ?>	
		<div class="notify notify--success mb-20"><?=$resultSuccess?></div>	
	<?php  } ?>

	<?php if (@$resultInfo !='') { ?>	
		<div class="notify notify--update mb-20"><?=$resultInfo?></div>	
	<?php  } ?>

	<?php if (@$resultError !='' ) { ?>
		<div class="notify notify--error mb-20"><?=$resultError?></div>	
	<?php  } ?>

		<div class="title-1">Фильмотека</div>	
		
		<?php 
		foreach ($films as $key=>$film) {		
		 ?>
			<div class="card mb-20">
				<div class="card__header">
					<h4 class="title-4"><?=$film['title']?></h4>
					<a href="?action=delete&id=<?=$film['id']?>" class="button button--removesmall">Удалить</a>
				</div>
				
				<div class="badge"><?=$film['genre']?></div>
				<div class="badge"><?=$film['year']?></div>
			</div>
		<?php } ?>
	
		<div class="panel-holder mt-80 mb-40">
			<div class="title-3 mt-0">Добавить фильм</div>
			<form action="index.php" method="POST">

				<?php 
				if ( !empty($errors) ) {
					foreach ($errors as $key => $value) {
						echo "<div class='notify notify--error mb-20'>$value</div>";
					}
				}
				?>
		
				<div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Введите название фильма" /></label></div>
				<div class="row">
					<div class="col">
						<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="Введите жанр фильма" /></label></div>
					</div>
					<div class="col">
						<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="Введите год выпуска" /></label></div>
					</div>
				</div><input class="button" type="submit" name="newFilm" value="Добавить" />
			</form>
		</div>
	</div><!-- build:jsLibs js/libs.js -->
	<script src="libs/jquery/jquery.min.js"></script><!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA"></script><!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="js/main.js"></script><!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>
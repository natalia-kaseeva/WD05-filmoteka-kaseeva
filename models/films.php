<?php 

//Getting ALL films from DB

function films_all($link) {
	$query="SELECT*FROM films";
	$films=array();
	$result=mysqli_query($link,$query);

	if ($result=mysqli_query($link,$query)) {
	while ($row=mysqli_fetch_array($result)) {
		$films[]=$row;
	}
}
	return $films;
}

function film_new($link,$title,$genre,$year) {
	// Запись данных в БД
	$query="INSERT INTO films (title,genre,year) VALUES (
		'".mysqli_real_escape_string($link,$title)."',
		'".mysqli_real_escape_string($link,$genre)."',
		'".mysqli_real_escape_string($link,$year)."'
		)";

	//$result=mysqli_query($link,$query);

	/*if (mysqli_query($link,$query)) {
		$resultSuccess="Фильм успешно добавлен!";
	} else {
		$resultError="Что то пошло не так. Добавьте фильм еще раз!";		
	}*/

	if (mysqli_query($link,$query)) {
		$result=true;
	} else {
		$result=false;
	}

	return $result;
}

function get_film($link, $id){
	$query = "SELECT * FROM films WHERE id = ' " . mysqli_real_escape_string($link, $id) . "' LIMIT 1";
	$result = mysqli_query($link, $query);
	if ( $result = mysqli_query($link, $query) ) {
		$film = mysqli_fetch_array($result);
	}
	return $film;
}

function film_update($link, $title, $genre, $year, $id){
	$query = "	UPDATE films 
				SET title = '". mysqli_real_escape_string($link, $title) ."', 
					genre = '". mysqli_real_escape_string($link, $genre) ."', 
					year = '". mysqli_real_escape_string($link, $year) ."' 
					WHERE id = ".mysqli_real_escape_string($link, $id)." LIMIT 1";

	if ( mysqli_query($link, $query) ) {
		$result = true;
	} else { 
		$result = false;
	}
	
	return $result;
}





 ?>
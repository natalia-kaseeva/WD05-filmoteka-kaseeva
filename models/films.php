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

function film_new($link,$title,$genre,$year,$description) {
	// Запись данных в БД
	$query="INSERT INTO films (title,genre,year,description) VALUES (
		'".mysqli_real_escape_string($link,$title)."',
		'".mysqli_real_escape_string($link,$genre)."',
		'".mysqli_real_escape_string($link,$year)."',
		'".mysqli_real_escape_string($link,$description)."'
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

function film_update($link, $title, $genre, $year, $id,$description){
	$query = "	UPDATE films 
				SET title = '". mysqli_real_escape_string($link, $title) ."', 
					genre = '". mysqli_real_escape_string($link, $genre) ."', 
					year = '". mysqli_real_escape_string($link, $year) ."', 
					description = '". mysqli_real_escape_string($link, $description) ."'
					WHERE id = ".mysqli_real_escape_string($link, $id)." LIMIT 1";

	if ( mysqli_query($link, $query) ) {
		$result = true;
	} else { 
		$result = false;
	}
	
	return $result;
}

function film_delete($link, $id) {
	$query = "DELETE FROM films WHERE id = ' " . mysqli_real_escape_string($link, $id ) . "' LIMIT 1";
	mysqli_query($link, $query);

	if ( mysqli_affected_rows($link) > 0 ) {
		$result = true;
	} else {
		$result = false;
	}
	return $result;
}



 ?>
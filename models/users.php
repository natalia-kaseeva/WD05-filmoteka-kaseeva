<?php 

function get_user($link,$login,$password){
	$query = "SELECT * FROM users WHERE login = ' " . mysqli_real_escape_string($link, $login) . "' AND
										password = ' " . mysqli_real_escape_string($link, $password) . "' LIMIT 1";
	$result = mysqli_query($link, $query);
	if ( $result = mysqli_query($link, $query) ) {
		$user = mysqli_fetch_array($result);
	}
	return $user;
}

 ?>
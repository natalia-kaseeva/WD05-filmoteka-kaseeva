<h1 class="title-1 mt-30">Укажите ваши данные</h1>

<div class="panel-holder mt-30 mb-20">
	<form  action="set-cookie.php" method="POST">
		<div class="form-group"><label class="label">Ваше имя<input class="input" name="user-name" type="text" placeholder="" /></label></div>
		
		<div class="form-group"><label class="label">Ваш город<input class="input" name="user-city" type="text" placeholder="" /></label></div>
	
		<input class="button mt-10" type="submit" name="user-submit" value="Сохранить" />
	</form>
</div>

<div class="mb-40">
	<form  action="unset-cookie.php" method="POST">
		<input class="button mt-10" type="submit" name="user-unset" value="Удалить данные" />
	</form>
</div>
</div>
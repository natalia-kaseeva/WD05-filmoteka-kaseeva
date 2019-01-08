<div class="title-1">Фильмотека</div>	
		
<?php 
foreach ($films as $key=>$film) {		
	?>
	<div class="card mb-20">
		<div class="card__header">
			<h4 class="title-4"><?=$film['title']?></h4>
			<div class="buttons">
				<a href="edit.php?id=<?=$film['id']?>" class="button button--editsmall">
					Редактировать</a>
				<a href="?action=delete&id=<?=$film['id']?>" class="button button--removesmall">Удалить</a>			
			</div>
		</div>
				
		<div class="badge"><?=$film['genre']?></div>
		<div class="badge"><?=$film['year']?></div>
		<div class="mt-20">
			<a href="single.php?id=<?=$film['id']?>"" class="button">Подробнее</a>
		</div>
	</div>
<?php } ?>
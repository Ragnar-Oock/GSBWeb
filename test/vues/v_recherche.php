<!--affichage de la barre de recherche-->
<?php
	$titre="rechercher";
	echo (' <form action="index.php?choixTraitement=recherche&action=voir&search=" method="GET">
				<input type="text" placeholder="rechercher" name="search"/>
				<input type="submit" value="Search"/>
			</form>');
?>
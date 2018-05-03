<!--affichage de la barre de recherche-->
<?php
	$titre="rechercher";
	echo (' <form action="index.php" method="GET">
				<input type="hidden" name="choixTraitement" value="recherche"/>
				<input type="hidden" name="action" value="voir"/>
				<input type="text" placeholder="rechercher" name="search"/>
				<input type="submit" value="Rechercher"/>
			</form>');
?>
<?php
	$search=$_GET['search']; //recuperation de la recherche dans l'URL
	
	$min_lenght=3; //longueur minimum de la recherche
	
	if(strlen($search) >= $min_lenght) //execute si la longueur est plus grande que $min_lenght
	{
		$search = htmlspecialchars($search); //transtype vers le codec HTML
		
		$search = mysql_real_escape_string($search); //prevention de l'injection SQL
		
		$raw_results = mysql_query("SELECT * FROM visite WHERE(vMotif LIKE '%".$search."%') OR (vRapport LIKE '%".$search."%') OR (vDate LIKE '%".$search."%')");
		
		if(mysql_num_rows($raw_results) > 0)
		{
			while($results = mysql_fetch_array($raw-results))
			{
				echo("<p><h3>".$results['title']."</h3>".$results['text']."</p>");
			}
		}
		else //pas de resultats
		{
			echo('pas de resultats');
		}
	}
?>
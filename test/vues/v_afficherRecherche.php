<?php
/*echo("
	<div>
		Il y a :".count($results));
if(count($results)>1)
{
	echo(" résultats.");
}
else
{
	echo(" résultat.");
}
echo("</div>");*/

foreach ($results as $unResultat)
{
	echo('<div class="resultatRecherche"><h3>'.$unResultat["vRapport"].'</h3>'.$unResultat["vMotif"].'</div>');
}


?>
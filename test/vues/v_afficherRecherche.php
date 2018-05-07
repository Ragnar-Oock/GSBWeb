<?php
echo("
	<div>
		Il y a : ".count($results));
if(count($results)>1)
{
	echo(" résultats.");
}
else
{
	echo(" résultat.");
}
echo("</div>");

foreach ($results as $unResultat)
{
	echo('
		<div>
			<table style="margin: 5px 0px 0px 0px;
  border-radius: 5px;
  color: #ffffff;
  background-color: #90a4ae;">
				<tr style="width: 100%">
					<td style="width: 75%">'.$unResultat["vMotif"].'</td>
					<td style="width: 25%">'.$unResultat["vDate"].'</td>
				<tr style="width: 100%">
					<td>Rapport : '.$unResultat["vRapport"].'</td>
				<tr style="width: 100%">
					<td style="width: 50%">Praticien : '.$unResultat["pNom"].' '.$unResultat["pPrenom"].'</td>
					<td style="width: 50%">Visteur : '.$unResultat["uNom"].' '.$unResultat["uPrenom"].'</td>
			</table>
		</div>
		');
}
?>
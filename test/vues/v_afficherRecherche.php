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
		<div class="RR">
			<div class="RR_titre">
				'.$unResultat["vMotif"].'
			</div>
			<div class="RR_date">
				'.$unResultat["vDate"].'
			</div>
			<div class="RR_rapport">
				<span class="RR_labelle">Rapport :</span> '.$unResultat["vRapport"].'
			</div>
			<div>
				<span class="RR_labelle">Praticien :</span> <a href="#Desmons">'.$unResultat["pNom"].' '.$unResultat["pPrenom"].'</a></td>
			</div>
			<div>
				<span class="RR_labelle">Visteur :</span> <a href="#Villechalane">'.$unResultat["uNom"].' '.$unResultat["uPrenom"].'</a></td>
			</div>
		</div>
		');
}
?>

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

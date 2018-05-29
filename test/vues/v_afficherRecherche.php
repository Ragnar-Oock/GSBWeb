<?php
echo("
	<div class=\"RR_count\">
		Nous avons trouvé <strong>".count($results));
if(count($results)>1)
{
	echo("</strong> résultats a votre recherche.");
}
else
{
	echo(" résultat a votre recherche.");
}
echo("</div>");

foreach ($results as $unResultat)
{
	echo('
		<div class="RR">
			<div class="RR_titre">');
			switch ($unResultat['vMotif']) {
				case '1':
				{
					echo ('Baisse activité');
					break;
				}
				case '2':
				{
					echo ('Rapport Annuel');
					break;
				}
				case '3':
				{
					echo ('Actualisation annuelle');
					break;
				}
				default:
				{
					echo "Motif inconnu.";
					break;
				}
			}
	echo ('
			</div>
			<div class="RR_date">
				'.$unResultat["vDate"].'
			</div>
			<div class="RR_rapport">
				<span class="RR_label">Rapport :</span> '.$unResultat["vRapport"].'
			</div>
			<div>
				<span class="RR_label">Praticien :</span> <a href="index.php?choixTraitement=praticiens&action=voir&type=a"- onclick="lienPraticien('.$unResultat["pNum"].')">'.$unResultat["pNom"].' '.$unResultat["pPrenom"].'</a>
			</div>
			<div>
				<span class="RR_label">Visteur :</span> <a href="#">'.$unResultat["uNom"].' '.$unResultat["uPrenom"].'</a>
			</div>
		</div>');
}
?>

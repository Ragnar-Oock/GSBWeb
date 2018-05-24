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
				<span class="RR_label">Rapport :</span> '.$unResultat["vRapport"].'
			</div>
			<div>
				<span class="RR_label">Praticien :</span> <a href="index.php?choixTraitement=praticiens&action=voir&type=a"- onclick="lienPraticien('.$unResultat["pNum"].')">'.$unResultat["pNom"].' '.$unResultat["pPrenom"].'</a>
			</div>
			<div>
				<span class="RR_label">Visteur :</span> <a href="#">'.$unResultat["uNom"].' '.$unResultat["uPrenom"].'</a>
			</div>
		</div>
		');
}
?>
<script>
	function lienPraticien(id) {
		<?php $_REQUEST["lstPraticiens"]==id;
		$rewrite = '1'?>
	}
</script>

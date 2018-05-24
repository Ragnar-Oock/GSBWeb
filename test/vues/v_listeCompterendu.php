<?php
echo("
	<div>
		Il y a : ".count($lesCompteRendu));
if(count($lesCompteRendu)>1)
{
	echo(" résultats.");
}
else
{
	echo(" résultat.");
}
echo("</div>");

foreach ($lesCompteRendu as $unCR)
{
	echo('
		<div class="CR">
			<div class="CR_titre">
				'.$unCR["vMotif"].'
			</div>
			<div class="CR_date">
				'.$unCR["vDate"].'
			</div>
			<div>
				<span class="CR_label">Praticien :</span> <a href="index.php?choixTraitement=praticiens&action=voir&type=a" onclick="lienPraticien('.$unCR["pNum"].')">'.$unCR["pNom"].' '.$unCR["pPrenom"].'</a>
			</div>
			<div>
				<span class="CR_label">Visteur :</span> <a href="#">'.$unCR["uNom"].' '.$unCR["uPrenom"].'</a>
			</div>
			<div class="CR_rapport">
				<span class="CR_label">Rapport :</span> '.$unCR["vRapport"].'
			</div>
			<div class="CR_medoc">
				 <span class="CR_label">Médicament concerné :</span> '.$unCR["mNomCommercial"].'
			</div>
			<div class="CR_commentaire">
				<span class="CR_label">Commentaires du praticien :</span> '.$unCR["comCommentaire"].'
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

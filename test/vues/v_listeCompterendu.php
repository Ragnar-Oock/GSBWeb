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
		<div class="RR">
			<div class="CR_titre">
				'.$unCR["pLibelle"].'
			</div>
			<div class="RR_date">
				'.$unCR["Date"].'
			</div>
			<div>
				<span class="RR_label">Praticien :</span> <a href="index.php?choixTraitement=praticiens&action=voir&type=a" onclick="lienPraticien('.$unCR["pNum"].')">'.$unCR["pNom"].' '.$unCR["pPrenom"].'</a>
			</div>
			<div>
				<span class="RR_label">Visteur :</span> <a href="#">'.$unCR["uNom"].' '.$unCR["uPrenom"].'</a>
			</div>
			<div class="RR_rapport">
				<span class="RR_label">Rapport :</span> '.$unCR["vRapport"].'
			</div>
			<div class="RR_medoc">
				 <span class="RR_label">Médicament concerné :</span> '.$unCR["mNomCommercial"].'
			</div>
			<div class="RR_commentaire">
				<span class="RR_label">Commentaires du praticien :</span> '.$unCR["comCommentaire"].'
			</div>
		</div>
		');
}
?>


<table class="color-lightgrey echantillon-marge ">
	<tr class="ligne-table ">
		<th>Nom commercial
		<th>Quantité
	</tr>
	<?php
	$maRequete="SELECT medicament.mNum, medicament.mNomCommercial
				FROM medicament
				ORDER BY 2";
	$monJeuResultats = $bdd->query($maRequete);
	$lesLignes = $monJeuResultats->fetchAll();
	foreach ($lesLignes as $uneLigne)
		{
			echo("	<tr class=\"ligne-table\">
			<td>".$uneLigne['mNomCommercial']."</td>
			<td> <input type=\"number\" name=".$uneLigne['mNum']." onClick=\"this.select();\" min=\"0\" max=\"10\" value=0></td>
			</tr>");
		}
	?>
</table>

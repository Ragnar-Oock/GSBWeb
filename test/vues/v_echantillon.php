<table class="EC">
	<tr>
		<th>Nom commercial
		<th>Quantité
	</tr>
	<?php
	foreach ($lesEchantillons as $unEchantillon)
		{
			echo("	<tr class=\"EC_ligne\">
								<td>".$unEchantillon['mNomCommercial']."
								<td><input type=\"number\" name=\"".$unEchantillon['mNum']."\" onClick=\"this.select();\" min=\"0\" max=\"10\" value=0>
							</tr>");
		}
	?>
</table>

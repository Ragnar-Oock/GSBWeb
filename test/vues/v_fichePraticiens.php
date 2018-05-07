
<!-- affichage du detail de la fiche agent / Derniere modification le 7 Mai 2018 par Théo Corbel-->
<?php 
$titre="Caract&eacute;ristiques du praticien";
// echo (' 	<div id="fiche">
			// <ul class="lesOnglets">	
				// <li class="actif onglet" 	id="onglet1" onclick="javascript:Affiche(\'1\',2);">'.$titre.'</li>
				// <li class="inactif onglet" 	id="onglet2" onclick="javascript:Affiche(\'2\',2);">Usagers suivis</li>
			// </ul>');
/*================================================================================================== COORDONNEES (1) */
 $titre="Pr&eacute;nom";
 echo (" 	
	 	<div style='display: block;' class='unOnglet' id='contenuOnglet1'> 
 			<table style='border: 0px solid white;'>
			<tr>
				<td style='border :0px;'>
				<fieldset><legend>Coordonn&eacute;es</legend>
					<table>
						<tr><th style='width:130px;'>Nom</th>					<td style='width:130px;'>".$lesInfosPraticien['pNom']."</td> </tr>
						<tr><th>".$titre."</th>									<td>".$lesInfosPraticien['pPrenom']."</td> </tr>
						<tr><th>Adresse</th>									<td>".$lesInfosPraticien['pRue']."</td> </tr>
						<tr><th>Code postal</th>								<td>".$lesInfosPraticien['pCP']."</td> </tr>
						<tr><th>Ville</th>										<td>".$lesInfosPraticien['pVille']."</td> </tr>
						<tr><th>Type</th>										<td>".$lesInfosPraticien['pCode']."</td> </tr>
						<tr><th>Notoriete</th>									<td>".$lesInfosPraticien['pCoefNotoriete']."</td></tr>");
echo ("			</table>
				</fieldset>
				</td>	
				<td style='border :0px;'>
				<fieldset><legend>Region(".count($lesSecteurs)." secteurs)</legend> 
					<table>
						<tr><th style='width:130px;'>Code</th>		<td>".$lesInfosPraticien['rCode']."</td> </tr>
						<tr><th>Libell&eacute;</th>							<td>".$lesInfosPraticien['rNom']."</td> </tr>
					</table><br />
					<!-- <table>
					 <tr><th  style='width:10px;'>&nbsp;</th><th>Nom du secteur</th><th>dossiers en cours</th><th>dossiers clos</th>	-->");
					// $nbSuivis=0; $nbClos	=0;
					// for ($lig=0; $lig < count($lesSecteurs); $lig++)
					// {	$n=$lig + 1;
						// echo "
						// <tr><td> ".$n."</td>	<td>".$lesSecteurs[$lig]['sNumero']." ".$lesSecteurs[$lig]['sIntitule']."</td>";
// if ($lesSecteurs[$lig]['nbSuivis']>0) {echo ("
					// <td class='stNb'><a onclick=\"javascript:voirListe('$type','".$lesSecteurs[$lig]['sNumero']."','S'); return false;\">".$lesSecteurs[$lig]['nbSuivis']."</a></td>");} 
// else  {echo ("
			 		// <td class='stNb'>".$lesSecteurs[$lig]['nbSuivis']."</td>");}
// if ($lesSecteurs[$lig]['nbClos']>0) {echo ("
					// <td class='stNb'><a onclick=\"javascript:voirListe('$type','".$lesSecteurs[$lig]['sNumero']."','C'); return false;\">".$lesSecteurs[$lig]['nbClos']."</a></td>");} 
// else  {echo ("
			 		// <td class='stNb'>".$lesSecteurs[$lig]['nbClos']."</td>");}

// echo "</tr>";
						// $nbSuivis	+=$lesSecteurs[$lig]['nbSuivis'];
						// $nbClos		+=$lesSecteurs[$lig]['nbClos'];
					// }
					// echo "
						// <tr><th colspan=2> </th>
						// <th style='text-align: center;'>".$nbSuivis."</th><th style='text-align: center;'>".$nbClos."</th> </tr>";
					
echo ("
					</table>
				</fieldset></td>
			</tr>
			</table>
		</div>");
		
/*================================================================================================== SUIVI (2)*/		
echo ("
		<div style='display: none;' class='unOnglet' id='contenuOnglet2'>
			<fieldset><legend>".$titre."</legend>
				<p><i>(");
{echo (count($lesUsagers)." dossiers)");}					

echo (")</i></p>
			<table style='border: 0px solid white;'>
				<tr><th class='controleLong'>Nom de l'usager</th><th>Genre</th><th class='controleLong'>Ville</th><th>n&eacute;(e) le</th><th>No CAF</th>
				<th>Secteur</th><th>Statut</th></tr>");	
		foreach ($lesUsagers as $uneLigne)		
		{ 	if($uneLigne['uHomme']==1) {$sexe="M";} else {$sexe="F";} 
echo("		<tr><td class='controleLong'><a href='index.php?choixTraitement=usagers&action=voir&lstUsagers=".$uneLigne['uId']."' style='text-decoration:none;'>".$uneLigne['uNom']." ".$uneLigne['uPrenom']."</a></td>
						<td style='text-align : center;'>".$sexe."</td>
						<td class='controleLong'>".$uneLigne['uCp']." ".$uneLigne['uVille']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uDateNaissance']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uNumCaf']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['wSecteur']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uStatut']."</td>
				</tr>");
		}
echo ("		</table>
	  		</fieldset>
		</div>");

/*================================================================================================== XXXXX */
echo ("
		<div style='display: none;' class='unOnglet' id='contenuOngletX'>
			<fieldset><legend>XXXX</legend>
			<table>
				<tr><th style='width:130px;'>.....</th></tr>
				<tr><td>xxxx</td></tr>
			</table>
			</fieldset>
		</div>

	</div>");				
?>
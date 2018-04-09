
<!-- affichage du detail de la fiche agent / Derniere modification le 6 fevrier 2014 par Pascal BLAIN -->
<?php 
$titre="caract&eacute;ristiques de l'agent";
echo (' 	<div id="fiche">
			<ul class="lesOnglets">	
				<li class="actif onglet" 	id="onglet1" onclick="javascript:Affiche(\'1\',2);">'.$titre.'</li>
				<li class="inactif onglet" 	id="onglet2" onclick="javascript:Affiche(\'2\',2);">Comptes rendu de visites</li>
			</ul>');
/*================================================================================================== COORDONNEES (1) */
 $titre="Pr&eacute;nom";
 if ($lesInfosAgent['agTel']>1) {$tel=substr("0".$lesInfosAgent['agTel'],0,2)." ".substr("0".$lesInfosAgent['agTel'],2,2)." ".substr("0".$lesInfosAgent['agTel'],4,2)." ".substr("0".$lesInfosAgent['agTel'],6,2)." ".substr("0".$lesInfosAgent['agTel'],8,2);} else {$tel=Null;}
 echo ("	
	 	<div style='display: block;' class='unOnglet' id='contenuOnglet1'> 
 			<table style='border: 0px solid white;'>
			<tr>
				<td style='border :0px;'>
				<fieldset><legend>Coordonn&eacute;es</legend>
					<table>
						<tr><th style='width:130px;'>Nom</th>			<td style='width:130px;'>".$lesInfosAgent['nom']."</td> </tr>
						<tr><th>".$titre."</th>									<td>".$lesInfosAgent['prenom']."</td> </tr>
						<tr><th>Adresse</th>									<td>".$lesInfosAgent['agAdresse']."</td> </tr>
						<tr><th>Code postal</th>								<td>".$lesInfosAgent['agCp']."</td> </tr>
						<tr><th>Ville</th>										<td>".$lesInfosAgent['agVille']."</td> </tr>
						<tr><th>T&eacute;l&eacute;phone</th>			<td>".$tel."</td> </tr>
						<tr><th>Statut</th>										<td>".$lesInfosAgent['wStatut']."</td> </tr>
						<tr><th>Adresse &eacute;lectronique</th>		<td>".$lesInfosAgent['agMail']."</td> </tr>
						<tr><th>Nom de compte</th>						<td>".$lesInfosAgent['agLogin']."</td></tr>");
echo ("			</table>
				</fieldset>
				</td>	
				<td style='border :0px;'>
				<fieldset><legend>Territoire (".count($lesSecteurs)." secteurs)</legend> 
					<table>
						<tr><th style='width:130px;'>Code</th>		<td>".$lesInfosAgent['agTerritoire']."</td> </tr>
						<tr><th>Libell&eacute;</th>							<td>".$lesInfosAgent['wTerritoire']."</td> </tr>
					</table><br />
					<table>
						<tr><th  style='width:10px;'>&nbsp;</th><th>Nom du secteur</th><th>dossiers en cours</th><th>dossiers clos</th>	");
					$nbSuivis=0; $nbClos	=0;
					for ($lig=0; $lig < count($lesSecteurs); $lig++)
					{	$n=$lig + 1;
						echo "
						<tr><td> ".$n."</td>	<td>".$lesSecteurs[$lig]['sNumero']." ".$lesSecteurs[$lig]['sIntitule']."</td>";
if ($lesSecteurs[$lig]['nbSuivis']>0) {echo ("
					<td class='stNb'><a onclick=\"javascript:voirListe('$type','".$lesSecteurs[$lig]['sNumero']."','S'); return false;\">".$lesSecteurs[$lig]['nbSuivis']."</a></td>");} 
else  {echo ("
			 		<td class='stNb'>".$lesSecteurs[$lig]['nbSuivis']."</td>");}
if ($lesSecteurs[$lig]['nbClos']>0) {echo ("
					<td class='stNb'><a onclick=\"javascript:voirListe('$type','".$lesSecteurs[$lig]['sNumero']."','C'); return false;\">".$lesSecteurs[$lig]['nbClos']."</a></td>");} 
else  {echo ("
			 		<td class='stNb'>".$lesSecteurs[$lig]['nbClos']."</td>");}

echo "</tr>";
						$nbSuivis	+=$lesSecteurs[$lig]['nbSuivis'];
						$nbClos		+=$lesSecteurs[$lig]['nbClos'];
					}
					echo "
						<tr><th colspan=2> </th>
						<th style='text-align: center;'>".$nbSuivis."</th><th style='text-align: center;'>".$nbClos."</th> </tr>";
					
echo ("
					</table>
				</fieldset></td>
			</tr>
			</table>
			
			<fieldset><legend>Observations</legend>
			<table style='border: 0px solid white;'>
				<tr> 
					 <td>.".$lesInfosAgent['agCommentaire']."</td>
				</tr>
			</table>
			</fieldset>
		</div>");
		
/*================================================================================================== LES VISITES (2)*/		
echo ("
		<div style='display: none;' class='unOnglet' id='contenuOnglet2'>
			<fieldset><legend>".$titre."</legend>
				<p><i>(");
{echo (count($lesCompteRendu)." dossiers)");}					

echo (")</i></p>
			<table style='border: 0px solid white;'>
				<tr><th class='controleLong'>Nom de l'usager</th><th>Genre</th><th class='controleLong'>Ville</th><th>n&eacute;(e) le</th><th>No CAF</th>
				<th>Secteur</th><th>Statut</th></tr>");	
		foreach ($lesCompteRendu as $uneLigne)		
		{ 	if($uneLigne['uHomme']==1) {$sexe="M";} else {$sexe="F";} 
echo("		<tr>
				<td class='controleLong'>
			</tr>");
/*<td class='controleLong'><a href='index.php?choixTraitement=usagers&action=voir&lstUsagers=".$uneLigne['uId']."' style='text-decoration:none;'>".$uneLigne['uNom']." ".$uneLigne['uPrenom']."</a></td>
						<td style='text-align : center;'>".$sexe."</td>
						<td class='controleLong'>".$uneLigne['uCp']." ".$uneLigne['uVille']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uDateNaissance']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uNumCaf']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['wSecteur']."</td>
						<td class='controle' style='text-align : center;'>".$uneLigne['uStatut']."</td>*/

		}
echo ("		</table>
	  		</fieldset>
			<fieldset><legend>Remarques</legend>
			<table style='border: 0px solid white;'>
				<tr> 
					 <td>.".$lesInfosAgent['agCommentaire']."</td>
				</tr>
			</table>
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
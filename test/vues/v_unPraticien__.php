<!-- Derniere modification le 3 Mai 2018 Théo Corbel -->
<div id="contenu">
<?php
 	if ($_REQUEST['action']=="supprimer") 
		{ 	echo '<h2>SUPPRESSION DU PRATICIEN'.$lesInfosPraticien['nom'].' '.$lesInfosPraticien['prenom'].'</h2>';
		 	echo '<form name="frmA" 	action="index.php?choixTraitement=praticiens&action=validerSupprimer&type='.$type.'&praticien='.$lesInfosPraticien['id'].'" method="post">';} 
 	if ($_REQUEST['action']=="modifier") 
		{ 	echo '<h2>MODIFICATION DU PRATICIEN '.$lesInfosPraticien['nom'].' '.$lesInfosPraticien['prenom'].'</h2>'; 	
			echo '<form name="frmA" 	action="index.php?choixTraitement=praticiens&action=validerModifier&type='.$type.'&praticien='.$lesInfosPraticien['id'].'" method="post">';}
 	if ($_REQUEST['action']=="ajouter") 
		{ 	echo "<h2>AJOUT D'UN NOUVEAU PRATICIEN</h2>";
			echo '
			<form name="frmA" 	action="index.php?choixTraitement=praticiens&action=validerAjouter&type='.$type.'" method="post" onsubmit="return valider(this)">';}
	echo ("	
    <fieldset><legend>Coordonn&eacute;es</legend>
		<table>");
	
$titre="Pr&eacute;nom";
 if ($_REQUEST['action']=="supprimer")  //-------------------------------------------------------- cas suppression
 {	echo ("
			<tr><th style='width:130px;'>Nom</th>	<td style='width:130px;'>".$lesInfosPraticien['pNom']."</td> </tr>
			<tr><th>".$titre."</th>					<td>".$lesInfosPraticien['pPrenom']."</td> </tr>
			<tr><th>Adresse</th>					<td>".$lesInfosPraticien['pRue']."</td> </tr>
			<tr><th>Code postal</th>				<td>".$lesInfosPraticien['pCP']."</td> </tr>
			<tr><th>Ville</th>						<td>".$lesInfosPraticien['pVille']."</td> </tr>					
			<tr><th>Statut</th>						<td>".$lesInfosPraticien['pCoefNotoriete']."</td> </tr>
			<tr><th>Type</th>						<td>".$lesInfosPraticien['pCode']."</td> </tr>
			<tr><th>Region;</th>				<td>".$lesInfosPraticien['pRegion']."</td></tr>
        </table>
    </fieldset>");	
	}
 else	//------------------------------------------------------------------------------------ cas ajout ou modification
	 {		if ($_REQUEST['action']=="ajouter")	{unset($lesInfosPraticien);}
	 		echo ('
			<tr>	
				<th style="width:130px;">Nom
				<td style="width:130px;">
					<input class="controleLong" type="text" name="ztNom" id="Nom" onblur="verifTexte(this.form, this, 55)" required value="'.$lesInfosPraticien['pNom'].'">
			</tr>
			<tr>
				<th>'.$titre.'
				<td>
					<input class="controleLong" type="text" name="ztPrenom" id="'.$titre.'" onblur="verifTexte(this.form, this, 25)" value="'.$lesInfosPraticien['pPrenom'].'">');
			if($_REQUEST['action']=="ajouter") {echo ("
			<tr>
				<th style='width:130px;'>Code du praticien (initiales, 3 lettres maxi)</th>
				<td style='width:130px;'>
				<input class='controle' type='text' name='praticien' id='code praticien' onblur='verifTexte(this.form, this, 3)'></td> ");}
			echo ('	
	  		<tr>
				<th>Adresse</th>			
				<td style="width:150px;">
				<input class="controleLong" type="text" name="ztAdresse" value="'.$lesInfosPraticien['pRue'].'"></td> 
			<tr>
				<th>Code postal</th>
				<td><input  class="controle" type="text"  pattern="[0-9]{5}" id="Code postal"  name="ztCP" value="'.$lesInfosPraticien['pCP'].'"</td>');
			echo ("
			<a href=\"javascript:openCodesPostaux('ztCP','ztVille');\" title='Trouvez un code postal en France'>
			<img src='images/cp.gif' width='16' height='13' alt='codes postaux' title='S&eacute;l&eacute;ctionnez votre code postal gr&acirc;ce &agrave; www.codes-postaux.org'></a></td> </tr>
			<tr>
				<th>Ville</th>
				<td><input class='controleLong' type='text' name='ztVille' value='".$lesInfosPraticien['agVille']."'>
			<tr>
				<th>Type de praticien</th>
				<td><select name = 'ldrStatut' style='width:200px;'>"); 
			foreach ($lesTypesP as $unTypeP)
			{	if($unTypeP['pIndice']===$lesInfosPraticien['agStatut']){$selected = "selected";}	else {$selected = null;}
				echo '
					<option '.$selected.' value="'.$unTypeP['pIndice'].'">'.$unTypeP['pLibelle'].'</option>';
			}
if ($_REQUEST['action']=="modifier") {echo ("
			<tr>
				<th>Nouveau mot de passe ?
				<td><input type='radio' name='brMdp' value='0' checked>Non <input type='radio' name='brMdp' value='1'>Oui");}
else {echo ("
			<tr>
				<th>Mot de passe 
				<td>");}
echo ("
				<input class='controleLong' type='text' name='ztMdp' id='Mot de passe'></td></tr>
			<tr>
			<th>Territoire
			<td><select name='ldrTerritoire' style='width:200px;'>");
			foreach ($lesTerritoires as $unTerritoire)
			{	if($unTerritoire['pIndice']===$lesInfosPraticien['pRegion']){$selected = "selected";}	else {$selected = null;}
				echo '
				<option '.$selected.' value="'.$unTerritoire['pIndice'].'">'.$unTerritoire['pLibelle'].'</option>';
			} echo ("
			</select>
		</table>
    </fieldset>"); 
	}
?>         
            <table style='border: 0px solid white; '>
            	<tr>
                <td style='border: 0px solid white;'>
                	<fieldset><legend>Observations</legend>
                 	<textarea name='ztObs' cols='70' rows='1'><?php echo $lesInfosPraticien['agCommentaire'];?></textarea>
                	</fieldset>
                </td>
                <td style='border: 0px solid white; witdh:130px; text-align:right;'>
                	<input type="hidden" 	name="zTypeAdm"		value="<?php if ($type=="adm") {echo ("true");} else {echo ("false");} ?>"> 
                	<input type="hidden" 	name="zOk"			value="OK"> 
                    <input type="image" 	name="btValider" 	alt="Valider" 	src="images/valider.jpg" value="OK" >
                    <input type="image"		name="btAnnuler" 	alt="Annuler" 	src="images/annuler.jpg" value="nonOK" 	onclick="annuler('frmA');"> 
                </td>
                </tr>
            </table>         
    </form>

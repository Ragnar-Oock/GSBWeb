<!-- Derniere modification le 6 fevrier 2014 par Pascal Blain -->
<div id="contenu">
<?php
 	if ($_REQUEST['action']=="supprimer") 
		{ 	echo '<h2>SUPPRESSION DE L\'AGENT '.$lesInfosAgent['nom'].' '.$lesInfosAgent['prenom'].'</h2>';
		 	echo '<form name="frmA" 	action="index.php?choixTraitement=agents&action=validerSupprimer&type='.$type.'&agent='.$lesInfosAgent['id'].'" method="post">';} 
 	if ($_REQUEST['action']=="modifier") 
		{ 	echo '<h2>MODIFICATION DE L\'AGENT '.$lesInfosAgent['nom'].' '.$lesInfosAgent['prenom'].'</h2>'; 	
			echo '<form name="frmA" 	action="index.php?choixTraitement=agents&action=validerModifier&type='.$type.'&agent='.$lesInfosAgent['id'].'" method="post">';}
 	if ($_REQUEST['action']=="ajouter") 
		{ 	echo "<h2>AJOUT D'UN NOUVEL AGENT</h2>";
			echo '
			<form name="frmA" 	action="index.php?choixTraitement=agents&action=validerAjouter&type='.$type.'" method="post" onsubmit="return valider(this)">';}
	echo ("	
    <fieldset><legend>Coordonn&eacute;es</legend>
		<table>");
	
$titre="Pr&eacute;nom";
 if ($_REQUEST['action']=="supprimer")  //-------------------------------------------------------- cas suppression
 {	echo ("
			<tr><th style='width:130px;'>Nom</th>	<td style='width:130px;'>".$lesInfosAgent['nom']."</td> </tr>
			<tr><th>".$titre."</th>					<td>".$lesInfosAgent['prenom']."</td> </tr>
			<tr><th>Adresse</th>					<td>".$lesInfosAgent['agAdresse']."</td> </tr>
			<tr><th>Code postal</th>				<td>".$lesInfosAgent['agCp']."</td> </tr>
			<tr><th>Ville</th>						<td>".$lesInfosAgent['agVille']."</td> </tr>
			<tr><th>T&eacute;l&eacute;phone</th>	<td>".$lesInfosAgent['agTel']."</td> </tr>					
			<tr><th>Statut</th>						<td>".$lesInfosAgent['wStatut']."</td> </tr>
			<tr><th>Adresse &eacute;lectronique</th><td>".$lesInfosAgent['agMail']."</td> </tr>
			<tr><th>T&eacute;l&eacute;phone</th>	<td>".$lesInfosAgent['agTel']."</td> </tr>
			<tr><th>Nom de compte</th>				<td>".$lesInfosAgent['agLogin']."</td></tr>
			<tr><th>Territoire;</th>				<td>".$lesInfosAgent['agTerritoire']."</td></tr>
        </table>
    </fieldset>");	
	}
 else	//------------------------------------------------------------------------------------ cas ajout ou modification
	 {		if ($_REQUEST['action']=="ajouter")	{unset($lesInfosAgent);}
	 		echo ('
			<tr>	<th style="width:130px;">Nom</th>			<td style="width:130px;">
					<input class="controleLong" type="text" name="ztNom" id="Nom" onblur="verifTexte(this.form, this, 55)" required value="'.$lesInfosAgent['nom'].'"></td> </tr>
			<tr>	<th>'.$titre.'</th>									<td>
					<input class="controleLong" type="text" name="ztPrenom" id="'.$titre.'" onblur="verifTexte(this.form, this, 25)" value="'.$lesInfosAgent['prenom'].'"></td> </tr>');
			if($_REQUEST['action']=="ajouter") {echo ("
			<tr>	<th style='width:130px;'>Code de l'agent (initiales, 3 lettres maxi)</th><td style='width:130px;'>
					<input class='controle' type='text' name='agent' id='code agent' onblur='verifTexte(this.form, this, 3)'></td> </tr>");}
			echo ('	
	  		<tr><th>Adresse</th>			<td style="width:150px;"><input class="controleLong" type="text" name="ztAdresse" value="'.$lesInfosAgent['agAdresse'].'"></td> </tr>
			<tr><th>Code postal</th>		<td><input  class="controle" type="text"  pattern="[0-9]{5}" id="Code postal"  name="ztCP" value="'.$lesInfosAgent['agCp'].'" >'); 
			echo ("
			<a href=\"javascript:openCodesPostaux('ztCP','ztVille');\" title='Trouvez un code postal en France'>
			<img src='images/cp.gif' width='16' height='13' alt='codes postaux' title='S&eacute;l&eacute;ctionnez votre code postal gr&acirc;ce &agrave; www.codes-postaux.org'></a></td> </tr>
			<tr><th>Ville</th>				<td><input class='controleLong' type='text' name='ztVille' value='".$lesInfosAgent['agVille']."'></td> </tr>
			<tr> <th>Statut</th>			<td><select name = 'ldrStatut' style='width:200px;'>"); 
			foreach ($lesStatuts as $unStatut)
			{	if($unStatut['pIndice']===$lesInfosAgent['agStatut']){$selected = "selected";}	else {$selected = null;}
				echo '
					<option '.$selected.' value="'.$unStatut['pIndice'].'">'.$unStatut['pLibelle'].'</option>';
			}
 if ($lesInfosAgent['agTel']>1) {$tel=substr("0".$lesInfosAgent['agTel'],0,2)." ".substr("0".$lesInfosAgent['agTel'],2,2)." ".substr("0".$lesInfosAgent['agTel'],4,2)." ".substr("0".$lesInfosAgent['agTel'],6,2)." ".substr("0".$lesInfosAgent['agTel'],8,2);} else {$tel=Null;}
			echo ("
			</select></td> </tr> 
			<tr><th>Adresse &eacute;lectronique</th>	<td>
				<input class='controleLong' type='email' name='ztMail' id='Adresse electronique'  value='".$lesInfosAgent['agMail']."'></td></tr>
			<tr><th>T&eacute;l&eacute;phone</th>		<td>
				<input class='controleLong' type='tel' pattern='^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$' name='ztTel' id='Telephone'  value='".$tel."'></td> </tr>
			<tr><th>Nom de compte</th>					<td>
				<input class='controleLong' type='text' name='ztLogin' id='Nom de compte' onblur='verifTexte(this.form, this, 15)'  value='".$lesInfosAgent['agLogin']."'></td></tr>");
if ($_REQUEST['action']=="modifier") {echo ("
			<tr><th>Nouveau mot de passe ?</th>			<td><input type='radio' name='brMdp' value='0' checked>Non <input type='radio' name='brMdp' value='1'>Oui");}
else {echo ("
			<tr><th>Mot de passe </th>					<td>");}
echo ("
				<input class='controleLong' type='text' name='ztMdp' id='Mot de passe'></td></tr>
			<tr><th>Territoire</th>							<td><select name='ldrTerritoire' style='width:200px;'>");
			foreach ($lesTerritoires as $unTerritoire)
			{	if($unTerritoire['pIndice']===$lesInfosAgent['agTerritoire']){$selected = "selected";}	else {$selected = null;}
				echo '
				<option '.$selected.' value="'.$unTerritoire['pIndice'].'">'.$unTerritoire['pLibelle'].'</option>';
			} echo ("
			</select></td> </tr>
		</table>
    </fieldset>"); 
	}
?>         
            <table style='border: 0px solid white; '>
            	<tr>
                <td style='border: 0px solid white;'>
                	<fieldset><legend>Observations</legend>
                 	<textarea name='ztObs' cols='70' rows='1'><?php echo $lesInfosAgent['agCommentaire'];?></textarea>
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

<?php
/*================================================================================================== compte rendu (3)*/
echo ("
		
			
					<div style='display: block; margin-left: -600px; margin-top: -120px;'>
						<div id='contenu'>
						<fieldset><legend>compte rendu</legend>
				<br><br><h2 align=center>SAISIES COMPTE RENDU </h2><br><br>	
									<div style='display: block; margin-left: -600px; margin-top: -120px;'>
					<form>
						
						<div>
							<br><button type='submit'>Soumettre</button>
						</div>
					</form>
				</div>
				<div style='display: block; margin-left: 950px; margin-top: -210px;'>
					<form>
						<p>Vos observations : <br><TEXTAREA name='nom' rows=6 cols=40></TEXTAREA>
					</form>
					<div style='display: block; margin-left: -300px; margin-top: -120px;'>
						<p>Date de la visite : <input type='date' name='DateVisite'></p>
						<p>Motif de la visite :</p>
						<select>
							<option value=''>Motif</option>
							<option value='Actualisationannuelle'>Actualisation annuelle</option>
							<option value='RapportAnnuel'>Rapport Annuel</option>
							<option value='Baisseactivité'>Baisse activité</option>
						</select>
					</div>
					<div style='display: block; margin-left: 50px; margin-top: 100px;'>
							<form name='choixP' action='index.php?choixTraitement=praticien&action=voir' method='post'>
								<h2>Nom et Prenom</h2>
								<select name='lstPraticiens' STYLE='width:350px;' onchange='submit()'>");
if (!isset($_REQUEST['lstPraticiens'])) {$choix = 'premier';} else {$choix =$_REQUEST['lstPraticiens'];}
$i=1; 
foreach ($lesLignes as $uneLigne) 
{	
	if($uneLigne['pNum'] == $choix or $choix == 'premier')
	{
		echo ("								<option selected value=\"".$uneLigne['pNum']."\">".$uneLigne['pNom']." ".$uneLigne['pPrenom']."</option>\n		");
		$choix = $uneLigne['pNum'];
		$noL=$i;
	}
	else
	{
		echo "								<option value=\"".$uneLigne['pNum']."\">".$uneLigne['pNom']." ".$uneLigne['pPrenom']."</option>\n";
		$i=$i+1;
	}
}	           
echo ('   
						
								</select>
							</form>
						</div>
					</div>
				</div>
			</fieldset>
	');
?>
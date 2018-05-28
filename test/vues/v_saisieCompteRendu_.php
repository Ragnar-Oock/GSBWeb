		<?php

	// php1_1.php : support de cours PHP (passage de paramètres via l'adresse URL/mthode GET)
	// créé le : 6 février 2014 par P.Blain
	// modifié : 03/05/2018 par A.FARSI

/*================================================================================================== compte rendu (3)*/
echo ("
					<div style='display: block; margin-left: -100px; margin-top: -100px;'>
						<div id='contenu'>
							<br><br><h2 align=center>SAISIES COMPTE RENDU </h2><br><br>
								<div style='display: block; margin-left: 10px; margin-top: 10px;'>
									<form name='choixP' action='index.php?choixTraitement=compteRendu&action=validerAjouter' method='post'>
									<p>Nom et Prenom</p>
									<select name='lstPraticiens' STYLE='width:350px;' >");
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
											echo"
									</select><br><br>
									<p>Date de la visite : <input type='date' name='DateVisite'></p>
									<div style='display: block; margin-left: 10px; margin-top: 10px;'>

								</div>
								<div style='display: block; margin-left: 425px; margin-top: -100px;'>

									<p>Motif de la visite :</p>
									<select name='lstmotif'> ";
										if (!isset($_REQUEST['lstmotif'])) {$choix = 'premier';} else {$choix =$_REQUEST['lstmotif'];}
										$i=1;
										foreach ($lesMotifs as $unMotif)
										{
											if($unMotif['pIndice'] == $choix or $choix == 'premier')
											{
												echo ("								<option selected value=\"".$unMotif['pNum']."\">".$unMotif['pLibelle']." </option>\n		");
												$choix = $unMotif['pIndice'];
												$noL=$i;
											}
											else
											{
												echo "								<option value=\"".$unMotif['pIndice']."\">".$unMotif['pLibelle']."</option>\n";
												$i=$i+1;
											}
										}

									echo ('
									</select>
										<p>Vos observations : <br><TEXTAREA name="nom" rows=6 cols=40></TEXTAREA>
										');
									include("vues/v_echantillon.php");
									echo ('
									<div style="display: block; margin-left: 140px; margin-top: 20px;">
										<br><button style="width:150px" type="submit">Soumettre</button>
									</div>
								</form>
							</div>
						</div>
					</div>
	');
?>

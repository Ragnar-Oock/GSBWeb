<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <title>LYCEE LE CASTEL</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link href="./styles/styles.css" rel="stylesheet" type="text/css" />
	<link href="./styles/GSBGlobal.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image/x-icon" href="./images/favicon.ico" />
  	<script src="include/proceduresJava.js" type="text/javascript"></script>
  </head>
<?php 
	if (isset($_REQUEST['zFormulaire']))	{$formulaire=$_REQUEST['zFormulaire'];} 
	if (isset($_REQUEST['zChamp']))			{$champ		=$_REQUEST['zChamp'];}
?>	
  <body onload="donner_focus('<?php echo $formulaire."','".$champ;?>');">
    <div id="page">
		<div id="entete">
	        <img src="./images/logo.png" id="logo" alt="Le Castel" title="section BTS SIO" />
	        <div id="sommaire">
<?php if (isset($_SESSION['idUtilisateur'])) 
		{echo '
				<ul>
					<li><a href="index.php?choixTraitement=compteRendu&action=voir" title="compteRendu">Compte Rendu</a>|</li>
					<li><a href="index.php?choixTraitement=choix2&action=voir" title="choix2">choix 2</a>|</li>
					<li><a href="index.php?choixTraitement=parametres&action=voir" title="parametres">parametres</a>|</li>
					<li><a href="index.php?choixTraitement=agents&action=voir&type=a">agents</a>|</li>
					<li><b>Bienvenue '.$_SESSION['prenom'].'  '.strtoupper($_SESSION['nom']).' </b></li>
					<li style="text-align:left;"><a href="index.php?choixTraitement=connexion&action=demandeConnexion" title="Se d&eacute;connecter"><img alt="déconnexion" src="images/deconnexion.png" border="0" height="26px"></a></li>
				</ul>';
		}
?> 
				<h1>LE CASTEL : Application de demonstration MVC</h1>
				
			</div>
			</div>
<!-- fin affichage du menu -->
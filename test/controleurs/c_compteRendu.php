<?php
// ****************************************'
//  Le CASTEL-BTS SIO/ PROJET FORMATION    '
//  Programme: c_agents.php                '
//  Objet    : gestion des agents          '
//  Client   : Bts SIO1                    '
//  Version  : 1.0                         '
//  Date     : 06/02/2014 à 16h11          '
//  Auteur   : pascal-blain@wanadoo.fr     '
//*****************************************'
$action = $_REQUEST['action'];
switch($action) {
case 'voir':
	{
		$formulaire		="choixP";
		$champ			="lstAgents";	

		include("vues/v_entete.php");
		/*$lesLignes		=$pdo->getLesAgents();
		include("vues/v_choixAgent.php");*/
		$choix=1;
		//$lesCompteRendu 	= $pdo->getCompteRendu("*",$choix);
		include("vues/v_compteRendu.php");
		break;
	}
//----------------------------------------- FORMULAIRE DE SAISIE
case 'ajouter':
case 'modifier':
case 'supprimer':
	{ 
		$formulaire		="frmA";
		$champ			="ztNom";	
		include("vues/v_entete.php");
		$choix= $_REQUEST['lstAgents'];
		$lesInfosAgent 	= $pdo->getInfosAgent("*",$choix);
		$lesTerritoires = $pdo->getParametre("territo");
		$lesStatuts		= $pdo->getParametre("statAgt");
		include("vues/v_unAgent.php");
		break;
	}
//----------------------------------------- VALIDATION	
case 'validerAjouter':
case 'validerModifier':	
case 'validerSupprimer':
	{
		$valeur	= $_REQUEST['agent'];		
		if ($_REQUEST['zOk']=="OK") 
		{
			if ($action==="validerSupprimer") {$pdo->supprimeAgent($valeur);}
			else
				{
				$nom		= addslashes ($_REQUEST['ztNom']);
				$prenom		= addslashes ($_REQUEST['ztPrenom']);
				$statut		= $_REQUEST['ldrStatut'];
				$mail		= $_REQUEST['ztMail'];
				$login		= $_REQUEST['ztLogin'];
				$mdp		= md5($_REQUEST['ztMdp']);	if($_REQUEST['brMdp']==0 AND $action==="validerModifier") {$mdp="*";}
				$territoire	= $_REQUEST['ldrTerritoire'];
				$adresse	= addslashes ($_REQUEST['ztAdresse']);
				if (strlen($_REQUEST['ztCP'])>1)				{$cp	= $_REQUEST['ztCP'];} else {$cp = "Null";}
				$ville			= addslashes ($_REQUEST['ztVille']);
				if (strlen($_REQUEST['ztTel'])>1) 			{$tel	= str_replace(" ", "", $_REQUEST['ztTel']); $tel=str_replace(".", "", $tel);	$tel=str_replace("/", "", $tel);} else {$tel="Null";}
				$commentaire	= addslashes ($_REQUEST['ztObs']);
				if ($action==="validerAjouter") 
					{$pdo->ajoutAgent($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire);
					$sujet 	= "nouveau compte";
					$msg = "Bonjour ".$prenom." ".$nom.", \r\nLe Castel vient de créer un compte pour vous  ...\r\n";
					}
				else 
					{$pdo->majAgent($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire);
					$sujet 	= "nouveau mot de passe";
					$msg = "Bonjour ".$prenom." ".$nom.", \r\nLe Castel vient de modifier votre mot de passe  ...\r\n";
					}		
				$entete	= "From: Pascal Blain <pascal-blain@wanadoo.fr>\r\n";
				$entete	.= "Mime-Version: 1.0\r\n";
				$entete	.= "Content-type: text/html; charset=utf-8\r\n";
				$entete	.= "\r\n";
				$msg .= "Statut : ".$statut."\r\n";
				$msg .= "Identifiant : ".$login."\r\n";
				$msg .= "Mot de passe : ".$_REQUEST['ztMdp']."\r\n";
				//$pdo->envoyerMail($mail, $sujet, $msg, $entete);
				}
		}
		header ('location: index.php?choixTraitement=agents&action=voir&lstAgents='.$valeur);
		break;
	}
	//----------------------------------------- 
default :
	{
		echo 'erreur d\'aiguillage !'.$action;
		break;
	}
}
?>

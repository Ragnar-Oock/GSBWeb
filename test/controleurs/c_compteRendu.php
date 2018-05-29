<?php
// ****************************************'
//  Le CASTEL-BTS SIO/ PROJET FORMATION    '
//  Programme: c_praticiens.php            '
//  Objet    : gestion des praticiens      '
//  Client   : Bts SIO1                    '
//  Version  : 1.0                         '
//  Date     : 06/02/2014 à 16h11          '
//  Auteur   : pascal-blain@wanadoo.fr     '
//*****************************************'
$action = $_REQUEST['action'];
//$rid = $_REQUEST['rid'];
switch($action) {
case 'voir':
	{
		$formulaire="choixP";
		$champ="lstPraticiens";
		$titre="Nom et prenom";
		include("vues/v_entete.php");
		$lesLignes=$pdo->getLesPraticiens();
		/*if ($rid != NULL)
		{
			$results = $pdo->getCompteRendu($id);
		}
		else
		{
			$results 		=$pdo->getCompteRendu($rid);
			$rid = NULL ;
		}*/
		$choix=1;
		$lesCompteRendu 	= $pdo->getCompteRendu($_SESSION['uid']);
		include("vues/v_listeCompterendu.php");
		break;
	}
//----------------------------------------- FORMULAIRE DE SAISIE
case 'ajouter':
	{
		include("vues/v_entete.php");
		$lesLignes		=$pdo->getLesPraticiens();
		$lesMotifs =$pdo->getParametre("typeVis","*");
		$lesEchantillons=$pdo->getEchantillon();
		include("vues/v_saisieCompteRendu_.php");
		/*foreach ($lesEchantillons as $unEchantillon) {
			if ($unEchantillon['mNum']!=0) {
				array_push($lesEchantillonValide[]=$unEchantillon['mNum']);
			}
		}
		$vNum = getNouvelleVisiteNum($_SESSION['iud']);
		foreach ($lesEchantillonValide as $unEchantillonValide) {
			AjouterEchantillon($_SESSION['iud'], $vNum, $unEchantillonValide, );
		}*/
		break;
	}
case 'modifier':
case 'supprimer':
	{
		$formulaire="frmA";
		$champ="ztNom";
		include("vues/v_entete.php");
		$choix= $_REQUEST['lstPraticiens'];
		$lesInfosPraticien 	= $pdo->getInfosPraticiens("*",$choix);
		/*$lesTerritoires = $pdo->getParametre("territo");
		$lesStatuts		= $pdo->getParametre("statAgt");*/
		include("vues/v_unPraticien.php");
		include("vues/v_echantillon.php");
		break;
	}
//----------------------------------------- VALIDATION
case 'validerAjouter': {
	include("vues/v_entete.php");
	$ligne=0;
	$lesEchantillons=$pdo->getEchantillon();
	include("vues/v_validerCompteRendu.php");
	break;
}
case 'validerModifier':
case 'validerSupprimer':
	{
		$valeur	= $_REQUEST['praticien'];
		if ($_REQUEST['zOk']=="OK")
		{
			if ($action==="validerSupprimer") {$pdo->supprimePraticien($valeur);}
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
					{$pdo->ajoutPraticien($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire);
					$sujet 	= "nouveau compte";
					$msg = "Bonjour ".$prenom." ".$nom.", \r\nLe Castel vient de créer un compte pour vous  ...\r\n";
					}
				else
					{$pdo->majPraticien($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire);
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
				}
		}
		header ('location: index.php?choixTraitement=praticiens&action=voir&lstPraticiens='.$valeur);
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

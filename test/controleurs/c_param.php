<?php
// ****************************************'
//  Le CASTEL-BTS SIO/ PROJET Formation        '
//  Programme: c_param.php                '
//  Objet    : gestion des parametres         '
//  Client   : SIO1              '
//  Version  : 2.0                         '
//  Date     : 05/04/2018 à 14H20          '
//  Auteur  : pascal-blain@wanadoo.fr     '
//*****************************************'

$action 		= $_REQUEST['action'];
$type 		= $_REQUEST['type'];
$valeur 		= $_REQUEST['valeur'];
$plancher	= intval($_REQUEST['zPlancher']);
$plafond	= intval($_REQUEST['zPlafond']);
$zType		= $_REQUEST['zType'];
$indice 		= $_REQUEST['zIndice'];
if ($type==="motifSo")  {$plancher=intval($_REQUEST['choixOrientation']);}

switch($action) {
case 'voir':
	{
		include("vues/v_entete.php");
		$lesParametres=$pdo->getLesParametres();
		include("vues/v_choixParam.php");
		$enteteParametre=$lesParametres[$noP-1];
		$lesInfosParametre = $pdo->getParametre($choix,"*");
		include("vues/v_ficheParametre.php");
		$stat="2";
		break;
	}
//-----------------------------------------liste détaillée pour un parametre
case 'liste':
	{
		include("vues/v_entete.php");
		$lesParametres=$pdo->getLesParametres();
		include("vues/v_choixParam.php");

		$lesStatistiques = $pdo->getParametre($choix, $indice);
		$titre2=$lesStatistiques[0]['libelle'];
		include("vues/v_listeStat.php");
		break;
	}
//----------------------------------------- AJOUT
case 'ajouter':
case 'modifier':
case 'supprimer':
	{
		include("vues/v_entete.php");
		$infosParam = $pdo->getInfosParam($type, $valeur);
		include("vues/v_unParam.php");
		break;
	}
//----------------------------------------- VALIDATIONS
case 'validerAjouter':
	{// enregistrement de la ligne et retour
		echo $_REQUEST['zOk']; break;
		if ($_REQUEST['zOk']=="OK") {$pdo->ajoutParametre($type, $valeur, addslashes ($_REQUEST['zLibelle']), $_REQUEST['zTerritoire'], $_REQUEST['zDep'] , $plancher, $plafond);}
		//header ('location: index.php?choixTraitement=parametres&action=voir&lstParam='.$type);
	}
//----------------------------------------- MODIFICATION
case 'validerModifier':
	{
		if ($_REQUEST['zOk']=="OK") {$pdo->majParametre($type, $valeur, addslashes ($_REQUEST['zLibelle']), $_REQUEST['zTerritoire'], $_REQUEST['zDep'], $plancher, $plafond);}
		header ('location: index.php?choixTraitement=parametres&action=voir&lstParam='.$type);
		break;
	}
//----------------------------------------- SUPPRESSION
case 'validerSupprimer':
	{
		if ($_REQUEST['zOk']=="OK") {$pdo->supprimeParametre($type, $valeur);}
		header ('location: index.php?choixTraitement=parametres&action=voir&lstParam='.$type);
		break;
	}

default :
	{
		echo 'erreur d\'aiguillage !'.$action;
		break;
	}
}

?>

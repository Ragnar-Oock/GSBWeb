<?php
session_start();
// ****************************************'
//  Le CASTEL-BTS SIO/ PROJET FORMATION    '
//  Programme: index.php                   '
//  Objet    : page principale             '
//  Client   : Bts SIO1                    '
//  Version  : 1.0                         '
//  Date     : 05/04/2018 à 14H23          '
//  Auteur   : pascal-blain@wanadoo.fr     '
//*****************************************'

require_once("include/fct.inc");
require_once ("include/class.pdo.php");

$pdo = PdoBD::getPdoBD();
$estConnecte = estConnecte();

//on vérifie que l'agent est authentifié
if(!isset($_REQUEST['choixTraitement']) || !$estConnecte)
{
	$_REQUEST['choixTraitement'] = 'connexion';
}

// on analyse le cas d'utilisation en cours ...
$choixTraitement= $_REQUEST['choixTraitement'];
switch($choixTraitement)
{
	case 'connexion'	:		{include("controleurs/c_connexion.php");break;}
	case 'compteRendu' 	:		{include("controleurs/c_compteRendu.php");break;}
	case 'praticiens' 	:		{include("controleurs/c_praticien.php");break;}	
	case 'parametres' 	:		{include("controleurs/c_param.php");break;}
	case 'recherche'	:		{include("controleurs/c_recherche.php");break;}
	default 			:		{echo 'erreur d\'aiguillage !'.$choixTraitement;break;}
}
include("vues/v_pied.php") ;
?>

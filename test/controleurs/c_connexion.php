<?php
// ****************************************'
//  Le CASTEL-BTS SIO/ PROJET FORMATION    '
//  Programme: c_connexion.php             '
//  Objet    : authentification            '
//  Client   : Bts SIO1                    '
//  Version  : 1.0                         '
//  Date     : 06/02/2014 à 16h11          '
//  Auteur   : pascal-blain@wanadoo.fr     '
//*****************************************'

if(!isset($_REQUEST['action'])){$_REQUEST['action'] = 'demandeConnexion';}

$action = $_REQUEST['action'];
switch($action){
	case 'demandeConnexion':{
	session_unset();
	unset($choix);
	$formulaire		="frmIdentification";
	$champ			="login";
	include("vues/v_enteteConnexion.php");
	include("vues/v_connexion.php");
	break;
	}
	case 'valideConnexion':{
		$login 			= $_REQUEST['login'];
		$mdp 			= $_REQUEST['mdp'];
		$utilisateur 	= $pdo->getInfosUtilisateur($login,$mdp);

		if(!is_array( $utilisateur)){
			$formulaire = "frmIdentification";
			$champ = "login";
			include("vues/v_enteteConnexion.php");
			ajouterErreur("Login ou mot de passe incorrect");
			include("vues/v_erreurs.php");
			include("vues/v_connexion.php");
		}
		else{
			$id 			= $utilisateur['id'];
			$nom 			= $utilisateur['nom'];
			$prenom 		= $utilisateur['prenom'];
			connecter($id,$nom,$prenom,$utilisateur['agStatut'],$utilisateur['agTerritoire']);
			header ('location: index.php?choixTraitement=praticiens&action=voir');
		}
		break;
	}
	default :{
		$formulaire			="frmIdentification";
		$champ				="login";
		include("vues/v_enteteConnexion.php");
		include("vues/v_connexion.php");
		break;
	}
}
?>

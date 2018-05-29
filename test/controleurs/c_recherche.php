<?php
$action = $_REQUEST['action'];
$rechercher = $_REQUEST['recherche'];

switch ($action) {
	case 'voir':
	{
		include("vues/v_entete.php");
		$results = $pdo->getLesResultats($rechercher);
		include("vues/v_afficherRecherche.php");
		$results = NULL;
		break;
	}
	default:
	{
		echo("error");
		break;
	}
}
?>

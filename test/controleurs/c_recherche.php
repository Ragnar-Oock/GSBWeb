<?php

$action = $_REQUEST['action'];
$rechercher = $_REQUEST['recherche'];

echo("test1");
switch ($action) {
	case 'voir':
	{
		include("vues/v_entete.php");
		$results = $pdo->getLesResultats($rechercher);
		include("vues/v_afficherRecherche.php");
		//echo($results);
		break;
	}
	default:
	{
		echo("error");
		break;
	}
}
?>
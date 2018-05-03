<?php

$action = $_REQUEST['action'];
$rechercher = $_REQUEST['search'];
echo($action);

echo("test1");
switch ($action) {
	case 'voir':
	{
		include("vues/v_entete.php");
		$results = $pdo->getLesResultats($rechercher);
		include("vues/v_afficherRecherche.php");
		break;
	}
	
	default:
	{
		echo("error");
		break;
	}
}

echo("test3");

?>
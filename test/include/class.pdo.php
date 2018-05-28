<?php
/**
 * @author 	:Pascal BLAIN, lycee le castel à Dijon
 * @version :1. 05/04/2018
 * Classe d'acces aux donnees. Utilise les services de la classe PDO pour l'application
 * Les attributs sont tous statiques, les 4 premiers pour la connexion
 * $monPdo est de type PDO - $monPdoBD contient l'unique instance de la classe
 * @link       http://www.php.net/manual/fr/book.pdo.php
 */

class PdoBD
{
	private static $serveur='mysql:host=localhost';
	private static $bdd='dbname=gsbvisite';
	private static $user='phpmyadmin';
	private static $mdp='ppe24';
	private static $monPdo;
	private static $monPdoBD=null;

	private function __construct()
	{
		PdoBD::$monPdo = new PDO(PdoBD::$serveur.';'.PdoBD::$bdd, PdoBD::$user, PdoBD::$mdp);
		PdoBD::$monPdo->query("SET CHARACTER SET utf8");
	}
	public function _destruct()
	{
		PdoBD::$monPdo = null;
	}

	/**
	 * Fonction statique qui cree l'unique instance de la classe PdoBD
	 * Appel : $instancePdoBD = PdoBD::getPdoBD();
	 */
	public  static function getPdoBD()
	{
		if(PdoBD::$monPdoBD==null)	{PdoBD::$monPdoBD= new PdoBD();}
		return PdoBD::$monPdoBD;
	}

	/**
	 * Retourne les informations des AGENTS
	*/
	public function getLesPraticiens()
	{
		$req = "SELECT pNum, pNom, pPrenom
					FROM praticien
					ORDER BY 2;";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des praticiens ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}
	public function getLestypePraticiens()
	{
		$req = "SELECT tLibelle,tCode
					FROM typePraticien
					ORDER BY 1;";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des types de praticiens ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignesTypes = $rs->fetchAll();
		return $lesLignesTypes;
	}
	public function getInfosPraticiens($Att, $Num)
	{
		$req = "SELECT pNum as id, pNom, pPrenom, pRue, pCP, pVille, pCoefNotoriete, pCode, pRegion, rCode, rNom
				FROM  praticien
				INNER JOIN region ON pRegion=rCode
				WHERE pNum='$Num';";
		/*if ($login==="*")
		{$req.=" WHERE ='$mdp'";}
		else
		{$req.=" WHERE uLogin='$login'
				 AND uMdp='$mdp'";}*/
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des informations d'un praticien...", $req, PdoBD::$monPdo->errorInfo());}
		$ligne = $rs->fetch();
		return $ligne;
	}

	/**
	 * Retourne les informations d'un agent sous la forme d'un tableau associatif
	*/
	public function getInfosUtilisateur($login,$mdp)
	{
		$req = "SELECT	utilisateur.uId as id,
		 								uNom as nom,
										uPrenom as prenom,
										uLogin,
										uMdp,
										uAdresse,
										uCp,
										uVille,
										uDateEmbauche,
										uSecteur,
										uLabo,
										uStatut,
										uPuissance,
										uMotorisation,
										region,
										Concat(praticien.pNom, \" \",praticien.pPrenom) as derniereVisite,
										DATE_FORMAT(visite.vDate,'%W %d %b %Y') as visiteDate,
										COUNT(visite.vNum) as nbVisite
					  FROM  utilisateur INNER JOIN visite ON utilisateur.uId=visite.uid
															INNER JOIN praticien ON praticien.pNum=visite.pNum
						WHERE uLogin='$login'
									AND uMdp='$mdp'
						ORDER BY visite.vDate DESC
						LIMIT 1";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des informations d'un utilisateur...", $req, PdoBD::$monPdo->errorInfo());}
		$ligne = $rs->fetch();
		return $ligne;
	}

/**
	* Met a jour une ligne de la table AGENT
*/
	public function majAgent($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire)
	{
		$req = "UPDATE agent SET
					agNom='$nom', agPrenom='$prenom', agStatut=$statut, agMail='$mail', agLogin='$login', agTerritoire=$territoire, agAdresse='$adresse',
					agCp=$cp, agVille='$ville', agTel=$tel, agCommentaire='$commentaire', agDateModif=NOW()";
		if ($mdp<>"*") {$req.= ",agMdp='$mdp' ";}
		$req.=" WHERE agId='$valeur';";
		$rs = PdoBD::$monPdo->exec($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la mise à jour de l'agent dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
	}

/**
	* supprime une ligne de la table AGENT
*/
	public function supprimeAgent($valeur)
	{
		$req = "DELETE
				FROM agent
				WHERE  agId='$valeur';";
		$rs = PdoBD::$monPdo->exec($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la suppression de l'agent dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
	}

/**
 * ajoute une ligne dans la table AGENT
*/
	public function ajoutAgent($valeur,$nom,$prenom,$statut,$mail,$login,$mdp,$territoire,$adresse,$cp,$ville,$tel,$commentaire)
	{
		$req = "INSERT INTO agent
					(agId,agNom,agPrenom,agStatut,agMail,agLogin,agMdp,agTerritoire,agAdresse,agCp,agVille,agTel,agCommentaire,agDateEnreg,agDateModif)
				VALUES
					('$valeur', '$nom', '$prenom', $statut, '$mail', '$login', '$mdp', $territoire, '$adresse', $cp, '$ville', $tel,'$commentaire', NOW(), NOW());";
		$rs = PdoBD::$monPdo->exec($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de l'insertion de l'agent dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
	}
/**
	 * Retourne les informations de la table typeParametre (types de parametres)
	*/
	public function getLesParametres()
	{
		$req = "SELECT tlId, tlLibelle, tlBooleen, tlChoixMultiple, tlCumul, tlTable, tlChamp
					FROM typeParametre
					ORDER BY tlLibelle;";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la recherche dans la base de donn&eacute;es.", $req, PdoSasti::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}

	public function getRegion()
	{
		$req = "SELECT rCode, rLibelle
				FROM region ";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la recherche dans la base de donn&eacute;es.", $req, PdoSasti::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}

	/**
	 * Retourne dans un tableau associatifles informations de la table PARAMETRE (pour un type particulier)
	*/
	public function getParametre($type, $valeur)
	{
		if ($valeur=="*")  {$filtre="";} else {$filtre="AND pIndice=".$valeur;}
		$req = "SELECT pIndice, pLibelle, tlLibelle, tlTable, tlChamp, null AS territoire, Null AS dep, pPlancher, pPlafond
					FROM parametre INNER JOIN typeParametre ON typeParametre.tlId=parametre.pType
					WHERE pType='$type'
					".$filtre."
					order by pIndice";

		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la recherche dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}

	/**
	 * Retourne dans un tableau associatifles informations de la table PARAMETRE (pour un type particulier)
	*/
	public function getInfosParam($type, $valeur)
	{
			if ($valeur=="NULL")
			{$req = "SELECT pType, max(pIndice)+1 AS pIndice, ' ' AS pLibelle, tlLibelle, pPlancher, pPlafond
						 FROM parametre INNER JOIN typeParametre ON typeParametre.tlId=parametre.pType
						 WHERE pType='$type';";}
			else
			{$req = "SELECT pType, pIndice, pLibelle, tlLibelle, tlTable, tlChamp, pPlancher, pPlafond
						 FROM parametre INNER JOIN typeParametre ON typeParametre.tlId=parametre.pType
						 WHERE pType='$type'
						 AND pIndice='$valeur';";}

		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la recherche dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
		$ligne = $rs->fetch();
		return $ligne;
	}

/**
 * Met a jour une ligne de la table PARAMETRE
*/
	public function majParametre($type, $valeur, $libelle, $territoire, $dep, $plancher, $plafond)
	{
		$req = "UPDATE parametre SET pLibelle='$libelle', pPlancher=$plancher, pPlafond=$plafond
					WHERE pType='$type'
					AND pIndice=$valeur;";
		$rs = PdoBD::$monPdo->exec($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la mise a jour des parametres dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
	}

/**
 * supprime une ligne de la table PARAMETRE
*/
	public function supprimeParametre($type, $valeur)
	{
		$req = "DELETE
					FROM parametre
					WHERE pType='$type'
					AND pIndice=$valeur;";
		$rs = PdoBD::$monPdo->exec($req);
	}

/**
 * ajoute une ligne dans la table PARAMETRE
*/
	public function ajoutParametre($type, $valeur, $libelle,$territoire, $dep, $plancher, $plafond)
	{
	$req = "INSERT INTO parametre
					(pType, pIndice, pLibelle, pPlancher, pPlafond)
					VALUES ('$type', $valeur, '$libelle', $plancher, $plafond);";
		echo $req;
		$rs = PdoBD::$monPdo->exec($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de l'insertion de l'usager dans la base de donn&eacute;es.", $req, PdoBD::$monPdo->errorInfo());}
	}

/**
 * envoyer un message electronique
*/
	public function envoyerMail($mail, $sujet, $msg, $entete)
	{
		if (mail($mail, $sujet, $msg, null)==false)
		{ echo 'Suite à un problème technique, votre message n a pas été envoyé a '.$mail.' sujet'.$sujet.'message '.$msg.' entete '.$entete;}
	}

/*
 * Retourne les resultats de recherche
 */
	public function getLesResultats($rechercher)
	{
		$req = "SELECT DATE_FORMAT(visite.vDate,'%d-%m-%Y') as vDate, visite.vRapport, visite.vMotif, praticien.pNom, praticien.pPrenom, praticien.pNum, utilisateur.uNom, utilisateur.uPrenom
				FROM visite INNER JOIN praticien ON visite.pNum=praticien.pNum
										INNER JOIN utilisateur ON visite.uId=utilisateur.uId
				WHERE (vMotif LIKE '%".$rechercher."%')
					OR (vRapport LIKE '%".$rechercher."%')
					OR (vDate LIKE '%".$rechercher."%')
					OR (utilisateur.uNom LIKE '%".$rechercher."%')
					OR (utilisateur.uPrenom LIKE '%".$rechercher."%')
					OR (praticien.pNom LIKE '%".$rechercher."%')
					OR (praticien.pPrenom LIKE '%".$rechercher."%')
					OR Concat(praticien.pPrenom, ' ', praticien.pNom) LIKE '%".$rechercher."%'
					OR Concat(praticien.pNom, ' ', praticien.pPrenom) LIKE '%".$rechercher."%'
				ORDER BY 'visite.vDate' DESC
				LIMIT 1,500";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des visites ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}

	public function getCompteRendu($uid)
	{
		$req = "SELECT DATE_FORMAT(visite.vDate,'%W %d %b %Y') as Date, visite.vRapport, parametre.pLibelle, utilisateur.uNom, utilisateur.uPrenom, praticien.pNom, praticien.pPrenom, medicament.mNomCommercial, commentaires.comCommentaire
						FROM visite INNER JOIN utilisateur ON visite.uId=utilisateur.uId
							INNER JOIN praticien ON visite.pNum=praticien.pNum
    					INNER JOIN commentaires ON commentaires.comVisit=utilisateur.uId
    					INNER JOIN medicament ON commentaires.comMedoc=medicament.mNum
    					INNER JOIN parametre ON visite.vMotif = parametre.pIndice
						WHERE visite.uId=\"".$uid."\"
							AND commentaires.comDate=visite.vDate
    					AND parametre.pType = \"typeVis\"
						ORDER BY vDate";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des visites ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}
	public function getInfoEntete($uid)
	{
		$req="SELECT praticien.pNom, praticien.pPrenom, visite.vDate, COUNT(visite.vNum) as nbVisite
					FROM visite INNER JOIN praticien ON praticien.pNum=visite.pNum
					WHERE visite.uId=\"".$uid."\"
					ORDER BY visite.vDate DESC
					LIMIT 1";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des visites ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}
	public function getEchantillon()
	{
		$req="SELECT medicament.mNum, medicament.mNomCommercial
					FROM medicament
					ORDER BY 2";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des visites ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetchAll();
		return $lesLignes;
	}
	public function getNouvelleVisiteNum($uid)
	{
		$req="SELECT COUNT(visite.vNum) as nbVisiteExistantes FROM visite WHERE uId=\"".$uid."\" GROUP BY uId";
		$rs = PdoBD::$monPdo->query($req);
		if ($rs === false) {afficherErreurSQL("Probleme lors de la lecture des visites ..", $req, PdoBD::$monPdo->errorInfo());}
		$lesLignes = $rs->fetch();
		$vNum=$lesLignes['nbVisiteExistantes']+1;
		return $vNum;
	}
	public function AjouterEchantillon($uid, $vNum, $mDeoptLegal, $qte){
		$req="INSERT INTO `offrir` (`uId`, `vNum`, `mDepotLegal`, `OFF_QTE`)
					VALUES 	('a131', '5', 'DEPRIL9', '5')";
		$rs = PdoBD::$monPdo->execute($req);
	}
}
?>

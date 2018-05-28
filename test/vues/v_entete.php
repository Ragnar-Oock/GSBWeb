<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <title>Galaxy Swiss Bourdin</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link href="./styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/x-icon" href="./images/favicon.ico" />
  	<script src="include/proceduresJava.js" type="text/javascript"></script>
  </head>
<?php
	if (isset($_REQUEST['zFormulaire']))	{$formulaire=$_REQUEST['zFormulaire'];}
	if (isset($_REQUEST['zChamp']))			{$champ		=$_REQUEST['zChamp'];}
?>
  <body onload="donner_focus('<?php echo $formulaire."','".$champ;?>');">
    <div id="enteteBackground">
      <div id="logoGSB"></div>
      <div id="searchBar">
        <form name="frmSearch" action="index.php" method="GET">
          <input type="hidden" name="choixTraitement" value="recherche"/>
          <input type="hidden" name="action" value="voir"/>
          <input id="search" type="text" placeholder="rechercher" name="recherche"/>
          <i class="fa fa-search" onclick="longueurRecherche('frmSearch','recherche','3')"></i>
        </form>
      </div>
      <div id="deconection">
        <p><a href="index.php?choixTraitement=connexion&action=demandeConnexion">d&eacute;connexion</a></p>
      </div>
      <div id="boutonMenu" onclick="menu('boutonMenu','menuContent')">
        <div id="menuBar1" class="change"></div>
        <div id="menuBar2" class="change"></div>
        <div id="menuBar3" class="change"></div>
      </div>
    </div>
    <div id="menuContent">
      <div id="pages">
          <p><a href="index.php?choixTraitement=compteRendu&action=ajouter" title="compteRendu">Ajouter un compte-rendu</a></p>
          <p><a href="index.php?choixTraitement=compteRendu&action=voir" title="parametres">Voir les compte-rendus</a></p>
          <p><a href="index.php?choixTraitement=praticiens&action=voir" title="parametres">Données des praticiens</a></p>
      </div>
      <div id="legliste">
          <p><a href="mailto:webmaster@gsb.fr">Contacter le Webmaster</a></p>
          <p>Mention l&eacute;gales</p>
      </div>
      <div class="verticalSeparator"></div>
      <div id="panelPerso">
          <h1><?php echo ($_SESSION['prenom'].'  '.strtoupper($_SESSION['nom'])); ?></h1>
          <p>Nombre de visites : <?php echo ($_SESSION['nbVisite']); ?></p>
          <br>
          <p>dernière visite: <a href="#"><?php echo ($_SESSION['derniereVisiteNP']); ?></a></p>
          <p>date: <?php echo ($_SESSION['derniereVisiteDate']); ?>
      </div>
    </div>
    <div hight="150px"></div>
  <script>
    function menu(x,y) {
      document.getElementById(x).classList.toggle("change");
      document.getElementById(y).classList.toggle("menuHide");
    }
    function longueurRecherche(frm, champ, longueur) {
      if(document.forms[frm].elements[champ].value.length >= 3)
      {
        document.forms[frm].submit();
      }
      else{
        alert("Faites une recherche d'au moins trois caracteres.");
      }
    }
  </script>
<!-- fin affichage du menu -->

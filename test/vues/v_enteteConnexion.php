<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <title>Galaxy Swiss Bourdin</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link href="./styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/x-icon" href="./images/logoGSB.png" />
  	<script src="include/proceduresJava.js" type="text/javascript"></script>
  </head>
<?php
	if (isset($_REQUEST['zFormulaire']))	{$formulaire=$_REQUEST['zFormulaire'];}
	if (isset($_REQUEST['zChamp']))			{$champ		=$_REQUEST['zChamp'];}
?>
  <body onload="donner_focus('<?php echo $formulaire."','".$champ;?>');">
    <div id="backgroundConnexion"></div>
    <div id="enteteBackground">
      <div id="logoGSB"></div>
    </div>
<!-- fin affichage du menu -->

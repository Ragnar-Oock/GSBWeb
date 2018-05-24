<!--affichage de la barre de recherche-->
<?php
	$titre="rechercher";
?>
<form name="frmSearch" action="index.php" method="GET">
	<input type="hidden" name="choixTraitement" value="recherche"/>
	<input type="hidden" name="action" value="voir"/>
	<input type="text" placeholder="rechercher" name="recherche"/>
	<input type="button" value="rechercher" onclick="longueurRecherche('frmSearch','recherche','3')">
	<!--<a href="javascript: longueurRecherche('frmSearch','recherche','3')">rechercher</a>-->
</form>
<script type="text/javascript">
	function longueurRecherche(frm, champ, longueur){
		//alert(document.forms[frm].elements[champ].value.length);
		if(document.forms[frm].elements[champ].value.length >= longueur){
			document.forms[frm].submit();
			//alert(document.forms[frm].elements[champ].value.length);
		}
		else{
			alert("Faites une recherche d'au moins trois caracteres.");
		}
	}
</script>
<!--<input type="button" value="recherche" onclick="longueurRecherche(\'frmSearch\',\'recherche,\'3\')"/>-->

	<?php
	echo "
		<div class =\"erreur\">
			<ul>";
	foreach($_REQUEST['erreurs'] as $erreur)
		{
	      echo "<li>$erreur</li>";
		}
		echo "	</ul>
		</div>";
	?>
<script>
function	alerte(text) {
	foreach($_REQUEST['erreurs'] as $erreur)
		{
	      alert(text);
		}
}
</script>

<?php
foreach ($lesEchantillons as $unEchantillon) {
  if ($_REQUEST[$unEchantillon['mNum']]!=0) {
    $lesEchantillonsValide[$ligne][0]=$unEchantillon['mNum'];
    $lesEchantillonsValide[$ligne][1]=$_REQUEST[$unEchantillon['mNum']];
    $lesEchantillonsValide[$ligne][2]=$unEchantillon['mNomCommercial'];
    $ligne++;
  }
}
echo "<div class="EC_entete">
  <div class="EC_thNom">Médicament</div>
  <div class="EC_thQte">Quantité</div>
</div>
    <div class="EC_tableau">";
foreach ($lesEchantillonsValide as $unEchantillonValide) {
  echo ("<tr>
  <div class="EC_nom">".$unEchantillonValide[2]."</div>
  <div class="EC_qte">".$unEchantillonValide[1]."</div>");
}

echo ('
    </div>
    <button class="boutonValider" type="button" onclick="location.href=\'index.php?choixTraitement=compteRendu&action=ajouter\'"> Valider </button>
');
 ?>

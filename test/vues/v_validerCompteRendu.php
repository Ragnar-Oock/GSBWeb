<?php
foreach ($lesEchantillons as $unEchantillon) {
  if ($_REQUEST[$unEchantillon['mNum']]!=0) {
    $lesEchantillonsValide[$ligne][0]=$unEchantillon['mNum'];
    $lesEchantillonsValide[$ligne][1]=$_REQUEST[$unEchantillon['mNum']];
    $lesEchantillonsValide[$ligne][2]=$unEchantillon['mNomCommercial'];
    $ligne++;
  }
}
echo '<table class="EC_tableValider">';
foreach ($lesEchantillonsValide as $unEchantillonValide) {
  echo ("<tr>
  <td>".$unEchantillonValide[2]."
  <td>".$unEchantillonValide[1]);
}

echo ('
    </table>
    <button class="boutonValider" type="button" onclick="location.href=\'index.php?choixTraitement=compteRendu&action=ajouter\'"> Valider </button>
');
 ?>

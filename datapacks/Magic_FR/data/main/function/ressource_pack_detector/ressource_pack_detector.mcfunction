## appelée quand le joueur se connecte et quelque secondes après qu'il recoive un title
## permet d'afficher un avertissement à @s si il n'a pas de texture pack

## augmenter le X de %1$s%X$s à chaque nouvelle version (le pack deressource doit aussi le change) %1$s%293644$s ne doit pas bouger par contre

title @s times 0 1000000000 0
title @s title {"translate": "magic_fr.rp.present","fallback": "%1$s","with": [{"translate": "magic_fr.rp.version.1.20","fallback": "%1$s","with": [{"text": "","color": "dark_red","bold": false,"extra": [{ "text": "XXX", "obfuscated": true },{ "text": " Erreur ", "obfuscated": false,"bold":true },{ "text": "XXX", "obfuscated": true }]}]}]}
title @s subtitle {"translate": "magic_fr.rp.present","fallback": "Veuillez installer le pack de ressources !","with": [{"translate": "magic_fr.rp.version.1.20","fallback": "Veuillez mettre à jour le pack de ressources !"}],"color": "red","bold": true,"italic": true}
#tellraw @s {"translate": "%1$s%293645$s", "with": [{"translate": "%1$s%293644$s", "with": [{"text": "Vous n'avez pas téléchargé le pack de texture !\nTéléchargez le ici.","color":"red","bold":"true","italic":"true"}, {"text": "Votre pack de texture n'est pas à jour !\nTéléchargez la dernière version ici.","color":"red","bold":"true","italic":"true"}]}, {"text":""}]}


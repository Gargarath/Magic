#appelée par get_frozen_lvl1 si @s est gelé
# permet d'initialiser la bossbar de gel du joueur 7 si @s est le joueur 7

bossbar set frozen:player7 max 80
bossbar set frozen:player7 value 80
$bossbar set frozen:player7 name {"text":"$(tr_archer_spell3_status_0_lore_2)","color":"aqua","bold":true}
bossbar set frozen:player7 players @s
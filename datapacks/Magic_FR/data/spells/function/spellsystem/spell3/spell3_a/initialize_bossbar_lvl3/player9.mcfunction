#appelée par get_frozen_lvl3 si @s est gelé
# permet d'initialiser la bossbar de gel du joueur 9 si @s est le joueur 9

bossbar set frozen:player9 max 140
bossbar set frozen:player9 value 140
$bossbar set frozen:player9 name {"text":"$(tr_archer_spell3_status_0_lore_2)","color":"aqua","bold":true}
bossbar set frozen:player9 players @s
#appelée par get_frozen_lvl3 si @s est gelé
# permet d'initialiser la bossbar de gel du joueur 1 si @s est le joueur 1

bossbar set frozen:player1 max 140
bossbar set frozen:player1 value 140
$bossbar set frozen:player1 name {"text":"$(tr_archer_spell3_status_0_lore_2)","color":"aqua","bold":true}
bossbar set frozen:player1 players @s
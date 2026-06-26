#appelée par get_frozen_lvl2 si @s est gelé
# permet d'initialiser la bossbar de gel du joueur 5 si @s est le joueur 5

bossbar set frozen:player5 max 100
bossbar set frozen:player5 value 100
$bossbar set frozen:player5 name {"text":"$(tr_archer_spell3_status_0_lore_2)","color":"aqua","bold":true}
bossbar set frozen:player5 players @s
## appelée par spells:spellsystem/spell2/spell2_w/summon_flag/lvl2/testplayer si @s est le joueur 3
## permet de faire spawn son drapeau et d'afficher sa bossbar



scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rally_flag_3] timer_rally_flag 140
scoreboard players set @s timer_rally_flag 140

bossbar set rally_flag:player3 name {"text":"Drapeau de ralliement II","color":"gold"}
bossbar set rally_flag:player3 max 140
bossbar set rally_flag:player3 value 140
bossbar set rally_flag:player3 players @s
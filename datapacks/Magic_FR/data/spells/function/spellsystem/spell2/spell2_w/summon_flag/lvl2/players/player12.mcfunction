## appelée par spells:spellsystem/spell2/spell2_w/summon_flag/lvl2/testplayer si @s est le joueur 12
## permet de faire spawn son drapeau et d'afficher sa bossbar


scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rally_flag_12] timer_rally_flag 140
scoreboard players set @s timer_rally_flag 140

bossbar set rally_flag:player12 name {"text":"Drapeau de ralliement II","color":"gold"}
bossbar set rally_flag:player12 max 140
bossbar set rally_flag:player12 value 140
bossbar set rally_flag:player12 players @s
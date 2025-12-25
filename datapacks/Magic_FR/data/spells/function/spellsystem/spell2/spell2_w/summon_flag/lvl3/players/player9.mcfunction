## appelée par spells:spellsystem/spell2/spell2_w/summon_flag/lvl3/testplayer si @s est le joueur 9
## permet de faire spawn son drapeau et d'afficher sa bossbar

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rally_flag_9] timer_rally_flag 220
scoreboard players set @s timer_rally_flag 220

bossbar set rally_flag:player9 name {"text":"Drapeau de ralliement III","color":"gold"}
bossbar set rally_flag:player9 max 220
bossbar set rally_flag:player9 value 220
bossbar set rally_flag:player9 players @s
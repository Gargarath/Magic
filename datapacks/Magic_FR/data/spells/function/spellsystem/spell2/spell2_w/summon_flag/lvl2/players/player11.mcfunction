## appelée par spells:spellsystem/spell2/spell2_w/summon_flag/lvl2/testplayer si @s est le joueur 11
## permet de faire spawn son drapeau et d'afficher sa bossbar


scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rally_flag_11] timer_rally_flag 140
scoreboard players set @s timer_rally_flag 140

$bossbar set rally_flag:player11 name {"text":"$(tr_warrior_spell2_2_name)","color":"gold"}
bossbar set rally_flag:player11 max 140
bossbar set rally_flag:player11 value 140
bossbar set rally_flag:player11 players @s
# appelée par ...
# permet d'invoquer la liche sur la map cimetière

scoreboard players set is_using_spell lich 0

execute if score blue playercount = red playercount run scoreboard players operation min_players lich = blue playercount
# si il y a autant de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount < red playercount run scoreboard players operation min_players lich = blue playercount
# si il y a moins de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount > red playercount run scoreboard players operation min_players lich = red playercount
# si il y a plus de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe rouge
execute if score min_players lich matches 0 run scoreboard players set min_players lich 1

scoreboard players set $killfeed_boss_type secondary_objective_slot 2
summon wither_skeleton 218 169 -281 {CustomNameVisible:0b,CustomName:{"bold":true,"color":"gray","text":"Liche"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["lich"],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Tags:["show_lich_invulnerable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1}}]}
scoreboard players set @e[type=#boss] last_caster 0
# fait en sorte que le boss puisse recevoir des sorts

execute if score round bossbar matches 1 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/summon_lich/round1/summon_lich_round_1
execute if score round bossbar matches 2 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/summon_lich/round2/summon_lich_round_2
execute if score round bossbar matches 3 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/summon_lich/round3/summon_lich_round_3
# invoque une liche differente selon la manche

effect give @e[type=wither_skeleton,tag=lich] minecraft:instant_damage 1 40 true
scoreboard players set @e[type=wither_skeleton,tag=lich] Player -2

scoreboard players set @e[type=minecraft:wither_skeleton,limit=1] freeze -1
scoreboard players set @e[type=minecraft:wither_skeleton,limit=1] rocked_w -1
# indique que la lich n'est pas freeze ou stun

scoreboard players set is_dead lich 0
# met le score lich de is_dead à 0 (si il n'y a plus de lich et que ce score est à 0 -> lance le système de drop de l'objet de la liche)

execute as @e[type=#boss] run function main:killfeed/clear_death_message
# reset le message de mort du boss (au cas ou il meurt que de cac et que ça se rappelle d'un vieut sort d'une autre game) - doit déjà avoir le score de Player à -2

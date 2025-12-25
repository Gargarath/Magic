# appelée par launch secondary objective
# permet d'invoquer la cerise sur la map bonbon

execute if score blue playercount = red playercount run scoreboard players operation min_players living_cherry = blue playercount
# si il y a autant de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount < red playercount run scoreboard players operation min_players living_cherry = blue playercount
# si il y a moins de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount > red playercount run scoreboard players operation min_players living_cherry = red playercount
# si il y a plus de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe rouge
execute if score min_players living_cherry matches 0 run scoreboard players set min_players living_cherry 1

data modify storage ctf:killfeed bossname set value {"bold":false,"color":"light_purple","text":"Cerise vivante"}
# met le nom du boss dans un storage (pour le killfeed)
summon slime -19 184 -739 {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Size:5,CustomName:{"bold":true,"color":"light_purple","text":"Cerise vivante"},CustomNameVisible:0b,Tags:["living_cherry"],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Tags:["show_living_cherry_invulnerable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1}}]}
scoreboard players set @e[type=#boss] last_caster 0
# fait en sorte que le boss puisse recevoir des sorts


execute if score round bossbar matches 1 run function ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/round1/summon_cherry_round_1
execute if score round bossbar matches 2 run function ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/round2/summon_cherry_round_2
execute if score round bossbar matches 3 run function ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/round3/summon_cherry_round_3
# invoque une cerise differente selon la manche

effect give @e[type=slime,tag=living_cherry] minecraft:instant_health 1 40 true
scoreboard players set @e[type=slime,tag=living_cherry] Player -2

scoreboard players set @e[type=slime,tag=living_cherry,limit=1] freeze -1
# indique que la cerise n'est pas freeze

scoreboard players set is_dead living_cherry 0
# met le score cherry de is_dead à 0 (si il n'y a plus de cerise et que ce score est à 0 -> lance le système de drop de l'objet de la cerise)

execute as @e[type=#boss] run function ctf:killfeed/clear_death_message
# reset le message de mort du boss (au cas ou il meurt que de cac et que ça se rappelle d'un vieut sort d'une autre game) - doit déjà avoir le score de Player à -2
# appelée par ...
# permet d'invoquer le golem sur la map ruine

scoreboard players set is_using_spell golem 0

execute if score blue playercount = red playercount run scoreboard players operation min_players golem = blue playercount
# si il y a autant de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount < red playercount run scoreboard players operation min_players golem = blue playercount
# si il y a moins de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe bleu
execute if score blue playercount > red playercount run scoreboard players operation min_players golem = red playercount
# si il y a plus de bleus que de rouges -> dis au système que le nombre de joueur minimal est = au nombre de joueur de l'équipe rouge
execute if score min_players golem matches 0 run scoreboard players set min_players golem 1

scoreboard players set invulnerable golem 1

scoreboard players set $killfeed_boss_type secondary_objective_slot 5
summon iron_golem -518.5 146 -110.5 {CustomNameVisible:1b,CustomName:{"bold":true,"color":"green","text":"Le Gardien"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["golem"],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Tags:["show_golem_invulnerable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1}}]}
scoreboard players set @e[type=#boss] last_caster 0
# fait en sorte que le boss puisse recevoir des sorts

attribute @e[tag=golem,limit=1] minecraft:follow_range base set 100
attribute @e[tag=golem,limit=1] minecraft:movement_speed base set 0.32
attribute @e[tag=golem,limit=1] minecraft:attack_damage base set 5
summon minecraft:marker -519 149 -111 {Tags:["golem_waiting_spot"]}

execute if score round bossbar matches 1 run function gamemode:ctf/secondary_objectives/bossfight/ruin_map/summon_golem/round1/summon_golem_round_1
execute if score round bossbar matches 2 run function gamemode:ctf/secondary_objectives/bossfight/ruin_map/summon_golem/round2/summon_golem_round_2
execute if score round bossbar matches 3 run function gamemode:ctf/secondary_objectives/bossfight/ruin_map/summon_golem/round3/summon_golem_round_3
# modifie la vie du golem selon la manche

effect give @e[type=iron_golem,tag=golem] minecraft:instant_health 1 40 true
scoreboard players set @e[type=iron_golem,tag=golem] Player -2

scoreboard players set @e[type=minecraft:iron_golem,limit=1] freeze -1
scoreboard players set @e[type=minecraft:iron_golem,limit=1] rocked_w -1
# indique que le golem n'est pas freeze ou stun

scoreboard players set is_dead golem 0
# met le score golem de is_dead à 0 (si il n'y a plus de golem et que ce score est à 0 -> lance le système de drop de l'objet du golem)

execute as @e[type=#boss] run function main:killfeed/clear_death_message
# reset le message de mort du boss (au cas ou il meurt que de cac et que ça se rappelle d'un vieut sort d'une autre game) - doit déjà avoir le score de Player à -2

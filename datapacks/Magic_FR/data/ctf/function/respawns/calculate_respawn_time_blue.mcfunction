# appelée par ctf:respawns/respawn_has_flag ou ctf:respawns/respawn permet de cacluculer combien de temps @s doit prendre pour respawn et d'en ajouter à l'équipe bleue.

execute if score $minutes timers matches 3.. run scoreboard players set @s max_respawn_bar 40
execute if score $minutes timers matches 2 if score $seconds timers matches 31.. run scoreboard players set @s max_respawn_bar 40
execute if score $minutes timers matches 2 if score $seconds timers matches ..30 run scoreboard players set @s max_respawn_bar 50
execute if score $minutes timers matches 1 run scoreboard players set @s max_respawn_bar 50
execute if score $minutes timers matches 0 run scoreboard players set @s max_respawn_bar 60
execute if score round bossbar matches 4 run scoreboard players set @s max_respawn_bar 80
execute store result score @s ppl_dead_in_team if entity @a[team=respawn_blue]
scoreboard players remove @s ppl_dead_in_team 1

execute if score @s ppl_dead_in_team matches 1.. run scoreboard players operation @s ppl_dead_in_team *= bonus_time_per_death variables
# si il y a d'autre joueurs morts dans la team de @s -> multiplie le score ppl_death_in_team de @s par le score variables du joueur bonus_time_per_death (40)
execute if score @s ppl_dead_in_team matches 1.. run scoreboard players add @a[team=respawn_blue,scores={respawn_time=0..}] max_respawn_bar 40
execute if score @s ppl_dead_in_team matches 1.. run scoreboard players operation @s max_respawn_bar += @s ppl_dead_in_team
# si il y a d'autre joueurs morts dans la team de @s -> ajoute au score respawn_time de @s son score de ppl_dead_in_team
scoreboard players set @a[team=respawn_blue,scores={max_respawn_bar=241..}] max_respawn_bar 240
execute if score $teamkill option_panel matches 1 if score blue playercount matches 3.. run execute unless entity @a[team=blue] run function ctf:respawns/bossbar/teamkill/teamkill_blue
scoreboard players set @s respawn_time 0
execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/respawn_time/check_place
# met à jours ses infos d'équipe selon sa classe
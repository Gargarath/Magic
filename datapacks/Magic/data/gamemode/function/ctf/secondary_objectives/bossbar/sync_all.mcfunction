## appelée par tick, refresh_all et les chemins de restauration de l'objectif secondaire
# permet de synchroniser la bossbar de chaque viewer connecté lorsque l'objectif doit être visible

bossbar set secondary_objective:state players
bossbar set secondary_objective:state_blue players
bossbar set secondary_objective:state_red players
execute unless score $secondary_objectives option_panel matches 1 run function gamemode:ctf/secondary_objectives/bossbar/hide_all
execute if score is_over secnd_objective matches 1 run function gamemode:ctf/secondary_objectives/bossbar/hide_all
execute if score lobby enable_loop matches 1 run function gamemode:ctf/secondary_objectives/bossbar/hide_all
execute if score shop enable_loop matches 1 run function gamemode:ctf/secondary_objectives/bossbar/hide_all
execute if entity @a[tag=in_countdown] run function gamemode:ctf/secondary_objectives/bossbar/hide_all
execute if score $secondary_objectives option_panel matches 1 unless score is_over secnd_objective matches 1 unless score lobby enable_loop matches 1 unless score shop enable_loop matches 1 unless entity @a[tag=in_countdown] as @a[scores={secondary_objective_slot=1..32}] run function gamemode:ctf/secondary_objectives/bossbar/sync_player
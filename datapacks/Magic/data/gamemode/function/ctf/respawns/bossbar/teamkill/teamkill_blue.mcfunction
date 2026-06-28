# appelée par ctf:respawns/bossbar/calculate_respawn_time_blue permet de donner un malus de point au bleus si ils sont tous morts

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":""}
execute as @a run function gamemode:ctf/respawns/bossbar/teamkill/messages/teamkill_blue with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[team=respawn_blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0
execute as @a[team=red] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1
execute as @a[team=respawn_red] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1
execute as @a[team=spectator] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1

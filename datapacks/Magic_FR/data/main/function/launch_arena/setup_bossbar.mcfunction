## appelée par les différents launch_map
# permet de setup la bossbar d'info du match

execute if score $gamemode option_panel matches 1 run data modify storage matchinfo.blue flag_state set value "\uE301"
execute if score $gamemode option_panel matches 1 run data modify storage matchinfo.red flag_state set value "\uE304"
# reset les position de drapeau pour chaque équipe (si on est en mode CTF)

execute as @a run function main:launch_arena/save_map_name with entity @s EnderItems[0].components.minecraft:custom_data
# affiche la map sur laquelle on joue
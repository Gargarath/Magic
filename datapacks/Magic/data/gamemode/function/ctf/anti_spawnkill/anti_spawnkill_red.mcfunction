## appelée par ctf:loop permet gérer le système anti_spawnkill pour @s qui est rouge

execute if block ~ ~-45 ~ minecraft:iron_ore run tp @s ~ ~0.2 ~-0.6
execute if block ~ ~-45 ~ minecraft:deepslate_iron_ore run tp @s ~ ~0.2 ~0.6
execute if block ~ ~-45 ~ minecraft:diamond_ore run tp @s ~0.6 ~0.2 ~
execute if block ~ ~-45 ~ minecraft:deepslate_diamond_ore run tp @s ~-0.6 ~0.2 ~
# detecte le bloc sous @s et le téléporte en fonction

execute if entity @s[tag=!in_own_spawn] if block ~ ~-45 ~ #red_spawn run function gamemode:ctf/anti_spawnkill/spawn/enter_own_spawn
execute if entity @s[tag=in_own_spawn] at @s unless block ~ ~-45 ~ #red_spawn run function gamemode:ctf/anti_spawnkill/spawn/leave_own_spawn
# detecte l'entrée et sortie de spawn de @s
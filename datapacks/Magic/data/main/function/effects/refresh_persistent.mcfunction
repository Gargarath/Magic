## applique les effets permanents correspondant a la phase actuelle de @s

effect give @s minecraft:saturation infinite 255 true
effect clear @s minecraft:weakness
effect clear @s minecraft:regeneration

# Lobby principal
execute if score @s InLobby matches 1 unless entity @s[tag=in_lobby_arena] run effect give @s minecraft:weakness infinite 255 true

# Shop
execute if score @s InShop matches 1 run effect give @s minecraft:regeneration infinite 255 true

# Partie
execute if score @s InLobby matches 0 if score @s InShop matches 0 if score @s Player matches 1.. if entity @s[tag=!rogue] run effect give @s minecraft:regeneration infinite 0 true
execute if score @s InLobby matches 0 if score @s InShop matches 0 if score @s Player matches 1.. if entity @s[tag=rogue] run effect give @s minecraft:regeneration infinite 1 true

# Arene du lobby
execute if entity @s[tag=in_lobby_arena,tag=!rogue] run effect give @s minecraft:regeneration infinite 0 true
execute if entity @s[tag=in_lobby_arena,tag=rogue] run effect give @s minecraft:regeneration infinite 1 true
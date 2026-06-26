## appelée par spells:loop
## permet d'avoir la position de la potion du joueur 1 en permanence et d'invoquer l'aoe quand cette potion heurte quelque chose
execute at @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player1:1b}}}}] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:2,Tags:["smoke_bomb_position1"]}
execute unless entity @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player1:1b}}}}] run scoreboard players set player1 has_smoke_potion 0
## appelée par bossfight_loop permet de determiner qui est ciblable par la cerise

# donne le tag targetable aux joueurs que la cerise peut cibler et l'enlève à ceux qui ne le sont plus
execute as @s[tag=!targetable,tag=!invisibility_r] if block ~ ~-34 ~ minecraft:magenta_wool run tag @s add targetable
# donne le tag targetable aux gens sur le gateau qui ne l'ont pas et qui ne sont pas invisible ou en spectateur
execute as @s[tag=targetable] unless block ~ ~-34 ~ minecraft:magenta_wool run tag @s remove target
execute as @s[tag=targetable] unless block ~ ~-34 ~ minecraft:magenta_wool run tag @s remove targetable
# enleve le tag targetable aux gens qui l'ont et ne sont plus sur le gateau
execute as @s[tag=targetable,tag=invisibility_r] run tag @s remove targetable
# enleve le tag targetable aux gens qui l'ont et sont invisibles
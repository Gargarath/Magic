# Appelée par lobby:loop permet si @s a fait la commande pour être admin mais qu'on est en mode player are op

tellraw @s {"bold":false,"color":"red","italic":false,"text":"Impossible de devenir modérateur ainsi, vous devez être désigné en tant que modérateur."}
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
scoreboard players set @s operator 0
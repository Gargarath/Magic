# appelée par reset_frameroom_sign permet d'indiquer à @s qu'on ne peut pas réinitialiser les salles d'achats



tellraw @s ["",{"text":"La réinitialisation des achats est désactivée.","italic":true,"color":red}]

execute at @s run function main:reset/resetframeroom
# actualise la frameroom de @s

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
scoreboard players enable @s reset_frameroom
scoreboard players set @s reset_frameroom 0
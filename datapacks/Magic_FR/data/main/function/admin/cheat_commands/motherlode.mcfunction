## appelée par main:loop quand @s utilise motherlode

scoreboard players reset @s motherlode
scoreboard players enable @s motherlode
# reset le trigger


tellraw @s "motherlode !"
scoreboard players add @s PH 50
execute if score @s InShop matches 1 at @s run function main:reset/resetframeroom
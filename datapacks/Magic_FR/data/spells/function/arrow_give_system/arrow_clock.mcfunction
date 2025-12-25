## appelée par spells:loop si @s n'a pas assez de flèches

scoreboard players remove @s arrow_cooldown 1
execute if score @s arrow_cooldown matches 0 run function spells:arrow_give_system/addarrows
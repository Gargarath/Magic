## appelée par spells:loop chaque seconde si @s a le sort 1 en cooldown
## enlève une seconde au cooldown de @s

tag @s remove save_inventory
scoreboard players remove @s cooldownspell1 1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}] 1
execute if score @s cooldownspell1 matches 1.. run scoreboard players set @s cooldown1_clock 20
execute if score @s cooldownspell1 matches ..0 run function spells:cooldowns/cooldownspell1/cooldown_readyspell1
tag @s add save_inventory
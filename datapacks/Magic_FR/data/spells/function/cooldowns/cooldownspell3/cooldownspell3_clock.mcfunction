## appelée par spells:loop chaque seconde si @s a le sort 3 en cooldown
## enlève une seconde au cooldown de @s

tag @s remove save_inventory
scoreboard players remove @s cooldownspell3 1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}] 1
execute if score @s cooldownspell3 matches 1.. run scoreboard players set @s cooldown3_clock 20
execute if score @s cooldownspell3 matches ..0 run function spells:cooldowns/cooldownspell3/cooldown_readyspell3
tag @s add save_inventory
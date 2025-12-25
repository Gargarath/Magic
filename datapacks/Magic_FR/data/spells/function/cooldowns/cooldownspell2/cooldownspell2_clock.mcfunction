## appelée par spells:loop chaque seconde si @s a le sort 2 en cooldown
## enlève une seconde au cooldown de @s

tag @s remove save_inventory
scoreboard players remove @s cooldownspell2 1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}] 1
execute if score @s cooldownspell2 matches 1.. run scoreboard players set @s cooldown2_clock 20
execute if score @s cooldownspell2 matches ..0 run function spells:cooldowns/cooldownspell2/cooldown_readyspell2
tag @s add save_inventory
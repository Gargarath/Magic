# appelée par shop:loop permet de reset la frameroom de celui qui clique sur la panneau

execute if score $build_reset option_panel matches 0 run return run function shop:reset_frameroom_disabled
execute if score $build_reset option_panel matches 1 run tellraw @s ["",{"text":"Vos achats de la manche ont été réinitialisés.","italic":true,"color":gray}]
execute if score $build_reset option_panel matches 2 run tellraw @s ["",{"text":"Vos achats ont été réinitialisés.","italic":true,"color":gray}]


function shop:reset_round_achats
# reset les achats de @s

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé sans ses achats récents 


execute at @s run function main:reset/resetframeroom
# actualise la frameroom de @s




execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 2
scoreboard players enable @s reset_frameroom
scoreboard players set @s reset_frameroom 0
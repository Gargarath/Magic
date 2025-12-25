# Permet d'acheter le spell2 de niveau 2 pour le guerrier

scoreboard players remove @s PH 60
# Enlève 60 Points d'honneur (monnaie à @s)

playsound minecraft:block.note_block.hat master @s

scoreboard players add @s spell2 1
# Augmente de 1 le niveau des spell2 de @s

advancement grant @s only warrior:spell2lvl2_w
# Donne le haut fait "Drapeau de ralliement II" à @s

execute as @e[tag=spell2,distance=..10,limit=1] run data merge entity @e[tag=spell2,distance=..10,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Drapeau de ralliement III - 90 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_w"]}}},ItemDropChance:1.0f}
## Remplace l'objet spell2 par un objet de niveau superieur et le remet à la position 0 dans l'item frame

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
function main:items_positions/warriors/check_items_positions
tag @s add save_inventory
# Clear @s et lui redonne son stuff actualisé avec son dernier achat 

function shop:reset_money_sign
### Actualise la panneau de points restants
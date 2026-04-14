## appelée quand l'argent de @s change
# actualise les couleurs des prix des items du shop pour savoir si on a assez

# weapon 1
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_weapon1_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_weapon1_price,tag=shop_weapon1_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_weapon1_price,tag=shop_weapon1_$(player)] {text:{"color":"red"}}

# chest
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_chest_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_chest_price,tag=shop_chest_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_chest_price,tag=shop_chest_$(player)] {text:{"color":"red"}}

# legs
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_legs_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_legs_price,tag=shop_legs_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_legs_price,tag=shop_legs_$(player)] {text:{"color":"red"}}

# boots
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_boots_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_boots_price,tag=shop_boots_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_boots_price,tag=shop_boots_$(player)] {text:{"color":"red"}}

# spell1
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_spell1_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell1_price,tag=shop_spell1_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell1_price,tag=shop_spell1_$(player)] {text:{"color":"red"}}

# spell2
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_spell2_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell2_price,tag=shop_spell2_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell2_price,tag=shop_spell2_$(player)] {text:{"color":"red"}}

# spell3
execute store result score @s temp_PH run data get entity @s EnderItems[0].components.minecraft:custom_data.shop_spell3_price
# rend le prix vert si achetable
$execute if score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell3_price,tag=shop_spell3_$(player)] {text:{"color":"green"}}
# rend le prix rouge si trop cher
$execute unless score @s PH >= @s temp_PH run data merge entity @n[type=text_display,tag=shop_spell3_price,tag=shop_spell3_$(player)] {text:{"color":"red"}}
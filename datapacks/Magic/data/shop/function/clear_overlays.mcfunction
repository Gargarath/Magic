# Remet les elements regardes a leur taille normale et supprime leurs overlays

execute as @a[tag=look_at_weapon1] at @s run function shop:look_away/look_away_weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_chest] at @s run function shop:look_away/look_away_chest with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_legs] at @s run function shop:look_away/look_away_legs with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_boots] at @s run function shop:look_away/look_away_boots with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_spell1] at @s run function shop:look_away/look_away_spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_spell2] at @s run function shop:look_away/look_away_spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=look_at_spell3] at @s run function shop:look_away/look_away_spell3 with entity @s EnderItems[0].components.minecraft:custom_data

# Supprime les overlays orphelins, par exemple apres une deconnexion
kill @e[type=text_display,tag=shop_overlay]

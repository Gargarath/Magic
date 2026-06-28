## Répare uniquement les objets de hotbar gérés qui ont disparu.

execute if entity @s[tag=warrior] run function stuff:stuff_warrior/cooldowns_w/cooldowns_w
execute if entity @s[tag=archer] run function stuff:stuff_archer/cooldowns_a/cooldowns_a
execute if entity @s[tag=mage] run function stuff:stuff_mage/cooldowns_m/cooldowns_m
execute if entity @s[tag=rogue] run function stuff:stuff_rogue/cooldowns_r/cooldowns_r

execute if entity @s[tag=warrior] unless items entity @s inventory.* *[custom_data={weapon1_slot:1b}] run function shop:history/apply/warrior/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=archer] unless items entity @s inventory.* *[custom_data={weapon1_slot:1b}] run function shop:history/apply/archer/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=mage] unless items entity @s inventory.* *[custom_data={weapon1_slot:1b}] run function shop:history/apply/mage/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=rogue] unless items entity @s inventory.* *[custom_data={weapon1_slot:1b}] run function shop:history/apply/rogue/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s spell1 matches 1.. if entity @s[tag=warrior] unless items entity @s inventory.* *[custom_data={spell1_slot:1b}] run function shop:history/apply/warrior/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 1.. if entity @s[tag=archer] unless items entity @s inventory.* *[custom_data={spell1_slot:1b}] run function shop:history/apply/archer/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 1.. if entity @s[tag=mage] unless items entity @s inventory.* *[custom_data={spell1_slot:1b}] run function shop:history/apply/mage/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell1 matches 1.. if entity @s[tag=rogue] unless items entity @s inventory.* *[custom_data={spell1_slot:1b}] run function shop:history/apply/rogue/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s spell2 matches 1.. if entity @s[tag=warrior] unless items entity @s inventory.* *[custom_data={spell2_slot:1b}] run function shop:history/apply/warrior/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 1.. if entity @s[tag=archer] unless items entity @s inventory.* *[custom_data={spell2_slot:1b}] run function shop:history/apply/archer/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 1.. if entity @s[tag=mage] unless items entity @s inventory.* *[custom_data={spell2_slot:1b}] run function shop:history/apply/mage/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 1.. if entity @s[tag=rogue] unless items entity @s inventory.* *[custom_data={spell2_slot:1b}] run function shop:history/apply/rogue/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s spell3 matches 1.. if entity @s[tag=warrior] unless items entity @s inventory.* *[custom_data={spell3_slot:1b}] run function shop:history/apply/warrior/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 1.. if entity @s[tag=archer] unless items entity @s inventory.* *[custom_data={spell3_slot:1b}] run function shop:history/apply/archer/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 1.. if entity @s[tag=mage] unless items entity @s inventory.* *[custom_data={spell3_slot:1b}] run function shop:history/apply/mage/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell3 matches 1.. if entity @s[tag=rogue] unless items entity @s inventory.* *[custom_data={spell3_slot:1b}] run function shop:history/apply/rogue/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data

execute if entity @s[tag=in_lobby_arena] unless items entity @s inventory.* *[custom_data={quit_slot:1b}] run function stuff:generic_stuff/quit_arena with entity @s EnderItems[0].components.minecraft:custom_data

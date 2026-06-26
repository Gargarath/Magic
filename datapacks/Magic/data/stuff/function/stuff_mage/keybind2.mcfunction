## appelée par used_keybind2 si @s a swap un item avec offhand et est guerrier
# permet de lui faire lancer le spell du keybind 2 si il l'a


tag @s remove save_inventory
tag @s add inventory_rebuilding
clear @s
execute as @s run function stuff:stuff_mage/stuffmage

execute as @s[scores={trapped=0..},team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/trapped
execute as @s[scores={hooked_w=0..},team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/hooked
execute as @s[tag=is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/hooker
execute as @s[team=respawn_red] run function spells:cant_usespell/respawn
execute as @s[team=respawn_blue] run function spells:cant_usespell/respawn
# dit qu'il peut pas si pas possible

# Pour chaque slot, on vérifie si c'est le sort 1
execute if score @s key_slot2 matches 0 if items entity @s hotbar.0 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 1 if items entity @s hotbar.1 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 2 if items entity @s hotbar.2 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 3 if items entity @s hotbar.3 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 4 if items entity @s hotbar.4 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 5 if items entity @s hotbar.5 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 6 if items entity @s hotbar.6 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 7 if items entity @s hotbar.7 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m
execute if score @s key_slot2 matches 8 if items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={spell1_m:1b,spell1_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell1/usespell1_m

# Pour chaque slot, on vérifie si c'est le sort 2
execute if score @s key_slot2 matches 0 if items entity @s hotbar.0 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 1 if items entity @s hotbar.1 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 2 if items entity @s hotbar.2 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 3 if items entity @s hotbar.3 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 4 if items entity @s hotbar.4 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 5 if items entity @s hotbar.5 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 6 if items entity @s hotbar.6 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 7 if items entity @s hotbar.7 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m
execute if score @s key_slot2 matches 8 if items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={spell2_m:1b,spell2_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell2/usespell2_m

# Pour chaque slot, on vérifie si c'est le sort 3
execute if score @s key_slot2 matches 0 if items entity @s hotbar.0 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 1 if items entity @s hotbar.1 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 2 if items entity @s hotbar.2 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 3 if items entity @s hotbar.3 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 4 if items entity @s hotbar.4 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 5 if items entity @s hotbar.5 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 6 if items entity @s hotbar.6 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 7 if items entity @s hotbar.7 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m
execute if score @s key_slot2 matches 8 if items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={spell3_m:1b,spell3_slot:1b}] as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:usespell/usespell3/usespell3_m

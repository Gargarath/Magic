# Appelée par spells:testspell -> permet de détruire son piége
scoreboard players set @s usespell 0

execute if score @s trap_number_a matches 1 as @e[scores={trap_number_a=1},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 2 as @e[scores={trap_number_a=2},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 3 as @e[scores={trap_number_a=3},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 4 as @e[scores={trap_number_a=4},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 5 as @e[scores={trap_number_a=5},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 6 as @e[scores={trap_number_a=6},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 7 as @e[scores={trap_number_a=7},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 8 as @e[scores={trap_number_a=8},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 9 as @e[scores={trap_number_a=9},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 10 as @e[scores={trap_number_a=10},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 11 as @e[scores={trap_number_a=11},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 12 as @e[scores={trap_number_a=12},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s trap_number_a matches 1 run kill @e[tag=trap,scores={trap_number_a=1}]
execute if score @s trap_number_a matches 2 run kill @e[tag=trap,scores={trap_number_a=2}]
execute if score @s trap_number_a matches 3 run kill @e[tag=trap,scores={trap_number_a=3}]
execute if score @s trap_number_a matches 4 run kill @e[tag=trap,scores={trap_number_a=4}]
execute if score @s trap_number_a matches 5 run kill @e[tag=trap,scores={trap_number_a=5}]
execute if score @s trap_number_a matches 6 run kill @e[tag=trap,scores={trap_number_a=6}]
execute if score @s trap_number_a matches 7 run kill @e[tag=trap,scores={trap_number_a=7}]
execute if score @s trap_number_a matches 8 run kill @e[tag=trap,scores={trap_number_a=8}]
execute if score @s trap_number_a matches 9 run kill @e[tag=trap,scores={trap_number_a=9}]
execute if score @s trap_number_a matches 10 run kill @e[tag=trap,scores={trap_number_a=10}]
execute if score @s trap_number_a matches 11 run kill @e[tag=trap,scores={trap_number_a=11}]
execute if score @s trap_number_a matches 12 run kill @e[tag=trap,scores={trap_number_a=12}]
execute if score @s trap_number_a matches 1 run scoreboard players set @a[scores={in_trap_number=1}] trapped 0
execute if score @s trap_number_a matches 2 run scoreboard players set @a[scores={in_trap_number=2}] trapped 0
execute if score @s trap_number_a matches 3 run scoreboard players set @a[scores={in_trap_number=3}] trapped 0
execute if score @s trap_number_a matches 4 run scoreboard players set @a[scores={in_trap_number=4}] trapped 0
execute if score @s trap_number_a matches 5 run scoreboard players set @a[scores={in_trap_number=5}] trapped 0
execute if score @s trap_number_a matches 6 run scoreboard players set @a[scores={in_trap_number=6}] trapped 0
execute if score @s trap_number_a matches 7 run scoreboard players set @a[scores={in_trap_number=7}] trapped 0
execute if score @s trap_number_a matches 8 run scoreboard players set @a[scores={in_trap_number=8}] trapped 0
execute if score @s trap_number_a matches 9 run scoreboard players set @a[scores={in_trap_number=9}] trapped 0
execute if score @s trap_number_a matches 10 run scoreboard players set @a[scores={in_trap_number=10}] trapped 0
execute if score @s trap_number_a matches 11 run scoreboard players set @a[scores={in_trap_number=11}] trapped 0
execute if score @s trap_number_a matches 12 run scoreboard players set @a[scores={in_trap_number=12}] trapped 0
scoreboard players set @s trap_number_a 0
tag @s remove have_trap
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 100 2

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 10
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

scoreboard players set @s[scores={spell2=1}] cooldownspell2 10
scoreboard players set @s[scores={spell2=2}] cooldownspell2 7
scoreboard players set @s[scores={spell2=3}] cooldownspell2 5
scoreboard players set @s cooldown2_clock 20
clear @s carrot_on_a_stick[minecraft:custom_data={spell2_a:1b,spell2_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=1}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=2}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=3}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5

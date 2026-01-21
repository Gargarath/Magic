# appelée par spells:testspell permet de tp @s a son armorstand qui a le même score de backup_number que lui puis de kill cet armorstand et enlever à @s le tag have_backup
execute as @s[tag=Has_Red_flag] run function ctf:usespellwithflag/usespell_redflag
execute as @s[tag=Has_Blue_flag] run function ctf:usespellwithflag/usespell_blueflag
# permet de drop le flag si on le possède (car c'est un sort de mouvement)

function ctf:maps_systems/candyworld/gingerbread/clear_gingerbread_effect
# si @s était dans le punch pain d'épice -> le cancel

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

scoreboard players set @s usespell 0
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 50
execute at @s run playsound minecraft:block.fire.extinguish master @a[distance=..10] ~ ~ ~ 100 2
execute at @e[tag=backup_r,scores={backup_number_r=1},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=1}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=2},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=2}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=3},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=3}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=4},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=4}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=5},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=5}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=6},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=6}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=7},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=7}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=8},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=8}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=9},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=9}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=10},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=10}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=11},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=11}] ~ ~ ~
execute at @e[tag=backup_r,scores={backup_number_r=12},limit=1,type=armor_stand] run tp @s[scores={backup_number_r=12}] ~ ~ ~


execute if score @s backup_number_r matches 1 as @e[scores={backup_number_r=1},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 2 as @e[scores={backup_number_r=2},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 3 as @e[scores={backup_number_r=3},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 4 as @e[scores={backup_number_r=4},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 5 as @e[scores={backup_number_r=5},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 6 as @e[scores={backup_number_r=6},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 7 as @e[scores={backup_number_r=7},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 8 as @e[scores={backup_number_r=8},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 9 as @e[scores={backup_number_r=9},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 10 as @e[scores={backup_number_r=10},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 11 as @e[scores={backup_number_r=11},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 12 as @e[scores={backup_number_r=12},type=wandering_trader] run tp @s ~ -10 ~
execute if score @s backup_number_r matches 1 run kill @e[tag=backup_r,scores={backup_number_r=1}]
execute if score @s backup_number_r matches 2 run kill @e[tag=backup_r,scores={backup_number_r=2}]
execute if score @s backup_number_r matches 3 run kill @e[tag=backup_r,scores={backup_number_r=3}]
execute if score @s backup_number_r matches 4 run kill @e[tag=backup_r,scores={backup_number_r=4}]
execute if score @s backup_number_r matches 5 run kill @e[tag=backup_r,scores={backup_number_r=5}]
execute if score @s backup_number_r matches 6 run kill @e[tag=backup_r,scores={backup_number_r=6}]
execute if score @s backup_number_r matches 7 run kill @e[tag=backup_r,scores={backup_number_r=7}]
execute if score @s backup_number_r matches 8 run kill @e[tag=backup_r,scores={backup_number_r=8}]
execute if score @s backup_number_r matches 9 run kill @e[tag=backup_r,scores={backup_number_r=9}]
execute if score @s backup_number_r matches 10 run kill @e[tag=backup_r,scores={backup_number_r=10}]
execute if score @s backup_number_r matches 11 run kill @e[tag=backup_r,scores={backup_number_r=11}]
execute if score @s backup_number_r matches 12 run kill @e[tag=backup_r,scores={backup_number_r=12}]
tag @s remove have_backup_r

scoreboard players set @s backup_number_r 0

clear @s carrot_on_a_stick[minecraft:custom_data={spell2_r:1b,spell2_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldownspell2 7
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown2_clock 20
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_rogue/cooldowns_r/spell2/spell2lvl1_r

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5
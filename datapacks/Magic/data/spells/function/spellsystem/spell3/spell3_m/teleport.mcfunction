## appelée par check_good_tp
## permet de tp @s à la position qu'il a ciblé

tag @s remove can_tp_m

function gamemode:ctf/maps_systems/candyworld/gingerbread/clear_gingerbread_effect
# si @s était dans le punch pain d'épice -> le cancel

execute as @s[tag=Has_Red_flag] run function gamemode:ctf/usespellwithflag/usespell_redflag
execute as @s[tag=Has_Blue_flag] run function gamemode:ctf/usespellwithflag/usespell_blueflag
# si @s a le drapeau, le fait tomber

execute at @s run particle minecraft:witch ~ ~1 ~ 0 0.4 0 0.0001 20 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 100 1

tp @s ~ ~1.1 ~
execute at @s run particle minecraft:witch ~ ~1 ~ 0 0.4 0 0.0001 20 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 100 1

execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldownspell3 20
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown3_clock 20
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_mage/cooldowns_m/spell3/spell3lvl1_m with entity @s EnderItems[0].components.minecraft:custom_data
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_m:1b,spell3_slot:1b}]

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock 5
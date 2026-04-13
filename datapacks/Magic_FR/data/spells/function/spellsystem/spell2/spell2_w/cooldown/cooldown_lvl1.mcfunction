## appelée par un des player si le joueur a le sort au niveau 1
## permet de lui donner son cd

execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldownspell2 15
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown2_clock 20
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_warrior/cooldowns_w/spell2/spell2lvl1_w with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5

## appelée par ctf:respawn si @s meurt en ayant la tempête de foudre active

function spells:spellsystem/spell2/spell2_m/reset_thunderstorm
# reset la tempête de foudre

## donne son cooldown à @s
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 1 run scoreboard players set @s cooldownspell2 24
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 1 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl1_m
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 2 run scoreboard players set @s cooldownspell2 22
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 2 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl2_m
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 3 run scoreboard players set @s cooldownspell2 19
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 3 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl3_m
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown2_clock 20

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5
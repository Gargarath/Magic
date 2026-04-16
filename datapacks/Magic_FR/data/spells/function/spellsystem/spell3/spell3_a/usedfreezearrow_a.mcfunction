# Fonction appelée par "spells:loop". Permet de light_blueonner une fleche normale a celui qui vient d'utiliser la fleche de glace


clear @s arrow
function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data
# Lance la fonction qui permet de donner des fleches en fonction de son score de arrow

tag @s remove Has_freeze_arrow
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_a:1b,spell3_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=1}] cooldownspell3 20
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=2}] cooldownspell3 15
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=3}] cooldownspell3 10
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown3_clock 20

execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell3=1}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell3=2}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell3=3}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock 5


# Fonction appelée par "spells:loop". Permet de light_blueonner une fleche normale a celui qui vient d'utiliser la fleche de glace


clear @s arrow
execute if score @s arrows_slot matches 0 run function spells:arrow_give_system/give_arrows/slot0
execute if score @s arrows_slot matches 1 run function spells:arrow_give_system/give_arrows/slot1
execute if score @s arrows_slot matches 2 run function spells:arrow_give_system/give_arrows/slot2
execute if score @s arrows_slot matches 3 run function spells:arrow_give_system/give_arrows/slot3
execute if score @s arrows_slot matches 4 run function spells:arrow_give_system/give_arrows/slot4
execute if score @s arrows_slot matches 5 run function spells:arrow_give_system/give_arrows/slot5
execute if score @s arrows_slot matches 6 run function spells:arrow_give_system/give_arrows/slot6
execute if score @s arrows_slot matches 7 run function spells:arrow_give_system/give_arrows/slot7
execute if score @s arrows_slot matches 8 run function spells:arrow_give_system/give_arrows/slot8
# Lance la fonction qui permet de donner des fleches en fonction de son score de arrow (le lance selon où il veut ses flèches)
tag @s remove Has_freeze_arrow
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_a:1b,spell3_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=1}] cooldownspell3 20
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=2}] cooldownspell3 15
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s[scores={spell3=3}] cooldownspell3 10
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown3_clock 20

execute if score $no_cooldowns option_panel matches 0 run execute as @s[scores={spell3=1}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl1_a
execute if score $no_cooldowns option_panel matches 0 run execute as @s[scores={spell3=2}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl2_a
execute if score $no_cooldowns option_panel matches 0 run execute as @s[scores={spell3=3}] run function stuff:stuff_archer/cooldowns_a/spell3/spell3lvl3_a

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock 5


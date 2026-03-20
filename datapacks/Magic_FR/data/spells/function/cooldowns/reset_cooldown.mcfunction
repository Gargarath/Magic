# appelée par respawn et respawn_hasflag
# permet de reset les cooldown de @s


execute unless score @s cooldownspell1 matches -1 run scoreboard players set @s cooldownspell1 0
execute unless score @s cooldownspell1 matches -1 run scoreboard players set @s cooldown1_clock 5
execute unless score @s cooldownspell2 matches -1 run scoreboard players set @s cooldownspell2 0
execute unless score @s cooldownspell2 matches -1 run scoreboard players set @s cooldown2_clock 5
execute unless score @s cooldownspell3 matches -1 run scoreboard players set @s cooldownspell3 0
execute unless score @s cooldownspell3 matches -1 run scoreboard players set @s cooldown3_clock 5

execute unless score @s[tag=archer] arrow = @s maxarrow run scoreboard players operation @s arrow = @s maxarrow
execute if score @s[tag=archer] arrows_slot matches 0 run function stuff:stuff_archer/arrows/classics/slot0
execute if score @s[tag=archer] arrows_slot matches 1 run function stuff:stuff_archer/arrows/classics/slot1
execute if score @s[tag=archer] arrows_slot matches 2 run function stuff:stuff_archer/arrows/classics/slot2
execute if score @s[tag=archer] arrows_slot matches 3 run function stuff:stuff_archer/arrows/classics/slot3
execute if score @s[tag=archer] arrows_slot matches 4 run function stuff:stuff_archer/arrows/classics/slot4
execute if score @s[tag=archer] arrows_slot matches 5 run function stuff:stuff_archer/arrows/classics/slot5
execute if score @s[tag=archer] arrows_slot matches 6 run function stuff:stuff_archer/arrows/classics/slot6
execute if score @s[tag=archer] arrows_slot matches 7 run function stuff:stuff_archer/arrows/classics/slot7
execute if score @s[tag=archer] arrows_slot matches 8 run function stuff:stuff_archer/arrows/classics/slot8
# met le nombre de flèche de @s à son max


scoreboard players set @s[tag=mage] weapon1_mana_m 100
execute if entity @s[tag=mage] run function spells:spellsystem/weapon1_m/refresh_timer/check_timer
# remet @s full mana (si c'est un mage
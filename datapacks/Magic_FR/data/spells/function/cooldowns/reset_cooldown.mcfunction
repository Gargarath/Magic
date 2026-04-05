# appelée par respawn et respawn_hasflag
# permet de reset les cooldown de @s


execute unless score @s cooldownspell1 matches -1 run scoreboard players set @s cooldownspell1 0
execute unless score @s cooldownspell1 matches -1 run scoreboard players set @s cooldown1_clock 5
execute unless score @s cooldownspell2 matches -1 run scoreboard players set @s cooldownspell2 0
execute unless score @s cooldownspell2 matches -1 run scoreboard players set @s cooldown2_clock 5
execute unless score @s cooldownspell3 matches -1 run scoreboard players set @s cooldownspell3 0
execute unless score @s cooldownspell3 matches -1 run scoreboard players set @s cooldown3_clock 5

execute unless score @s[tag=archer] arrow = @s maxarrow run scoreboard players operation @s arrow = @s maxarrow
execute if entity @s[tag=archer] run function stuff:stuff_archer/arrows/classics_unusable/testplayer
# rend l'arc de @s utilisable si c'est un archer

scoreboard players set @s[tag=mage] weapon1_mana_m 100
execute if entity @s[tag=mage] run function spells:spellsystem/weapon1_m/refresh_timer/check_timer
# remet @s full mana (si c'est un mage
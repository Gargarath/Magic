## appelée par spells:loop au nom du joueur brulé
# réduit la bossbar de @s


scoreboard players remove @s burning 1

execute if score @s Player matches 1 store result bossbar burning:player1 value run scoreboard players get @s burning
execute if score @s Player matches 2 store result bossbar burning:player2 value run scoreboard players get @s burning
execute if score @s Player matches 3 store result bossbar burning:player3 value run scoreboard players get @s burning
execute if score @s Player matches 4 store result bossbar burning:player4 value run scoreboard players get @s burning
execute if score @s Player matches 5 store result bossbar burning:player5 value run scoreboard players get @s burning
execute if score @s Player matches 6 store result bossbar burning:player6 value run scoreboard players get @s burning
execute if score @s Player matches 7 store result bossbar burning:player7 value run scoreboard players get @s burning
execute if score @s Player matches 8 store result bossbar burning:player8 value run scoreboard players get @s burning
execute if score @s Player matches 9 store result bossbar burning:player9 value run scoreboard players get @s burning
execute if score @s Player matches 10 store result bossbar burning:player10 value run scoreboard players get @s burning
execute if score @s Player matches 11 store result bossbar burning:player11 value run scoreboard players get @s burning
execute if score @s Player matches 12 store result bossbar burning:player12 value run scoreboard players get @s burning


execute if score @s burning matches 40 if score @s burning_lvl matches 1 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl1
execute if score @s burning matches 40 if score @s burning_lvl matches 2 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl2
execute if score @s burning matches 40 if score @s burning_lvl matches 3 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl3

execute if score @s burning matches 20 if score @s burning_lvl matches 1 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl1
execute if score @s burning matches 20 if score @s burning_lvl matches 2 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl2
execute if score @s burning matches 20 if score @s burning_lvl matches 3 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl3

execute if score @s burning matches 0 if score @s burning_lvl matches 1 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl1
execute if score @s burning matches 0 if score @s burning_lvl matches 2 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl2
execute if score @s burning matches 0 if score @s burning_lvl matches 3 run function spells:spellsystem/spell1/spell1_m/fire_dmg_lvl3

execute if score @s burning matches 0 run function spells:spellsystem/spell1/spell1_m/remove_fire
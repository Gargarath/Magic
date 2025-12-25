## appelée par cast_spell si le sort 2 doit être lancé
## permet de donner le bon temps de cast à la liche selon son état

execute if score @s freeze matches -1 run scoreboard players set cast_time lich 40
execute unless score @s freeze matches -1 run scoreboard players set cast_time lich 60
# si le sort 1 est selectionné donne 35 ticks de cast à la liche
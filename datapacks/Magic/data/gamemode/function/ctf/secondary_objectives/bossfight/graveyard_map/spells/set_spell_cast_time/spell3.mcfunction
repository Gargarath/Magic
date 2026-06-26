## appelée par cast_spell si le sort 3 doit être lancé
## permet de donner le bon temps de cast à la liche selon son état

execute if score @s freeze matches -1 run scoreboard players set cast_time lich 50
execute unless score @s freeze matches -1 run scoreboard players set cast_time lich 70
# si le sort 1 est selectionné donne 35 ticks de cast à la liche
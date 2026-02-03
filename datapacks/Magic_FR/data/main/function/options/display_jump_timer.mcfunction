## appelée par main:loop
# permet d'alterner entre raccourcis depuis gauche et droite

scoreboard players reset @s opt_trig_display_jump_timer
scoreboard players enable @s opt_trig_display_jump_timer

scoreboard players add @s opt_display_jump_timer 1
execute if score @s opt_display_jump_timer matches 2 run scoreboard players set @s opt_display_jump_timer 0

execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1
execute if score @s opt_display_jump_timer matches 1 run tellraw @s {"color":"gray","italic":true,"text":"Le chronomettre des parcours est désormais affiché."}
execute if score @s opt_display_jump_timer matches 0 run tellraw @s {"color":"gray","italic":true,"text":"Le chronomettre des parcours est désormais masqué."}
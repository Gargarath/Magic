## appelée par main:loop
# permet d'alterner entre raccourcis depuis gauche et droite

scoreboard players reset @s opt_trig_display_jump_timer
scoreboard players enable @s opt_trig_display_jump_timer

scoreboard players add @s opt_display_jump_timer 1
execute if score @s opt_display_jump_timer matches 2 run scoreboard players set @s opt_display_jump_timer 0

function main:options/open_options
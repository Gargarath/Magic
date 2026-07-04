## appelée lorsqu'un joueur quitte le shop en FFA
# affiche son nom d'équipe

attribute @s minecraft:name_tag_distance base reset

waypoint modify @s style set default
execute if score @s opt_color matches 0 run waypoint modify @s color white
execute if score @s opt_color matches 1 run waypoint modify @s color gray
execute if score @s opt_color matches 2 run waypoint modify @s color dark_gray
execute if score @s opt_color matches 3 run waypoint modify @s color black
execute if score @s opt_color matches 4 run waypoint modify @s color aqua
execute if score @s opt_color matches 5 run waypoint modify @s color dark_aqua
execute if score @s opt_color matches 6 run waypoint modify @s color blue
execute if score @s opt_color matches 7 run waypoint modify @s color dark_blue
execute if score @s opt_color matches 8 run waypoint modify @s color green
execute if score @s opt_color matches 9 run waypoint modify @s color dark_green
execute if score @s opt_color matches 10 run waypoint modify @s color light_purple
execute if score @s opt_color matches 11 run waypoint modify @s color dark_purple
execute if score @s opt_color matches 12 run waypoint modify @s color red
execute if score @s opt_color matches 13 run waypoint modify @s color dark_red
execute if score @s opt_color matches 14 run waypoint modify @s color yellow
execute if score @s opt_color matches 15 run waypoint modify @s color gold
attribute @s waypoint_transmit_range base set 200
attribute @s waypoint_receive_range base set 200
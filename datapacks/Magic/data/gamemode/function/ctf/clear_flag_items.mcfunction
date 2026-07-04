## Remplace les objets de drapeau équipés par les items invisibles habituels

execute if entity @s[scores={freeze=-1,burning=-1}] run function stuff:generic_stuff/empty_head
execute unless entity @s[scores={freeze=-1,burning=-1}] if score @s ctf_flag_carrier matches 1.. run function stuff:generic_stuff/empty_head
function stuff:generic_stuff/empty_offhand
clear @s carrot_on_a_stick[custom_model_data={strings:["blue_flag"]}]
clear @s carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]

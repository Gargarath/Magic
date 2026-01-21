## appelée par interact_with_interaction/interact_with_interaction au nom de l'interaction qui a été cliquée
# permet de lancer le check de quel bouton


execute if entity @s[type=interaction,tag=map_display_slot1_clickable] if data entity @s interaction on target run function lobby:map_island/spec_map/spec_map
execute if entity @s[type=interaction,tag=map_display_left_clickable] if data entity @s interaction on target run function lobby:map_island/display/rotate_left
execute if entity @s[type=interaction,tag=map_display_right_clickable] if data entity @s interaction on target run function lobby:map_island/display/rotate_right

execute unless entity @s[tag=map_display_slot1_clickable] on target at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

data remove entity @s interaction

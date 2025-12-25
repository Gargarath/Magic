##appelée par spell3_m/trail si @s peut se tp
## lui indique qu'il peut se tp

execute if score @s tp_range matches ..50 run particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":2.0} ~ ~1.2 ~ 0 0.3 0 0.0001 5 force @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{text:"Téléportation"}}}}]
scoreboard players set @s tp_range -1
scoreboard players set @s can_tp_m 2
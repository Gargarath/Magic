## appelée par check_clicked_button ou hotbar_menu/class_selector/become_X si @s est déjà archer
# lui indique qu'il est déjà archer

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_already_archer","color":"red","bold":false,plain:true}
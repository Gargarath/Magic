## appelée par check_clicked_button ou hotbar_menu/class_selector/become_X si @s est déjà rogue
# lui indique qu'il est déjà rogue

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0

function lobby:class_selector/messages/already_rogue with entity @s EnderItems[0].components.minecraft:custom_data

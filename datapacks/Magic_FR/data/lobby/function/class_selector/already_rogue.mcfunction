## appelée par check_clicked_button ou hotbar_menu/class_selector/become_X si @s est déjà rogue
# lui indique qu'il est déjà rogue

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0

tellraw @s {"text":"Vous êtes déjà Assassin !","color":"red","bold":false}
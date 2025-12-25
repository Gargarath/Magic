## appelée par check_clicked_button ou hotbar_menu/class_selector/become_X si @s est déjà guerrier
# lui indique qu'il est déjà guerrier

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0

tellraw @s {"text":"Vous êtes déjà Guerrier !","color":"red","bold":false}
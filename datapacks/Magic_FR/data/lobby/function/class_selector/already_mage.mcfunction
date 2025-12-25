## appelée par check_clicked_button ou hotbar_menu/class_selector/become_X si @s est déjà mage
# lui indique qu'il est déjà mage

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0

tellraw @s {"text":"Vous êtes déjà Mage !","color":"red","bold":false}
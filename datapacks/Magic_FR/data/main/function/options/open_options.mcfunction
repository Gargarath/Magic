## appelée par main:loop quand @s clique sur les options
# permet de lui ouvrir le GUI des options

scoreboard players reset @s opt_open_options
scoreboard players enable @s opt_open_options
# redonne le trigger à @s


## OPTIONS CUSTOM
data modify storage my:options_ui buttons set value []

execute if score @s opt_display_jump_timer matches 0 run data modify storage my:options_ui buttons append value {"label": {"text": "Chronomètre de parcours : ","type": "text","extra": [{"text": "OFF","type": "text","color": "red"}]},"width": 180,"action": {"type": "minecraft:run_command","command": "/trigger opt_trig_display_jump_timer"}}
execute if score @s opt_display_jump_timer matches 1 run data modify storage my:options_ui buttons append value {"label": {"text": "Chronomètre de parcours : ","type": "text","extra": [{"text": "ON","type": "text","color": "green"}]},"width": 180,"action": {"type": "minecraft:run_command","command": "/trigger opt_trig_display_jump_timer"}}
# Chronometre de parcours


execute if score @s opt_keybind_order matches 1 run data modify storage my:options_ui buttons append value {"label": {"text": "Raccourcis : ","type": "text","extra": [{"text": "GAUCHE <- DROITE","type": "text","color": "red"}]},"width": 180,"action": {"type": "minecraft:run_command","command": "/trigger opt_trig_keybind_order"}}
execute if score @s opt_keybind_order matches 2 run data modify storage my:options_ui buttons append value {"label": {"text": "Raccourcis : ","type": "text","extra": [{"text": "GAUCHE -> DROITE","type": "text","color": "green"}]},"width": 180,"action": {"type": "minecraft:run_command","command": "/trigger opt_trig_keybind_order"}}
# Ordre de raccourcis


## BOUTON QUITTER
data modify storage my:options_ui buttons append value {"label": {"text": "Retour","type": "text","color": "red"},"width": 180,"action": {"type": "minecraft:show_dialog","dialog": "main:main_menu/main"}}
# Boutton quitter


## OUVERTURE DU DIALOGUE
function main:options/options_main with storage my:options_ui
# Prepare les textes du dialogue de bienvenue avant de l'afficher via macro.

tag @s add choosing_language
scoreboard players set @s welcome_language 0
scoreboard players enable @s welcome_language

data modify storage temp:dialog welcome set value {title:"Welcome to Magic!",body:"Welcome to\n\n\n\n\n\n\uE636\n\n\nPlease choose your language:",english:"\uE637 English",french:"\uE638 Français"}
function main:initialised/welcome_dialog/show with storage temp:dialog welcome

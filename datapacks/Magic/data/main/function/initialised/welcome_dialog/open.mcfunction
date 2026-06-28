# Prepare les textes du dialogue de bienvenue avant de l'afficher via macro.

tag @s add choosing_language
scoreboard players set @s welcome_language 0
scoreboard players enable @s welcome_language

data modify storage temp:dialog welcome set value {title:"Welcome to Magic!",body:"\uE605 Welcome to Magic!\\n\\nBienvenue dans Magic !\\n\\nChoose your language / Choisissez votre langue :",english:"English",french:"Français"}
function main:initialised/welcome_dialog/show with storage temp:dialog welcome

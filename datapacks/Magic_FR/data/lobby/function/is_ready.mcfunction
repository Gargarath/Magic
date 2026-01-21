# appelée par lobby:loop quand le datapack vient de charger


## CLASS SELECTOR
function lobby:class_selector/warrior/pages/reset_pages
function lobby:class_selector/archer/pages/reset_pages
function lobby:class_selector/mage/pages/reset_pages
function lobby:class_selector/rogue/pages/reset_pages

## ARENE
scoreboard players set $arena_members Player 0
# indique qu'il n'y a aucun joueur dans l'arène
tag @a remove display_killfeed
# fait en sorte que les joueurs ne voient plus le killfeed

## MAPS

function lobby:map_island/setup_maps_info
# setup les objets éducatifs des maps


## AUTRE

gamerule fall_damage false
# enlève les dégats de chutes

function main:gui/clear/clear_actionbar_bar
# supprime les barres de hotbar

execute if score yes used_reset matches 0 run tp @a 0.5 100 71.5 0 -2
# si pas de commande admin utilisée = tp fin de game -> tp tout le monde face aux stats
execute if score yes used_reset matches 1 run tp @a 0 100 0 180 0
# si commande admin utilisée, tp tout le monde face au menu

execute if score yes used_reset matches 1 as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0
gamemode adventure @a[gamemode=spectator]
tag @a remove in_own_spawn

effect clear @a minecraft:regeneration

execute as @a run attribute @s minecraft:entity_interaction_range base set 40
# augmente la portée d'interaction à tous (pour les menus)

scoreboard players set Is_ready Lobby_ready 1
# met le score de Lobby_ready de Is_ready à 1 pour indiquer que le datapack à chargé
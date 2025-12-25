# Gere l'activation du spell3lvl1 par un joueur guerrier

tag @s remove save_inventory

scoreboard players set @s usespell 0
tag @s add is_hooking
function spells:spellsystem/spell3/spell3_w/hook/start_hook/test_player
# lance le grappin

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory
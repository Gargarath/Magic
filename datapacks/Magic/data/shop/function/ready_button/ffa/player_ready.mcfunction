# Appelé par shop:loop permet a un joueur de commencer si il est en FFA


attribute @s minecraft:entity_interaction_range base set 3
# redonne la portée d'interaction d'entité de base de @s
attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction de block de base de @s (utilisé dans le shop pour les panneaux du shop)

#execute at @s at @e[tag=room,limit=1,sort=nearest] positioned ~ ~10 ~ run clone 19 95 17 21 96 19 ~-1 ~ ~-1
# remet les barrier blocs dans les salles d'achat


function lobby:team_selector/give_ffa_team/change_name_visibility/show_name
# affiche le pseudo de @s

scoreboard players set @s InShop 0
scoreboard players set @s usespell 0

execute if entity @s[tag=archer] run function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data
# rend ses flèches à @s

function gamemode:ffa/spawn/spawn_good_spot
# fait spawn @s à un spot adapté

execute at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 100 1
# fait un son de tp à @s
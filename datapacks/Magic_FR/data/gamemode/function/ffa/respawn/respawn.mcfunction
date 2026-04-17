## appelée par ffa/loop quand @s meurt
# le fait passer en mode shop

scoreboard players set @s InShop 1

execute if score @s killfeed_died_checked < @s killfeed_died run function main:killfeed/not_another_entity/_determine_how_died
# si le killfeed n'a pas déterminé comment @s est mort (donc pas par une autre entité) -> determine comment il est mort

function main:reset/resetspells/respawn_reset
# reset tout ce qui est generique au niveau du respawn

# POUR SHOP

execute if score $build_reset option_panel matches 1 run function shop:history/reset_history with entity @s EnderItems[0].components.minecraft:custom_data
# reinitialise l'historique undo / redo si on est en mode par phase d'achat
function lobby:team_selector/give_ffa_team/change_name_visibility/hide_name
# cache le pseudo de @s

attribute @s minecraft:entity_interaction_range base set 17
# augmente la portée d'interaction de @s (pour les menus)
attribute @s minecraft:block_interaction_range base set 20
# augmente la portée d'interaction block de @s (pour les panneaux du shop)

function shop:refresh/money/refresh_money
# refresh les sous de @s
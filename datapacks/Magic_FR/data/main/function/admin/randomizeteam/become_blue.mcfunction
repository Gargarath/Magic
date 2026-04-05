# appellée par main:admin/randomizeteam permet à @s de devenir blue

function lobby:team_selector/join_team/blue
# rend @s blue

execute if score @s hotbar_menu matches 0 run function lobby:hotbar_menu/drop_item
execute if score @s hotbar_menu matches 2 run function lobby:hotbar_menu/drop_item
# actualise la team de @s pour le menu de selection de la hotbar (si il est pas dans d'autres menus)

tag @s remove not_on_team
# enlève le tag not_on_team à @s afin qu'il ne soit plus appellée par main:admin/randomizeteam
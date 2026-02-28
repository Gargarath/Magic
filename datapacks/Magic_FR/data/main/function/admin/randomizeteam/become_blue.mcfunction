# appellée par main:admin/randomizeteam permet à @s de devnir bleu


execute unless entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# permet d'ajouter @s à la liste des statues bleues si pas déjà le cas

tag @s remove red_team
tag @s add blue_team
function lobby:hotbar_menu/drop_item
# actualise la team de @s pour le menu de selection de la hotbar

function lobby:team_selector/give_lobby_team
# Donne sa team du lobby à @s

tag @s remove not_on_team
# enlève le tag not_on_team à @s afin qu'il ne soit plus appellée par main:admin/randomizeteam
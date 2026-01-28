## apprlé par quit arena et start_game
# clear les données d'arènes de @s

scoreboard players set @s[scores={Player=1..}] Player 0
tag @s remove in_lobby_arena
tag @s remove display_killfeed
tag @s remove respawn

scoreboard players set @s in_fight 0
scoreboard players set @s out_of_fight 301
# indique que @s n'est plus en fight

function main:ressource_pack_detector/display_something_else/show_another_message
# clear l'affichage de @s
# appelée par stuff:stuffarcher_combined_arrow/check_player_number si @s possède à la fois la flèche explosive et la flèche de gel
# permet à @s de récuperer la bonne flèche de glace explosive selon son niveau d'amélioration sur la flèche explo et la flèche de glace

execute if score @s spell1 matches 1 if score @s spell3 matches 1 run function stuff:stuff_archer/arrows/combined_arrow/player6/1-1
execute if score @s spell1 matches 1 if score @s spell3 matches 2 run function stuff:stuff_archer/arrows/combined_arrow/player6/1-2
execute if score @s spell1 matches 1 if score @s spell3 matches 3 run function stuff:stuff_archer/arrows/combined_arrow/player6/1-3
execute if score @s spell1 matches 2 if score @s spell3 matches 1 run function stuff:stuff_archer/arrows/combined_arrow/player6/2-1
execute if score @s spell1 matches 2 if score @s spell3 matches 2 run function stuff:stuff_archer/arrows/combined_arrow/player6/2-2
execute if score @s spell1 matches 2 if score @s spell3 matches 3 run function stuff:stuff_archer/arrows/combined_arrow/player6/2-3
execute if score @s spell1 matches 3 if score @s spell3 matches 1 run function stuff:stuff_archer/arrows/combined_arrow/player6/3-1
execute if score @s spell1 matches 3 if score @s spell3 matches 2 run function stuff:stuff_archer/arrows/combined_arrow/player6/3-2
execute if score @s spell1 matches 3 if score @s spell3 matches 3 run function stuff:stuff_archer/arrows/combined_arrow/player6/3-3
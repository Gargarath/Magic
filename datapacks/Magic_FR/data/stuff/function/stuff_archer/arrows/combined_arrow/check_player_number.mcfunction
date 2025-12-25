# appelée par stuff:stuffarcher si @s possède à la fois la flèche explosive et la flèche de gel
# permet à @s de récuperer la bonne flèche de glace explosive selon son numéro de joueur

execute if score @s Player matches 1 run function stuff:stuff_archer/arrows/combined_arrow/player1/check_combination
execute if score @s Player matches 2 run function stuff:stuff_archer/arrows/combined_arrow/player2/check_combination
execute if score @s Player matches 3 run function stuff:stuff_archer/arrows/combined_arrow/player3/check_combination
execute if score @s Player matches 4 run function stuff:stuff_archer/arrows/combined_arrow/player4/check_combination
execute if score @s Player matches 5 run function stuff:stuff_archer/arrows/combined_arrow/player5/check_combination
execute if score @s Player matches 6 run function stuff:stuff_archer/arrows/combined_arrow/player6/check_combination
execute if score @s Player matches 7 run function stuff:stuff_archer/arrows/combined_arrow/player7/check_combination
execute if score @s Player matches 8 run function stuff:stuff_archer/arrows/combined_arrow/player8/check_combination
execute if score @s Player matches 9 run function stuff:stuff_archer/arrows/combined_arrow/player9/check_combination
execute if score @s Player matches 10 run function stuff:stuff_archer/arrows/combined_arrow/player10/check_combination
execute if score @s Player matches 11 run function stuff:stuff_archer/arrows/combined_arrow/player11/check_combination
execute if score @s Player matches 12 run function stuff:stuff_archer/arrows/combined_arrow/player12/check_combination
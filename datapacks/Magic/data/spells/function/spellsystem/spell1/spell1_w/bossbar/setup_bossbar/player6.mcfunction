# appelée par usespell1_w si @s est le joueur 6
# permet d'afficher sa bossbar de @s selon son numéro de joueur

$execute if score @s spell1 matches 1 run bossbar set berzerk:player6 name {"text":"$(tr_warrior_spell1_1_name) :","color":"dark_red","bold":true}
$execute if score @s spell1 matches 2 run bossbar set berzerk:player6 name {"text":"$(tr_warrior_spell1_2_name) :","color":"dark_red","bold":true}
$execute if score @s spell1 matches 3 run bossbar set berzerk:player6 name {"text":"$(tr_warrior_spell1_3_name) :","color":"dark_red","bold":true}
bossbar set berzerk:player6 value 80
bossbar set berzerk:player6 players @s
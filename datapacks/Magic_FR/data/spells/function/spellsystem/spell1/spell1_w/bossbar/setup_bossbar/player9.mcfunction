# appelée par usespell1_w si @s est le joueur 9
# permet d'afficher sa bossbar de @s selon son numéro de joueur

execute if score @s spell1 matches 1 run bossbar set berzerk:player9 name {"text":"Berzerk I :","color":"dark_red","bold":true}
execute if score @s spell1 matches 2 run bossbar set berzerk:player9 name {"text":"Berzerk II :","color":"dark_red","bold":true}
execute if score @s spell1 matches 3 run bossbar set berzerk:player9 name {"text":"Berzerk III :","color":"dark_red","bold":true}
bossbar set berzerk:player9 value 80
bossbar set berzerk:player9 players @s
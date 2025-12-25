# appelée par usespellX_r si @s est le joueur 12
# permet d'afficher sa bossbar de @s selon son numéro de joueur

execute if score @s spell1 matches 1 run bossbar set ambush:player12 name {"text":"Embuscade I :","color":"gray","bold":true}
execute if score @s spell1 matches 2 run bossbar set ambush:player12 name {"text":"Embuscade II :","color":"gray","bold":true}
execute if score @s spell1 matches 3 run bossbar set ambush:player12 name {"text":"Embuscade III :","color":"gray","bold":true}
execute store result bossbar ambush:player12 max run scoreboard players get @s using_ambush
execute store result bossbar ambush:player12 value run scoreboard players get @s using_ambush
bossbar set ambush:player12 players @s
# appelée par usespellX_r si @s est le joueur 3
# permet d'afficher sa bossbar de @s selon son numéro de joueur

$execute if score @s spell1 matches 1 run bossbar set ambush:player3 name {"text":"$(tr_rogue_spell1_1_name) :","color":"gray","bold":true}
$execute if score @s spell1 matches 2 run bossbar set ambush:player3 name {"text":"$(tr_rogue_spell1_2_name) :","color":"gray","bold":true}
$execute if score @s spell1 matches 3 run bossbar set ambush:player3 name {"text":"$(tr_rogue_spell1_3_name) :","color":"gray","bold":true}
execute store result bossbar ambush:player3 max run scoreboard players get @s using_ambush
execute store result bossbar ambush:player3 value run scoreboard players get @s using_ambush
bossbar set ambush:player3 players @s
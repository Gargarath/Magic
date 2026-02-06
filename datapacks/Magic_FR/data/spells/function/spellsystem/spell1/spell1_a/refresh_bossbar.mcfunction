## appelée par spells:loop au nom du joueur qui a sa flèche explo en compte à rebour
# augmente la bossbar de @s


scoreboard players add @s explosive_arrow_timer 1

execute if score @s Player matches 1 run execute store result bossbar explosive_arrow:player1 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 2 run execute store result bossbar explosive_arrow:player2 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 3 run execute store result bossbar explosive_arrow:player3 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 4 run execute store result bossbar explosive_arrow:player4 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 5 run execute store result bossbar explosive_arrow:player5 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 6 run execute store result bossbar explosive_arrow:player6 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 7 run execute store result bossbar explosive_arrow:player7 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 8 run execute store result bossbar explosive_arrow:player8 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 9 run execute store result bossbar explosive_arrow:player9 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 10 run execute store result bossbar explosive_arrow:player10 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 11 run execute store result bossbar explosive_arrow:player11 value run scoreboard players get @s explosive_arrow_timer
execute if score @s Player matches 12 run execute store result bossbar explosive_arrow:player12 value run scoreboard players get @s explosive_arrow_timer

execute if score @s Player matches 1 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=1}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player1
execute if score @s Player matches 1 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=1}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player1

execute if score @s Player matches 2 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=2}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player2
execute if score @s Player matches 2 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=2}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player2

execute if score @s Player matches 3 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=3}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player3
execute if score @s Player matches 3 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=3}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player3

execute if score @s Player matches 4 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=4}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player4
execute if score @s Player matches 4 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=4}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player4

execute if score @s Player matches 5 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=5}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player5
execute if score @s Player matches 5 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=5}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player5

execute if score @s Player matches 6 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=6}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player6
execute if score @s Player matches 6 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=6}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player6

execute if score @s Player matches 7 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=7}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player7
execute if score @s Player matches 7 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=7}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player7

execute if score @s Player matches 8 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=8}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player8
execute if score @s Player matches 8 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=8}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player8

execute if score @s Player matches 9 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=9}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player9
execute if score @s Player matches 9 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=9}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player9

execute if score @s Player matches 10 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=10}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player10
execute if score @s Player matches 10 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=10}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player10

execute if score @s Player matches 11 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=11}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player11
execute if score @s Player matches 11 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=11}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player11

execute if score @s Player matches 12 if score @s explosive_arrow_timer matches 4 as @e[type=#explo_arrow_holder,scores={hit_by_explo=12}] at @s run function spells:spellsystem/spell1/spell1_a/secnd_animation/player12
execute if score @s Player matches 12 if score @s explosive_arrow_timer matches 8 as @e[type=#explo_arrow_holder,scores={hit_by_explo=12}] at @s run function spells:spellsystem/spell1/spell1_a/detonate/player12
## appelée lorsqu'un joueur quitte les rouges
# permet de suprimer les armorstand rouges en trop

scoreboard players remove $max red_member 1
# enlève 1 au max de joueur rouges

execute as @e[type=armor_stand,tag=red_member1] unless entity @a[scores={red_member=1}] run kill @s
execute as @e[type=armor_stand,tag=red_member2] unless entity @a[scores={red_member=2}] run kill @s
execute as @e[type=armor_stand,tag=red_member3] unless entity @a[scores={red_member=3}] run kill @s
execute as @e[type=armor_stand,tag=red_member4] unless entity @a[scores={red_member=4}] run kill @s
execute as @e[type=armor_stand,tag=red_member5] unless entity @a[scores={red_member=5}] run kill @s
execute as @e[type=armor_stand,tag=red_member6] unless entity @a[scores={red_member=6}] run kill @s
execute as @e[type=armor_stand,tag=red_member7] unless entity @a[scores={red_member=7}] run kill @s
execute as @e[type=armor_stand,tag=red_member8] unless entity @a[scores={red_member=8}] run kill @s
execute as @e[type=armor_stand,tag=red_member9] unless entity @a[scores={red_member=9}] run kill @s
execute as @e[type=armor_stand,tag=red_member10] unless entity @a[scores={red_member=10}] run kill @s
execute as @e[type=armor_stand,tag=red_member11] unless entity @a[scores={red_member=11}] run kill @s
execute as @e[type=armor_stand,tag=red_member12] unless entity @a[scores={red_member=12}] run kill @s

execute unless entity @a[scores={red_place=1}] run function main:stats/scoreboard/red_team_info/clear_place/place1
execute unless entity @a[scores={red_place=2}] run function main:stats/scoreboard/red_team_info/clear_place/place2
execute unless entity @a[scores={red_place=3}] run function main:stats/scoreboard/red_team_info/clear_place/place3
execute unless entity @a[scores={red_place=4}] run function main:stats/scoreboard/red_team_info/clear_place/place4
execute unless entity @a[scores={red_place=5}] run function main:stats/scoreboard/red_team_info/clear_place/place5
execute unless entity @a[scores={red_place=6}] run function main:stats/scoreboard/red_team_info/clear_place/place6
# si un joueur affiché sur la barre d'équipe est déco -> clear sa place
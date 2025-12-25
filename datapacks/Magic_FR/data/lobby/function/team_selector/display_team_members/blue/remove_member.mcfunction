## appelée lorsqu'un joueur quitte les bleus
# permet de suprimer les armorstand bleus en trop

scoreboard players remove $max blue_member 1
# enlève 1 au max de joueur bleus

execute as @e[type=armor_stand,tag=blue_member1] unless entity @a[scores={blue_member=1}] run kill @s
execute as @e[type=armor_stand,tag=blue_member2] unless entity @a[scores={blue_member=2}] run kill @s
execute as @e[type=armor_stand,tag=blue_member3] unless entity @a[scores={blue_member=3}] run kill @s
execute as @e[type=armor_stand,tag=blue_member4] unless entity @a[scores={blue_member=4}] run kill @s
execute as @e[type=armor_stand,tag=blue_member5] unless entity @a[scores={blue_member=5}] run kill @s
execute as @e[type=armor_stand,tag=blue_member6] unless entity @a[scores={blue_member=6}] run kill @s
execute as @e[type=armor_stand,tag=blue_member7] unless entity @a[scores={blue_member=7}] run kill @s
execute as @e[type=armor_stand,tag=blue_member8] unless entity @a[scores={blue_member=8}] run kill @s
execute as @e[type=armor_stand,tag=blue_member9] unless entity @a[scores={blue_member=9}] run kill @s
execute as @e[type=armor_stand,tag=blue_member10] unless entity @a[scores={blue_member=10}] run kill @s
execute as @e[type=armor_stand,tag=blue_member11] unless entity @a[scores={blue_member=11}] run kill @s
execute as @e[type=armor_stand,tag=blue_member12] unless entity @a[scores={blue_member=12}] run kill @s

execute unless entity @a[scores={blue_place=1}] run function main:stats/scoreboard/blue_team_info/clear_place/place1
execute unless entity @a[scores={blue_place=2}] run function main:stats/scoreboard/blue_team_info/clear_place/place2
execute unless entity @a[scores={blue_place=3}] run function main:stats/scoreboard/blue_team_info/clear_place/place3
execute unless entity @a[scores={blue_place=4}] run function main:stats/scoreboard/blue_team_info/clear_place/place4
execute unless entity @a[scores={blue_place=5}] run function main:stats/scoreboard/blue_team_info/clear_place/place5
execute unless entity @a[scores={blue_place=6}] run function main:stats/scoreboard/blue_team_info/clear_place/place6
# si un joueur affiché sur la barre d'équipe est déco -> clear sa place
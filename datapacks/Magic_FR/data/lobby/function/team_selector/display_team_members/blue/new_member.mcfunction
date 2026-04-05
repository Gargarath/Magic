## appelée lorsqu'un joueur rejoint les bleus
# permet d'ajouter un armorstand bleus en trop

scoreboard players add $max blue_member 1
# ajoute 1 au max de joueurs bleus (pour le système de statues au lobby)
execute store result score blue playercount if entity @a[tag=blue_team]

scoreboard players reset @s blue_member

execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=1}] run function lobby:team_selector/display_team_members/blue/spawn_members/member1
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=2}] run function lobby:team_selector/display_team_members/blue/spawn_members/member2
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=3}] run function lobby:team_selector/display_team_members/blue/spawn_members/member3
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=4}] run function lobby:team_selector/display_team_members/blue/spawn_members/member4
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=5}] run function lobby:team_selector/display_team_members/blue/spawn_members/member5
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=6}] run function lobby:team_selector/display_team_members/blue/spawn_members/member6
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=7}] run function lobby:team_selector/display_team_members/blue/spawn_members/member7
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=8}] run function lobby:team_selector/display_team_members/blue/spawn_members/member8
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=9}] run function lobby:team_selector/display_team_members/blue/spawn_members/member9
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=10}] run function lobby:team_selector/display_team_members/blue/spawn_members/member10
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=11}] run function lobby:team_selector/display_team_members/blue/spawn_members/member11
execute unless score @s blue_member matches 1.. unless entity @a[scores={blue_member=12}] run function lobby:team_selector/display_team_members/blue/spawn_members/member12


execute as @s run function main:stats/scoreboard/blue_team_info/sort_blue
# ajoute @s à la liste des bleus (si il est co)
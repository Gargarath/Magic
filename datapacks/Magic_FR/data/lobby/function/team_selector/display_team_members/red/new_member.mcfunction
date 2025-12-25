## appelée lorsqu'un joueur rejoint les rouges
# permet d'ajouter un armorstand rouges en trop

scoreboard players add $max red_member 1
# ajoute 1 au max de joueurs rouges (pour le système de statues au lobby)
execute store result score red playercount run execute if entity @a[tag=red_team]

scoreboard players reset @s red_member

execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=1}] run function lobby:team_selector/display_team_members/red/spawn_members/member1
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=2}] run function lobby:team_selector/display_team_members/red/spawn_members/member2
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=3}] run function lobby:team_selector/display_team_members/red/spawn_members/member3
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=4}] run function lobby:team_selector/display_team_members/red/spawn_members/member4
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=5}] run function lobby:team_selector/display_team_members/red/spawn_members/member5
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=6}] run function lobby:team_selector/display_team_members/red/spawn_members/member6
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=7}] run function lobby:team_selector/display_team_members/red/spawn_members/member7
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=8}] run function lobby:team_selector/display_team_members/red/spawn_members/member8
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=9}] run function lobby:team_selector/display_team_members/red/spawn_members/member9
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=10}] run function lobby:team_selector/display_team_members/red/spawn_members/member10
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=11}] run function lobby:team_selector/display_team_members/red/spawn_members/member11
execute unless score @s red_member matches 1.. unless entity @a[scores={red_member=12}] run function lobby:team_selector/display_team_members/red/spawn_members/member12

execute as @s run function main:stats/scoreboard/red_team_info/sort_red
# ajoute @s à la liste des rouges (si il est co)
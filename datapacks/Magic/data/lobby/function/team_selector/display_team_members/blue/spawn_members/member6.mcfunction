## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 6
summon armor_stand -10.5 111.99 -20.18 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member6"],Pose:{Body:[-4.0f,0.0f,0.0f],Head:[-11.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,-100.0f],LeftLeg:[-8.0f,0.0f,-60.0f],RightArm:[0.0f,0.0f,100.0f],RightLeg:[-8.0f,0.0f,60.0f]},DisabledSlots:4144959,Rotation:[0.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[1837636100,-345881826,-1299149325,1576231659]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member6,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
function main:locator_bar/team_updated
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=6},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member6,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
execute at @e[type=armor_stand,tag=blue_member6,limit=1] run summon text_display ~ ~2.2 ~ {billboard:"center",see_through:0b,shadow:1b,background:0,Tags:["team_member_name","blue_member_name","blue_member6_name"],text:{text:""}}
data modify entity @e[type=text_display,tag=blue_member6_name,limit=1] text set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 3
summon armor_stand -7.9 105.34 -19.11 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member3"],Pose:{Body:[0.0f,0.0f,0.0f],Head:[2.0f,338.0f,0.0f],LeftArm:[-7.0f,-95.0f,343.0f],LeftLeg:[286.0f,349.0f,0.0f],RightArm:[349.0f,0.0f,19.0f],RightLeg:[287.0f,11.0f,0.0f]},DisabledSlots:4144959,Rotation:[29.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[1837636100,-345881826,-1299149325,1576231659]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member3,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
function main:locator_bar/team_updated
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=3},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member3,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
execute at @e[type=armor_stand,tag=blue_member3,limit=1] run summon text_display ~ ~2.2 ~ {billboard:"center",see_through:0b,shadow:1b,background:0,Tags:["team_member_name","blue_member_name","blue_member3_name"],text:{text:""}}
data modify entity @e[type=text_display,tag=blue_member3_name,limit=1] text set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
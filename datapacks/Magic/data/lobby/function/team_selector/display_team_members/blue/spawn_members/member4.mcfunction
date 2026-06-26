## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 4
summon armor_stand -14.4 105.8 -19.3 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member4"],Pose:{Body:[-7.0f,0.0f,0.0f],Head:[-31.0f,-1.0f,6.0f],LeftArm:[317.0f,0.0f,348.0f],LeftLeg:[271.0f,349.0f,0.0f],RightArm:[349.0f,0.0f,19.0f],RightLeg:[274.0f,11.0f,0.0f]},DisabledSlots:4144959,Rotation:[0.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[1837636100,-345881826,-1299149325,1576231659]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member4,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=4},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member4,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
execute at @e[type=armor_stand,tag=blue_member4,limit=1] run summon text_display ~ ~2.2 ~ {billboard:"center",see_through:0b,shadow:1b,background:0,Tags:["team_member_name","blue_member_name","blue_member4_name"],text:{text:""}}
data modify entity @e[type=text_display,tag=blue_member4_name,limit=1] text set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
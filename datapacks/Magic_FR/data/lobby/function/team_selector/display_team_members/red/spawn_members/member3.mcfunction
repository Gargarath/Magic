## appelée par new_member lorsqu'on ajoute un membre à l'équipe rouge
# permet d'ajouter un membre au rouge

scoreboard players set @s red_member 3
summon armor_stand 8.9 105.34 -19.0 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","red_member","red_member3"],Pose:{Body:[0.0f,0.0f,0.0f],Head:[2.0f,338.0f,0.0f],LeftArm:[-7.0f,-95.0f,343.0f],LeftLeg:[286.0f,349.0f,0.0f],RightArm:[349.0f,0.0f,19.0f],RightLeg:[287.0f,11.0f,0.0f]},DisabledSlots:4144959,Rotation:[-7.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":11546150}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":11546150}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11546150}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[-428818668,-700757023,-1184048709,2036615993]}}}}}
data modify entity @e[type=armor_stand,tag=red_member3,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join red @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={red_member=3},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=red_member3,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
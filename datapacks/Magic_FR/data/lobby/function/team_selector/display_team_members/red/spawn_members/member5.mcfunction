## appelée par new_member lorsqu'on ajoute un membre à l'équipe rouge
# permet d'ajouter un membre au rouge

scoreboard players set @s red_member 5
summon armor_stand 10.17 108.5 -21.4 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","red_member","red_member5"],NoGravity:1b,Pose:{Body:[0.0f,0.0f,-7.0f],Head:[13.0f,357.0f,0.0f],LeftArm:[346.0f,0.0f,-120.0f],LeftLeg:[0.0f,0.0f,1.0f],RightArm:[316.0f,70.0f,0.0f],RightLeg:[0.0f,0.0f,29.0f]},DisabledSlots:4144959,Rotation:[0.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":11546150}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":11546150}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11546150}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[-428818668,-700757023,-1184048709,2036615993]}}}}}
data modify entity @e[type=armor_stand,tag=red_member5,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join red @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={red_member=5},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=red_member5,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 1
summon armor_stand -13 99 -20 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member1"],Pose:{Body:[-2.0f,0.0f,0.0f],Head:[-10.0f,20.0f,0.0f],LeftArm:[5.0f,0.0f,0.0f],LeftLeg:[0.0f,-10.0f,-4.0f],RightArm:[5.0f,0.0f,0.0f],RightLeg:[16.0f,2.0f,10.0f]},DisabledSlots:4144959,Rotation:[-23.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[-428818668,-700757023,-1184048709,2036615993]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member1,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=1},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member1,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
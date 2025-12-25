## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 2
summon armor_stand -13.54 104.9 -20.5 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member2"],Pose:{Body:[5.0f,0.0f,0.0f],Head:[16.0f,15.0f,5.0f],LeftArm:[-48.0f,0.0f,0.0f],LeftLeg:[-5.0f,0.0f,0.0f],RightArm:[-1.0f,0.0f,0.0f],RightLeg:[-6.0f,0.0f,0.0f]},DisabledSlots:4144959,Rotation:[-77.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[1837636100,-345881826,-1299149325,1576231659]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member2,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=2},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member2,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
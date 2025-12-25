## appelée par new_member lorsqu'on ajoute un membre à l'équipe bleue
# permet d'ajouter un membre au bleu

scoreboard players set @s blue_member 8
summon armor_stand -14 104.3 -21 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","blue_member","blue_member8"],Pose:{LeftArm:[317f,0f,348f],RightArm:[349f,0f,19f],LeftLeg:[271f,349f,0f],RightLeg:[277f,11f,0f],Head:[28f,357f,0f]},DisabledSlots:4144959,Rotation:[-23F,0F],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[1837636100,-345881826,-1299149325,1576231659]}}}}}
data modify entity @e[type=armor_stand,tag=blue_member8,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join blue @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={blue_member=8},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=blue_member8,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
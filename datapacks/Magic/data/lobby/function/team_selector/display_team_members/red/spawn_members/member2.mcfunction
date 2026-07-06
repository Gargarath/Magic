## appelée par new_member lorsqu'on ajoute un membre à l'équipe rouge
# permet d'ajouter un membre au rouge

scoreboard players set @s red_member 2
summon armor_stand 14.46 104.9 -20.5 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["team_member","red_member","red_member2"],Pose:{Body:[5.0f,0.0f,0.0f],Head:[16.0f,-15.0f,5.0f],RightArm:[-48.0f,0.0f,0.0f],LeftLeg:[-5.0f,0.0f,0.0f],LeftArm:[-1.0f,0.0f,0.0f],RightLeg:[-6.0f,0.0f,0.0f]},DisabledSlots:4144959,Rotation:[77.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":11546150}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":11546150}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11546150}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[-428818668,-700757023,-1184048709,2036615993]}}}}}
data modify entity @e[type=armor_stand,tag=red_member2,limit=1] equipment.head.components."minecraft:profile".id set from entity @s UUID

team join red @s
function main:locator_bar/team_updated
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={red_member=2},limit=1]"},"","",""]}}
data modify entity @e[type=armor_stand,tag=red_member2,limit=1] CustomName set from block 14 97 13 front_text.messages[0]
execute at @e[type=armor_stand,tag=red_member2,limit=1] run summon text_display ~ ~2.2 ~ {billboard:"center",see_through:0b,shadow:1b,background:0,Tags:["team_member_name","red_member_name","red_member2_name"],text:{text:""}}
data modify entity @e[type=text_display,tag=red_member2_name,limit=1] text set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# donne le nom de @s à la statue
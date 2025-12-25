## appelée par rien
# permet de setup les têtes


kill @e[tag=team_heads]
summon item_display -16 115 -21 {item_display:"head",Rotation:[180F,-10F],Tags:["team_heads","team_heads_blue","team_head_blue1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"id":[645728034,732187348,-1110453491,580683828]}}}}

execute as @a[tag=blue_team,sort=nearest,limit=1] run data modify entity @e[type=item_display,tag=team_head_blue1,limit=1] item.components."minecraft:profile".id set from entity @s UUID
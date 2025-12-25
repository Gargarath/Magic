# appelée par ctf:loop permet de summon des feus d'artifice sur les porteurs de drapeaux

execute at @s[tag=Has_Red_flag] run summon firework_rocket ~ ~20 ~ {Life:0,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680],fade_colors:[I;16711680]}]}}}}

execute at @s[tag=Has_Blue_flag] run summon firework_rocket ~ ~20 ~ {Life:0,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;855551],fade_colors:[I;855551]}]}}}}
scoreboard players set fireworks timer_fireworks 0
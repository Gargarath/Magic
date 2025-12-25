# appelée par lobby:loop lorsque @s a fini le jump

execute if score @s jump_test matches 2.. run tellraw @a [{"selector":"@s"},{"color":"yellow","text":" a terminé le jump en "},{"color":"gold","score":{"name":"@s","objective":"jump_test"}},{"color":"yellow","text":" tentatives !"}]
execute if score @s jump_test matches 1 run tellraw @a [{"selector":"@s"},{"color":"yellow","text":" a terminé le jump en "},{"color":"gold","score":{"name":"@s","objective":"jump_test"}},{"color":"yellow","text":" tentative !"}]
tp @s -25 100 0 90 8
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
scoreboard players set @s jump_test 1
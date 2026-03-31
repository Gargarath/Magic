# appelé par advancement:killed_boss quand un joueur (@s) tue un boss


tellraw @a[tag=display_killfeed] ["",{"selector":"@s"}," ",{"nbt":"death_cause.boss","storage":"ctf:killfeed",plain:true}," ",{"nbt":"bossname","storage":"ctf:killfeed","interpret":true}]
# indique que @s a tué le boss

scoreboard players add @s stat_killcount_boss 1
# ajoute une stat de kill de boss à @s

advancement revoke @s only main:killfeed/killer_boss

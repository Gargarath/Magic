# appelée par lobby:loop lorsque @s se sneak
# permet de voir si il peut rentrer dans l'arène

scoreboard players set @s lobby_sneak 1
execute unless entity @s[tag=in_opt_panel] if block ~ ~-1 ~ minecraft:barrier run function lobby:arena/join_arena/check_join
# appelée par spells:loop quand @s rentre dans la smoke

scoreboard players set @s in_smoke1 1
bossbar set smoke_bomb:blinded players @a[scores={in_smoke1=1}]
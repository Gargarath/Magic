$execute if score @s codex_class matches 1 if entity @s[tag=warrior] run scoreboard players operation @s codex_level = @s $(category)
$execute if score @s codex_class matches 2 if entity @s[tag=archer] run scoreboard players operation @s codex_level = @s $(category)
$execute if score @s codex_class matches 3 if entity @s[tag=mage] run scoreboard players operation @s codex_level = @s $(category)
$execute if score @s codex_class matches 4 if entity @s[tag=rogue] run scoreboard players operation @s codex_level = @s $(category)
execute if score @s codex_level matches ..0 run scoreboard players set @s codex_level 1
execute if score @s codex_level > @s codex_max_level run scoreboard players operation @s codex_level = @s codex_max_level

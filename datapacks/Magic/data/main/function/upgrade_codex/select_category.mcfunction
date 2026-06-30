$scoreboard players set @s codex_category $(id)
scoreboard players set @s codex_level 1
$scoreboard players set @s codex_max_level $(max)
scoreboard players set @s upgrade_codex 0
$execute unless score @s codex_category matches 1 run function main:upgrade_codex/select_current_level {category:"$(category)"}
function main:upgrade_codex/resolve_selected

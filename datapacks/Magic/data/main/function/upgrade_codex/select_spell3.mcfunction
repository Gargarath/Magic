scoreboard players set @s codex_category 5
scoreboard players set @s codex_level 1
scoreboard players set @s codex_max_level 1
execute if score @s codex_class matches 2 run scoreboard players set @s codex_max_level 3
function main:upgrade_codex/select_current_level {category:"spell3"}
function main:upgrade_codex/resolve_selected

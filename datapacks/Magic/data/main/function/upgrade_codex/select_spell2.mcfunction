scoreboard players set @s codex_category 4
scoreboard players set @s codex_level 1
scoreboard players set @s codex_max_level 3
execute if score @s codex_class matches 4 run scoreboard players set @s codex_max_level 1
function main:upgrade_codex/select_current_level {category:"spell2"}
function main:upgrade_codex/resolve_selected

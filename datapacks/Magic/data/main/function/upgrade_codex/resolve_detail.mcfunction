data modify storage temp:codex request set value {}
$data modify storage temp:codex request.class set value "$(class)"
$data modify storage temp:codex request.category set value "$(category)"
data modify storage temp:codex request.suffix set value "w"
execute if score @s codex_class matches 2 run data modify storage temp:codex request.suffix set value "a"
execute if score @s codex_class matches 3 run data modify storage temp:codex request.suffix set value "m"
execute if score @s codex_class matches 4 run data modify storage temp:codex request.suffix set value "r"
execute store result storage temp:codex request.level int 1 run scoreboard players get @s codex_level
function main:upgrade_codex/build_detail with storage temp:codex request

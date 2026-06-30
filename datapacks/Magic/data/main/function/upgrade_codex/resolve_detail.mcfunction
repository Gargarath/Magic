data modify storage temp:codex request set value {}
$data modify storage temp:codex request.class set value "$(class)"
$data modify storage temp:codex request.category set value "$(category)"
execute store result storage temp:codex request.level int 1 run scoreboard players get @s codex_level
function main:upgrade_codex/build_detail with storage temp:codex request

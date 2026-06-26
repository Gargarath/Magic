## appelée par sorting_clock quand le tri est fini
## permet clear les score vide

execute unless entity @a[scores={sort_arena_killcount=1}] run data modify storage minecraft:gui arena.score.rank1.name set value ""
execute unless entity @a[scores={sort_arena_killcount=1}] run data modify storage minecraft:gui arena.score.rank1.score set value ""

execute unless entity @a[scores={sort_arena_killcount=2}] run data modify storage minecraft:gui arena.score.rank2.name set value ""
execute unless entity @a[scores={sort_arena_killcount=2}] run data modify storage minecraft:gui arena.score.rank2.score set value ""

execute unless entity @a[scores={sort_arena_killcount=3}] run data modify storage minecraft:gui arena.score.rank3.name set value ""
execute unless entity @a[scores={sort_arena_killcount=3}] run data modify storage minecraft:gui arena.score.rank3.score set value ""

execute unless entity @a[scores={sort_arena_killcount=4}] run data modify storage minecraft:gui arena.score.rank4.name set value ""
execute unless entity @a[scores={sort_arena_killcount=4}] run data modify storage minecraft:gui arena.score.rank4.score set value ""

execute unless entity @a[scores={sort_arena_killcount=5}] run data modify storage minecraft:gui arena.score.rank5.name set value ""
execute unless entity @a[scores={sort_arena_killcount=5}] run data modify storage minecraft:gui arena.score.rank5.score set value ""

execute unless entity @a[scores={sort_arena_killcount=6}] run data modify storage minecraft:gui arena.score.rank6.name set value ""
execute unless entity @a[scores={sort_arena_killcount=6}] run data modify storage minecraft:gui arena.score.rank6.score set value ""

execute unless entity @a[scores={sort_arena_killcount=7}] run data modify storage minecraft:gui arena.score.rank7.name set value ""
execute unless entity @a[scores={sort_arena_killcount=7}] run data modify storage minecraft:gui arena.score.rank7.score set value ""

execute unless entity @a[scores={sort_arena_killcount=8}] run data modify storage minecraft:gui arena.score.rank8.name set value ""
execute unless entity @a[scores={sort_arena_killcount=8}] run data modify storage minecraft:gui arena.score.rank8.score set value ""

execute unless entity @a[scores={sort_arena_killcount=9}] run data modify storage minecraft:gui arena.score.rank9.name set value ""
execute unless entity @a[scores={sort_arena_killcount=9}] run data modify storage minecraft:gui arena.score.rank9.score set value ""

execute unless entity @a[scores={sort_arena_killcount=10}] run data modify storage minecraft:gui arena.score.rank10.name set value ""
execute unless entity @a[scores={sort_arena_killcount=10}] run data modify storage minecraft:gui arena.score.rank10.score set value ""

execute unless entity @a[scores={sort_arena_killcount=11}] run data modify storage minecraft:gui arena.score.rank11.name set value ""
execute unless entity @a[scores={sort_arena_killcount=11}] run data modify storage minecraft:gui arena.score.rank11.score set value ""

execute unless entity @a[scores={sort_arena_killcount=12}] run data modify storage minecraft:gui arena.score.rank12.name set value ""
execute unless entity @a[scores={sort_arena_killcount=12}] run data modify storage minecraft:gui arena.score.rank12.score set value ""


scoreboard players set $sorting sort_arena_killcount 0
# indique que le tri est fini
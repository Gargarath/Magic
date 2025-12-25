## appelée par bossfight_loop
## permet de reset l'aggro du golem

attribute @s minecraft:follow_range base set 0
data merge entity @s {AngerTime:0, angry_at:[I;0,0,0,0], last_hurt_by_player:[], last_hurt_by_mob:[]}


tag @a remove target
execute positioned -519 146 -111 if entity @s[distance=..3] run function ctf:secondary_objectives/bossfight/ruin_map/ai/freeze_golem
execute positioned -519 146 -111 unless entity @s[distance=..3] run schedule function ctf:secondary_objectives/bossfight/ruin_map/ai/go_to_middle 5t
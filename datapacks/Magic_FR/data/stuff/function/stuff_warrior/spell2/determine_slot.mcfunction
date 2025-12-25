## appelé par stuff_warrior ou par le sort si no_cooldowns
## donne son sort à @s selon son numéro de slot

execute as @s[scores={spell2_slot_w=0}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot0
execute as @s[scores={spell2_slot_w=1}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot1
execute as @s[scores={spell2_slot_w=2}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot2
execute as @s[scores={spell2_slot_w=3}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot3
execute as @s[scores={spell2_slot_w=4}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot4
execute as @s[scores={spell2_slot_w=5}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot5
execute as @s[scores={spell2_slot_w=6}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot6
execute as @s[scores={spell2_slot_w=7}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot7
execute as @s[scores={spell2_slot_w=8}] unless score @s timer_rally_flag matches 1.. run function stuff:stuff_warrior/spell2/slot8
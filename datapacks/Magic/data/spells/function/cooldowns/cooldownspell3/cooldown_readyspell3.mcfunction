## appelée par cooldownspell3_clock

tag @s remove save_inventory
scoreboard players set @s cooldown3_clock -1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
execute as @s[tag=warrior] run function spells:cooldowns/warrior/cooldown_ready_spell3
execute as @s[tag=archer] run function spells:cooldowns/archer/cooldown_ready_spell3
execute as @s[tag=mage] run function spells:cooldowns/mage/cooldown_ready_spell3
execute as @s[tag=rogue] run function spells:cooldowns/rogue/cooldown_ready_spell3
tag @s add save_inventory
## appelée par cooldownspell1_clock

scoreboard players set @s cooldown1_clock -1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
execute as @s[tag=warrior] run function spells:cooldowns/warrior/cooldown_ready_spell1
execute as @s[tag=archer] run function spells:cooldowns/archer/cooldown_ready_spell1
execute as @s[tag=mage] run function spells:cooldowns/mage/cooldown_ready_spell1
execute as @s[tag=rogue] run function spells:cooldowns/rogue/cooldown_ready_spell1
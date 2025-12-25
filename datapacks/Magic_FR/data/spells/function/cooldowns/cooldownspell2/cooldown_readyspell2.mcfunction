## appelée par cooldownspell2_clock

scoreboard players set @s cooldown2_clock -1
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
execute as @s[tag=warrior] run function spells:cooldowns/warrior/cooldown_ready_spell2
execute as @s[tag=archer] run function spells:cooldowns/archer/cooldown_ready_spell2
execute as @s[tag=mage] run function spells:cooldowns/mage/cooldown_ready_spell2
execute as @s[tag=rogue] run function spells:cooldowns/rogue/cooldown_ready_spell2
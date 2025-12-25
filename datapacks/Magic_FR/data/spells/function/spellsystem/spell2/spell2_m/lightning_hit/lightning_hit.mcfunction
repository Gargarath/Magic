# appelée par spells:loop 
# permet de faire l'effet de la tempête de foudre I à celui qui est dedans depuis trop longtemps selon la tempête dans laquelle il se trouve

execute if entity @s[tag=player1_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player1
execute if entity @s[tag=player2_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player2
execute if entity @s[tag=player3_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player3
execute if entity @s[tag=player4_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player4
execute if entity @s[tag=player5_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player5
execute if entity @s[tag=player6_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player6
execute if entity @s[tag=player7_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player7
execute if entity @s[tag=player8_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player8
execute if entity @s[tag=player9_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player9
execute if entity @s[tag=player10_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player10
execute if entity @s[tag=player11_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player11
execute if entity @s[tag=player12_cloud] as @a[scores={in_cloud=10..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player12

execute if entity @s[tag=player1_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player1
execute if entity @s[tag=player2_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player2
execute if entity @s[tag=player3_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player3
execute if entity @s[tag=player4_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player4
execute if entity @s[tag=player5_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player5
execute if entity @s[tag=player6_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player6
execute if entity @s[tag=player7_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player7
execute if entity @s[tag=player8_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player8
execute if entity @s[tag=player9_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player9
execute if entity @s[tag=player10_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player10
execute if entity @s[tag=player11_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player11
execute if entity @s[tag=player12_cloud] as @e[type=#boss,scores={in_cloud=35..}] run function spells:spellsystem/spell2/spell2_m/lightning_hit/player12
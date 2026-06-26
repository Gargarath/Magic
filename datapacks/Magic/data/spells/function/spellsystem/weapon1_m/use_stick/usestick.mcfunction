# appelée par spells:loop lorsque @s clique avec le baton de mage
# permet de lancer un sort de base selon le niveau de baton de @s

scoreboard players set @s usespell 0
# reset le fait que @s est cliqué sur le baton

scoreboard players set @s weapon1_range_m 0
# rest la distance du dernier tir de @s

execute if score @s weapon1 matches 1 if score @s weapon1_mana_m matches 90.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 2 if score @s weapon1_mana_m matches 90.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 3 if score @s weapon1_mana_m matches 85.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 4 if score @s weapon1_mana_m matches 85.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 5 if score @s weapon1_mana_m matches 80.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 6 if score @s weapon1_mana_m matches 75.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 7 if score @s weapon1_mana_m matches 70.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 8 if score @s weapon1_mana_m matches 65.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 9 if score @s weapon1_mana_m matches 65.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
execute if score @s weapon1 matches 10 if score @s weapon1_mana_m matches 55.. run function spells:spellsystem/weapon1_m/use_stick/stickspell/start_spell
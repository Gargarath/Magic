# actualise la barre de mana de @s en fonction de son score

execute if score $no_cooldowns option_panel matches 0 run scoreboard players add @s[scores={weapon1_mana_m=..99}] weapon1_mana_m 1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players add @s[scores={weapon1_mana_m=..90}] weapon1_mana_m 10
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s[scores={weapon1_mana_m=91..}] weapon1_mana_m 100
execute if score @s weapon1_mana_m matches 0..9 run function spells:spellsystem/weapon1_m/refresh_timer/0-9
execute if score @s weapon1_mana_m matches 10..19 run function spells:spellsystem/weapon1_m/refresh_timer/10-19
execute if score @s weapon1_mana_m matches 20..29 run function spells:spellsystem/weapon1_m/refresh_timer/20-29
execute if score @s weapon1_mana_m matches 30..39 run function spells:spellsystem/weapon1_m/refresh_timer/30-39
execute if score @s weapon1_mana_m matches 40..49 run function spells:spellsystem/weapon1_m/refresh_timer/40-49
execute if score @s weapon1_mana_m matches 50..59 run function spells:spellsystem/weapon1_m/refresh_timer/50-59
execute if score @s weapon1_mana_m matches 60..69 run function spells:spellsystem/weapon1_m/refresh_timer/60-69
execute if score @s weapon1_mana_m matches 70..79 run function spells:spellsystem/weapon1_m/refresh_timer/70-79
execute if score @s weapon1_mana_m matches 80..89 run function spells:spellsystem/weapon1_m/refresh_timer/80-89
execute if score @s weapon1_mana_m matches 90..99 run function spells:spellsystem/weapon1_m/refresh_timer/90-99
execute if score @s weapon1_mana_m matches 100.. run function spells:spellsystem/weapon1_m/refresh_timer/100

function main:gui/display/refresh_gui
# actualise le gui
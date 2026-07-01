# appelée par lobby:loop quand @s meurt dans l'arène

tag @s add respawn

scoreboard players set @s IsAlive 0
# clear le compteur de mort

execute if score @s killfeed_died_checked < @s killfeed_died run function main:killfeed/not_another_entity/_determine_how_died
# si le killfeed n'a pas déterminé comment @s est mort (donc pas par une autre entité) -> determine comment il est mort

execute if score @s using_berzerk matches 1.. run scoreboard players set @s using_berzerk 0
# si @s était en berzerk, l'annule

execute if score @s thunderstrm_time matches 0.. run function spells:spellsystem/spell2/spell2_m/die_with_thunderstorm
# si @s avait une tempête de foudre -> l'annule

execute if score @s freeze matches 0.. run function spells:spellsystem/spell3/spell3_a/stop_freeze
# si @s était gelé -> l'annule

execute if score @s burning matches 0.. run function spells:spellsystem/spell1/spell1_m/remove_fire
# si @s était brulé -> l'annule

tag @s remove in_explo1
tag @s remove in_explo2
tag @s remove in_explo3
tag @s remove in_explo4
tag @s remove in_explo5
tag @s remove in_explo6
tag @s remove in_explo7
tag @s remove in_explo8
tag @s remove in_explo9
tag @s remove in_explo10
tag @s remove in_explo11
tag @s remove in_explo12
# si @s était sous explo -> l'annule

clear @s minecraft:tipped_arrow
execute unless entity @s[tag=!Has_explosive_arrow] unless entity @s[tag=!Has_freeze_arrow] run scoreboard players set @s shotarrow 1
execute as @s[tag=Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/usedexplosivearrow_a
execute as @s[tag=Has_freeze_arrow] run function spells:spellsystem/spell3/spell3_a/usedfreezearrow_a
# si @s a la flèche explo, la flèche de glace ou les deux, lui enlève

execute as @s[tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# si @s est invisible, lui enlève
execute if entity @s[tag=have_backup_r] run function spells:spellsystem/spell2/spell2_r/killbackup_r
# si @s possède une voie des ombres -> la détruit


scoreboard players set @s in_fight 0
scoreboard players set @s out_of_fight 301
# indique que @s n'est plus en fight

execute if score @s in_trap_number matches 1.. run function spells:spellsystem/spell2/spell2_a/respawn_dead_in_trap
# si @s est mort dans un piege reset le piege en question

execute if score @s hooked_by_player matches 1.. run function spells:spellsystem/spell3/spell3_w/hook/respawn_dead_in_hook
# si @s est mort dans un hook reset le statut hook

execute if entity @s[tag=is_hooking] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/testplayer
# si @s a un hook -> reset le hook

execute if score @s timer_rally_flag matches 0.. run function spells:spellsystem/spell2/spell2_w/summon_flag/destroy_flag/testplayer
# si @s a déjà le drapeau de ralliement -> le reset

execute as @s[tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# si @s est invisible, lui enlève
execute if entity @s[tag=have_backup_r] run function spells:spellsystem/spell2/spell2_r/killbackup_r
# si @s possède une voie des ombres -> la détruit

tag @s remove killed_by_hand
# enlève le truc qui dit que @s est mort par une arme

scoreboard players set @s cooldownspell1 3
scoreboard players set @s[tag=!archer] cooldownspell2 3
scoreboard players set @s cooldownspell3 3

scoreboard players set @s cooldown1_clock 20
scoreboard players set @s[tag=!archer] cooldown2_clock 20
scoreboard players set @s cooldown3_clock 20

scoreboard players set @s[tag=mage] weapon1_max_range_m 45
scoreboard players set @s weapon1_mana_m 100
function spells:spellsystem/weapon1_m/refresh_timer/check_timer
# actualise la barre de mana de @s

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock -1
# si on est en mode 0 cooldown -> met tout les CD à -1

clear @s minecraft:tipped_arrow
execute unless entity @s[tag=!Has_explosive_arrow] unless entity @s[tag=!Has_freeze_arrow] run scoreboard players set @s shotarrow 1
execute as @s[tag=Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/usedexplosivearrow_a
execute as @s[tag=Has_freeze_arrow] run function spells:spellsystem/spell3/spell3_a/usedfreezearrow_a
# si @s a la flèche explo, la flèche de glace ou les deux, lui enlève
execute if score @s in_trap_number matches 1.. run function spells:spellsystem/spell2/spell2_a/respawn_dead_in_trap
# si @s est mort dans un piege reset le piege en question


effect give @s minecraft:instant_health 1 10 true
function main:effects/refresh_persistent
# donne la regen à @s

scoreboard players set @s in_fight 0
scoreboard players set @s out_of_fight 301
# indique que @s n'est plus en fight

function lobby:arena/leaderboard/refresh_leaderboard
# refresh le classement


tag @s remove save_inventory
tag @s add inventory_rebuilding
function main:items_positions/cleanup_managed_items
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

function lobby:arena/respawn/respawn_at_good_spot

tag @s remove respawn

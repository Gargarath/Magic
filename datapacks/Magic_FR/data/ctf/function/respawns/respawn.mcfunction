# appelée par ctf:loop permet a celui qui est mort sans drapeau de reset ses scores isAlive et de regagner ses pv

execute if score @s killfeed_died_checked < @s killfeed_died run function ctf:killfeed/not_another_entity/_determine_how_died
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
effect give @s minecraft:instant_health 1 10 true
effect give @s[tag=!rogue] minecraft:regeneration infinite 0 true
effect give @s[tag=rogue] minecraft:regeneration infinite 1 true
# donne la regen à @s

scoreboard players set @s in_fight 0
scoreboard players set @s out_of_fight 301
# indique que @s n'est plus en fight

scoreboard players set @s IsAlive 0

execute if score @s in_trap_number matches 1.. run function spells:spellsystem/spell2/spell2_a/respawn_dead_in_trap
# si @s est mort dans un piege reset le piege en question

execute if score @s hooked_by_player matches 1.. run function spells:spellsystem/spell3/spell3_w/hook/respawn_dead_in_hook
# si @s est mort dans un hook reset le statut de hook

execute if entity @s[tag=is_hooking] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/end_hook_player/testplayer
# si @s a un hook -> reset le hook


team join respawn_blue @s[team=blue]
team join respawn_red @s[team=red]
# fait passer @s dans l"équipe des morts

execute if entity @s[tag=targetable] run tag @s remove targetable
# enleve le tag targetable (peut etre visé par la liche) de @s si il l'a


execute if entity @s[team=respawn_blue] run function ctf:respawns/calculate_respawn_time_blue
execute if entity @s[team=respawn_red] run function ctf:respawns/calculate_respawn_time_red
# calcule le temps de respawn selon l'équipe d'@s


tag @s remove killed_by_hand
# enlève le truc qui dit que @s est mort par une arme
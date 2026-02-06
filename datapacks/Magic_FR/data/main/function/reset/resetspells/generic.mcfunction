## appelée par resetspells/resetspells
## permet de reset les spells du joueur selon son numéro de joueur


## GUERRIER

# Spell1
scoreboard players set @s using_berzerk -1
effect clear @s minecraft:strength
effect clear @s minecraft:speed
attribute @s minecraft:max_health modifier remove berzerk
attribute @s minecraft:armor modifier remove berzerk
attribute @s minecraft:armor_toughness modifier remove berzerk

# Spell2
function spells:spellsystem/spell2/spell2_w/summon_flag/destroy_flag/testplayer

# Spell3
scoreboard players set @s hooked_w -1
scoreboard players set @s is_hooking_w -1
scoreboard players reset @s hooked_by_player
scoreboard players reset @s hook_max_range_w
scoreboard players set @s hooked_w -1
tag @s remove is_hooking
tag @s remove hook_breaked
tag @s remove is_hooking

## ARCHER

tag @s remove Has_explosive_arrow
tag @s remove Has_freeze_arrow
scoreboard players set @s shotarrow 0
scoreboard players set @s arrow_cooldown -1
clear @s minecraft:tipped_arrow
execute unless entity @s[tag=!Has_explosive_arrow] unless entity @s[tag=!Has_freeze_arrow] run scoreboard players set @s shotarrow 1
scoreboard players operation @s arrow = @s maxarrow

execute if score @s jump_crouch_time_a matches 0.. run function spells:spellsystem/jump_a/reduce_jump_boost/remove_jump_boost

# Spell1

scoreboard players reset @s hit_by_explo
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
tag @s remove get_exploded

scoreboard players set @s explosive_arrow_timer -1

tag @s remove freeze_arrow
# si @s devient une fleche de glace explo

# Spell2
scoreboard players set @s trapped -1
tag @s remove launching_trap_a

function spells:spellsystem/spell2/spell2_a/reset_trap

# Spell3
execute if score @s freeze matches 0.. run function spells:spellsystem/spell3/spell3_a/stop_freeze
# si @s était gelé -> l'annule


## MAGE
scoreboard players set @s weapon1_mana_m 100

# Spell1
execute if score @s burning matches 0.. run function spells:spellsystem/spell1/spell1_m/remove_fire
# si @s était brulé -> l'annule

# Spell2
scoreboard players set @s in_cloud1 0
scoreboard players set @s in_cloud2 0
scoreboard players set @s in_cloud3 0
execute if score @s thunderstrm_time matches 0.. run function spells:spellsystem/spell2/spell2_m/reset_thunderstorm
# si @s avait une tempête de foudre -> l'annule

# Spell3
scoreboard players set @s can_tp_m 0


## ASSASSIN

# Spell1
scoreboard players set @s dmgtaken 0
scoreboard players set @s dealdmg 0
scoreboard players set @s is_sneaking -1
scoreboard players set @s is_sprinting -1
scoreboard players set @s loud_bar -1
tag @s remove invisibility_r
effect clear @s minecraft:invisibility
effect clear @s minecraft:strength
effect clear @s minecraft:speed

scoreboard players set @s using_ambush -1

# Spell2
scoreboard players set @s timer_backup_r -1
scoreboard players set @s backup_number_r 0
tag @s remove have_backup_r

# Spell3

scoreboard players set @s in_smoke1 -1
effect clear @s minecraft:blindness



## SPELL SPECIFIC
execute if score @s Player matches 1 run function main:reset/resetspells/player1
execute if score @s Player matches 2 run function main:reset/resetspells/player2
execute if score @s Player matches 3 run function main:reset/resetspells/player3
execute if score @s Player matches 4 run function main:reset/resetspells/player4
execute if score @s Player matches 5 run function main:reset/resetspells/player5
execute if score @s Player matches 6 run function main:reset/resetspells/player6
execute if score @s Player matches 7 run function main:reset/resetspells/player7
execute if score @s Player matches 8 run function main:reset/resetspells/player8
execute if score @s Player matches 9 run function main:reset/resetspells/player9
execute if score @s Player matches 10 run function main:reset/resetspells/player10
execute if score @s Player matches 11 run function main:reset/resetspells/player11
execute if score @s Player matches 12 run function main:reset/resetspells/player12


# reset detection clique droit
scoreboard players set @s usespell 0

# reset cooldown
scoreboard players set @s cooldownspell1 -1
scoreboard players set @s cooldownspell2 -1
scoreboard players set @s cooldownspell3 -1
scoreboard players set @s cooldown1_clock -1
scoreboard players set @s cooldown2_clock -1
scoreboard players set @s cooldown3_clock -1

## reset stun
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:knockback_resistance base reset

# reset pour le killfeed
scoreboard players set @s last_caster 0
tag @s remove killer
tag @s remove same_team
tag @s remove temp
tag @s remove self_target



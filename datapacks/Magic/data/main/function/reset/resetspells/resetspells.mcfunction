# Commande qui permet de reset tout ce qui est lié à un sort appelé par main:reset/resetplayer et autres


                    ### CLEAR INDIVIDUELS

execute as @a[scores={Player=1..}] run function main:reset/resetspells/generic


                    ### CLEAR GENERAUX
## GUERRIER

# Spell1

# Spell2
kill @e[tag=rally_flag]
kill @e[tag=rally_flag_model]


# Spell3

kill @e[tag=hook_w]


## ARCHER

kill @e[type=marker,tag=arrow_rotation]
scoreboard players set $count arrow_rotation 0
# clear les calculs de position des flèches


# Spell1
execute as @e[type=marker,tag=exploraycast] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow
kill @e[type=text_display,tag=explo_player_timer]

# Spell2

kill @e[type=armor_stand,tag=trap_launcher]
kill @e[type=marker,tag=direction]
kill @e[tag=trap]


# Spell3


## MAGE

# Spell1

# Spell2

# Spell3


## ASSASSIN

# Spell1

# Spell2

kill @e[tag=backup_r]

# Spell3
kill @e[type=lingering_potion,tag=smoke_bomb]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb]
# reset le système de bombe d'ombre

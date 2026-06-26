## appelée par resetspells/resetspells
## permet de reset les spells du joueur 4

## GUERRIER

# Spell1

bossbar set berzerk:player4 players

# Spell2

# Spell3

kill @e[tag=hook_w_player4]


bossbar set hooked:player4 players
bossbar set hook_someone:player4 players

## ARCHER


# Spell1
function spells:spellsystem/spell1/spell1_a/reset/player4
# clear la explosive arrow

execute as @e[type=arrow,scores={arrow_owner=4}] run function spells:arrow_detection/clear_ground_arrow

# Spell2
execute as @e[type=armor_stand,tag=trap_launcher,scores={trap_launcher=4}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap
execute as @e[tag=trap,scores={trap_number_a=4}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap

bossbar set trapped:player4 players
bossbar set trapped_someone:player4 players

# Spell3

bossbar set frozen:player4 players

## MAGE


# Spell1
bossbar set burning:player4 players

# Spell2


# Spell3


## ASSASSIN

# Spell1
bossbar set ambush:player4 players

# Spell2
execute as @e[tag=backup_r,scores={backup_number_r=4}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

# Spell3

kill @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player4:1b}}}}]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_player4]
scoreboard players set player4 has_smoke_potion -1
bossbar set smoke_bomb:player4 players
bossbar set smoke_bomb:blinded_player4 players
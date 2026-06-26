## appelée par resetspells/resetspells
## permet de reset les spells du joueur 12

## GUERRIER

# Spell1

bossbar set berzerk:player12 players

# Spell2

# Spell3

kill @e[tag=hook_w_player12]


bossbar set hooked:player12 players
bossbar set hook_someone:player12 players

## ARCHER


# Spell1
function spells:spellsystem/spell1/spell1_a/reset/player12
# clear la explosive arrow

execute as @e[type=arrow,scores={arrow_owner=12}] run function spells:arrow_detection/clear_ground_arrow

# Spell2
execute as @e[type=armor_stand,tag=trap_launcher,scores={trap_launcher=12}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap
execute as @e[tag=trap,scores={trap_number_a=12}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap

bossbar set trapped:player12 players
bossbar set trapped_someone:player12 players

# Spell3

bossbar set frozen:player12 players

## MAGE


# Spell1
bossbar set burning:player12 players

# Spell2


# Spell3


## ASSASSIN

# Spell1
bossbar set ambush:player12 players

# Spell2
execute as @e[tag=backup_r,scores={backup_number_r=12}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

# Spell3

kill @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player12:1b}}}}]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_player12]
scoreboard players set player12 has_smoke_potion -1
bossbar set smoke_bomb:player12 players
bossbar set smoke_bomb:blinded_player12 players
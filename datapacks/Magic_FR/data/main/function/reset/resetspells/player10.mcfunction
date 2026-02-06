## appelée par resetspells/resetspells
## permet de reset les spells du joueur 10

## GUERRIER

# Spell1

bossbar set berzerk:player10 players

# Spell2

# Spell3

kill @e[tag=hook_w_player10]


bossbar set hooked:player10 players
bossbar set hook_someone:player10 players

## ARCHER


# Spell1
function spells:spellsystem/spell1/spell1_a/reset/player10
# clear la explosive arrow

execute as @e[type=arrow,scores={arrow_owner=10}] run function spells:arrow_detection/clear_ground_arrow

# Spell2
execute as @e[type=armor_stand,tag=trap_launcher,scores={trap_launcher=10}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap
execute as @e[tag=trap,scores={trap_number_a=10}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap

bossbar set trapped:player10 players
bossbar set trapped_someone:player10 players

# Spell3

bossbar set frozen:player10 players

## MAGE


# Spell1
bossbar set burning:player10 players

# Spell2


# Spell3


## ASSASSIN

# Spell1
bossbar set ambush:player10 players

# Spell2
execute as @e[tag=backup_r,scores={backup_number_r=10}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

# Spell3

kill @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player10:1b}}}}]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_player10]
scoreboard players set player10 has_smoke_potion -1
bossbar set smoke_bomb:player10 players
## appelée par resetspells/resetspells
## permet de reset les spells du joueur 2

## GUERRIER

# Spell1

bossbar set berzerk:player2 players

# Spell2

# Spell3

kill @e[tag=hook_w_player2]


bossbar set hooked:player2 players
bossbar set hook_someone:player2 players

## ARCHER


# Spell1
function spells:spellsystem/spell1/spell1_a/reset/player2
# clear la explosive arrow

execute as @e[type=arrow,scores={arrow_owner=2}] run function spells:arrow_detection/clear_ground_arrow

# Spell2
execute as @e[type=armor_stand,tag=trap_launcher,scores={trap_launcher=2}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap
execute as @e[tag=trap,scores={trap_number_a=2}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap

bossbar set trapped:player2 players
bossbar set trapped_someone:player2 players

# Spell3

bossbar set frozen:player2 players

## MAGE


# Spell1
bossbar set burning:player2 players

# Spell2


# Spell3


## ASSASSIN

# Spell1
bossbar set ambush:player2 players

# Spell2
execute as @e[tag=backup_r,scores={backup_number_r=2}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

# Spell3

kill @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player2:1b}}}}]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_player2]
scoreboard players set player2 has_smoke_potion -1
bossbar set smoke_bomb:player2 players
bossbar set smoke_bomb:blinded_player2 players
## appelée par resetspells/resetspells
## permet de reset les spells du joueur 3

## GUERRIER

# Spell1

bossbar set berzerk:player3 players

# Spell2

# Spell3

kill @e[tag=hook_w_player3]


bossbar set hooked:player3 players
bossbar set hook_someone:player3 players

## ARCHER


# Spell1
function spells:spellsystem/spell1/spell1_a/reset/player3
# clear la explosive arrow

execute as @e[type=arrow,scores={arrow_owner=3}] run function spells:arrow_detection/clear_ground_arrow

# Spell2
execute as @e[type=armor_stand,tag=trap_launcher,scores={trap_launcher=3}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap
execute as @e[tag=trap,scores={trap_number_a=3}] at @s run function spells:spellsystem/spell2/spell2_a/kill_trap

bossbar set trapped:player3 players
bossbar set trapped_someone:player3 players

# Spell3

bossbar set frozen:player3 players

## MAGE


# Spell1
bossbar set burning:player3 players

# Spell2


# Spell3


## ASSASSIN

# Spell1
bossbar set ambush:player3 players

# Spell2
execute as @e[tag=backup_r,scores={backup_number_r=3}] at @s run function spells:spellsystem/spell2/spell2_r/kill_backup

# Spell3

kill @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player3:1b}}}}]
kill @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_player3]
scoreboard players set player3 has_smoke_potion -1
bossbar set smoke_bomb:player3 players
# appelée par spells/spellsystem/spell2/spell2_a/gettrappedX avec X=1..3    Permet à @s de lancer son cd de spell et d'avoir un signal sonore pour signaler quelqu'un a marché dans son trap

execute at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 100 1

execute unless score @a[scores={in_trap_number=10},limit=1] health <= $6 numbers run scoreboard players add @s stat_spell_dmg 60
# si la cible a suffisament de pv ajoute les stats de dégats du sort au lanceur
execute as @a[scores={in_trap_number=10},limit=1] if score @s health <= $6 numbers run function main:stats/multiply_health_by_10
execute if score @a[scores={in_trap_number=10},limit=1] health <= $6 numbers run scoreboard players operation @s stat_spell_dmg += @a[scores={in_trap_number=10},limit=1] health_x10
# si la cible n'a pas suffisament de pv calcule combien de dégats le lanceur à réellement infligé

scoreboard players add @s stat_ppl_trapped 1
# ajoute 1 au score de joueurs piégé de @s

$bossbar set trapped_someone:player10 name ["",{"selector":"@a[scores={in_trap_number=10},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_someone)","bold":true,"color":"dark_green"}]
bossbar set trapped_someone:player10 max 80
bossbar set trapped_someone:player10 value 80
bossbar set trapped_someone:player10 players @s
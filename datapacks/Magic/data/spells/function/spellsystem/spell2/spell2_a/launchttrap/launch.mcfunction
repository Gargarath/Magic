# Exécuté quand le joueur “tire” un piège (clic droit / item / spell)
# On se place à hauteur des yeux, orienté comme le joueur

tag @s add launching_trap_a

execute at @s run playsound minecraft:entity.armor_stand.hit master @a[distance=..10] ~ ~ ~ 100 2

execute anchored eyes positioned 0.0 0 0.0 run summon marker ^ ^ ^0.35 {Tags:["direction"]}
execute rotated as @s run summon armor_stand ~ ~1 ~ {NoGravity:0b,Small:1b,Marker:0b,Invisible:1b,PersistenceRequired:1b,Motion:[0.0,0.0,0.0],Tags:["trap_launcher"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:purpur_slab",count:1}}}

scoreboard players operation @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] trap_launcher = @s Player
scoreboard players operation @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] spell2 = @s spell2
execute if entity @s[tag=blue_team,tag=!no_team] run tag @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] add blue_owner
execute if entity @s[tag=red_team,tag=!no_team] run tag @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] add red_owner
execute if entity @s[tag=no_team] run tag @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] add no_team_owner
# store les infos du joueur de @s dans l'armor_stand

data modify entity @e[type=armor_stand,tag=trap_launcher,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1,sort=nearest] Pos
data modify entity @e[type=armor_stand,tag=trap_launcher,limit=1,sort=nearest] Motion[1] set value 0.3d
# donne un x et z en motion en fonction de la rotation de @s et force la motion Y pour 0,5

kill @e[type=marker,tag=direction]

# On s’assure que le tick tourne
function spells:spellsystem/spell2/spell2_a/launchttrap/loop
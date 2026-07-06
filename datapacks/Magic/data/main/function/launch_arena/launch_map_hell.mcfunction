## Appelée au lancement d'une partie FFA sur Enfer

function lobby:arena/setup_respawn_points
# réutilise les 13 points de respawn de l'arène du lobby

spawnpoint @a[scores={Player=-1}] -7 77 18 206 5
execute if score shop enable_loop matches 0 as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/hell
execute if score shop enable_loop matches 0 run tp @a[scores={Player=-1}] @r[scores={Player=1..}]

function main:launch_arena/setup_bossbar

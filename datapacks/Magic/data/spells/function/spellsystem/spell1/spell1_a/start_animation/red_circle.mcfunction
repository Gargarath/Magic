## appelée par start_animation/playerX
# permet d'afficher un cercle vert

# ===== Sphere wireframe R=10 (3 rings) =====
# Astuce visibilité : count=6 (au lieu de 1)

# --- Ring XZ (y=0) ---
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~10.0 ~0.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~9.7 ~0.0 ~2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~8.7 ~0.0 ~5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~7.1 ~0.0 ~7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~5.0 ~0.0 ~8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~2.6 ~0.0 ~9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~0.0 ~10.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-2.6 ~0.0 ~9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-5.0 ~0.0 ~8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-7.1 ~0.0 ~7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-8.7 ~0.0 ~5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-9.7 ~0.0 ~2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-10.0 ~0.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-9.7 ~0.0 ~-2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-8.7 ~0.0 ~-5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-7.1 ~0.0 ~-7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-5.0 ~0.0 ~-8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-2.6 ~0.0 ~-9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~0.0 ~-10.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~2.6 ~0.0 ~-9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~5.0 ~0.0 ~-8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~7.1 ~0.0 ~-7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~8.7 ~0.0 ~-5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~9.7 ~0.0 ~-2.6 0 0 0 0 1 force @a

# --- Ring XY (z=0) ---
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~10.0 ~0.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~9.7 ~2.6 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~8.7 ~5.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~7.1 ~7.1 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~5.0 ~8.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~2.6 ~9.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~10.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-2.6 ~9.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-5.0 ~8.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-7.1 ~7.1 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-8.7 ~5.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-9.7 ~2.6 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-10.0 ~0.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-9.7 ~-2.6 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-8.7 ~-5.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-7.1 ~-7.1 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-5.0 ~-8.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~-2.6 ~-9.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-10.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~2.6 ~-9.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~5.0 ~-8.7 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~7.1 ~-7.1 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~8.7 ~-5.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~9.7 ~-2.6 ~0.0 0 0 0 0 1 force @a

# --- Ring YZ (x=0) ---
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~0.0 ~10.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~2.6 ~9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~5.0 ~8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~7.1 ~7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~8.7 ~5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~9.7 ~2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~10.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~9.7 ~-2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~8.7 ~-5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~7.1 ~-7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~5.0 ~-8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~2.6 ~-9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~0.0 ~-10.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-2.6 ~-9.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-5.0 ~-8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-7.1 ~-7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-8.7 ~-5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-9.7 ~-2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-10.0 ~0.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-9.7 ~2.6 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-8.7 ~5.0 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-7.1 ~7.1 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-5.0 ~8.7 0 0 0 0 1 force @a
particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~0.0 ~-2.6 ~9.7 0 0 0 0 1 force @a

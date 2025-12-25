# appelée par ctf:loop quand la map usine est sélectionnée
# permet de gere les clocks des tapis roulants

 # LEVIERS

        # leviers tapis du haut
execute if score top_lever_blue conveyor_belt matches 0 if block 321 154 3 minecraft:lever[face=floor,facing=east,powered=true] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_0_top_lever
# si le levier du tapis top côté nord est utilisé alors qu'on est en state 0 -> lance le state 1
execute if score top_lever_red conveyor_belt matches 0 if block 321 154 13 minecraft:lever[face=floor,facing=west,powered=true] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_0_top_lever
# si le levier du tapis top côté nord est utilisé alors qu'on est en state 0 -> lance le state 1


execute if score top_lever_blue conveyor_belt matches 1 if block 321 154 3 minecraft:lever[face=floor,facing=east,powered=false] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_1_top_lever
# si le levier du tapis top côté nord est utilisé alors qu'on est en state 1 -> lance le state 0
execute if score top_lever_red conveyor_belt matches 1 if block 321 154 13 minecraft:lever[face=floor,facing=west,powered=false] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_1_top_lever
# si le levier du tapis top côté nord est utilisé alors qu'on est en state 1 -> lance le state 0


        # leviers tapis du milieu
execute if score middle_lever_blue conveyor_belt matches 0 if block 320 154 3 minecraft:lever[face=floor,facing=north,powered=true] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_0_middle_lever
# si le levier du tapis middle côté nord est utilisé alors qu'on est en state 0 -> lance le state 1
execute if score middle_lever_red conveyor_belt matches 0 if block 322 154 13 minecraft:lever[face=floor,facing=south,powered=true] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_0_middle_lever
# si le levier du tapis middle côté nord est utilisé alors qu'on est en state 0 -> lance le state 1


execute if score middle_lever_blue conveyor_belt matches 1 if block 320 154 3 minecraft:lever[face=floor,facing=north,powered=false] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_1_middle_lever
# si le levier du tapis middle côté nord est utilisé alors qu'on est en state 1 -> lance le state 0
execute if score middle_lever_red conveyor_belt matches 1 if block 322 154 13 minecraft:lever[face=floor,facing=south,powered=false] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_1_middle_lever
# si le levier du tapis middle côté nord est utilisé alors qu'on est en state 1 -> lance le state 0


        # leviers tapis du bas
execute if score bottom_lever_blue conveyor_belt matches 0 if block 322 154 3 minecraft:lever[face=floor,facing=west,powered=true] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_0_bottom_lever
# si le levier du tapis bottom côté nord est utilisé alors qu'on est en state 0 -> lance le state 1
execute if score bottom_lever_red conveyor_belt matches 0 if block 320 154 13 minecraft:lever[face=floor,facing=east,powered=true] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_0_bottom_lever
# si le levier du tapis bottom côté nord est utilisé alors qu'on est en state 0 -> lance le state 1


execute if score bottom_lever_blue conveyor_belt matches 1 if block 322 154 3 minecraft:lever[face=floor,facing=west,powered=false] run function ctf:maps_systems/factory/conveyor_belt/blue_side/levers/use_state_1_bottom_lever
# si le levier du tapis bottom côté nord est utilisé alors qu'on est en state 1 -> lance le state 0
execute if score bottom_lever_red conveyor_belt matches 1 if block 320 154 13 minecraft:lever[face=floor,facing=east,powered=false] run function ctf:maps_systems/factory/conveyor_belt/red_side/levers/use_state_1_bottom_lever
# si le levier du tapis bottom côté nord est utilisé alors qu'on est en state 1 -> lance le state 0


 # TAPIS

    # tapis du haut
execute if score top_lever_blue conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/blue_side/top_conveyor_belt/state_0
# si le tapis du haut est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score top_lever_blue conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/blue_side/top_conveyor_belt/state_1
# si le tapis du haut est au state 1 -> lance la clock qui le fait bouger dans le sens inverse

execute if score top_lever_red conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/red_side/top_conveyor_belt/state_0
# si le tapis du haut est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score top_lever_red conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/red_side/top_conveyor_belt/state_1
# si le tapis du haut est au state 1 -> lance la clock qui le fait bouger dans le sens inverse

    # tapis du milieu
execute if score middle_lever_blue conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/blue_side/middle_conveyor_belt/state_0
# si le tapis du milieu est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score middle_lever_blue conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/blue_side/middle_conveyor_belt/state_1
# si le tapis du milieu est au state 1 -> lance la clock qui le fait bouger dans le sens inverse

execute if score middle_lever_red conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/red_side/middle_conveyor_belt/state_0
# si le tapis du milieu est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score middle_lever_red conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/red_side/middle_conveyor_belt/state_1
# si le tapis du milieu est au state 1 -> lance la clock qui le fait bouger dans le sens inverse

    # tapis du bas
execute if score bottom_lever_blue conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/blue_side/bottom_conveyor_belt/state_0
# si le tapis du bas est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score bottom_lever_blue conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/blue_side/bottom_conveyor_belt/state_1
# si le tapis du bas est au state 1 -> lance la clock qui le fait bouger dans le sens inverse

execute if score bottom_lever_red conveyor_belt matches 0 run function ctf:maps_systems/factory/conveyor_belt/red_side/bottom_conveyor_belt/state_0
# si le tapis du bas est au state 0 -> lance la clock qui le fait bouger dans le sens classique
execute if score bottom_lever_red conveyor_belt matches 1 run function ctf:maps_systems/factory/conveyor_belt/red_side/bottom_conveyor_belt/state_1
# si le tapis du bas est au state 1 -> lance la clock qui le fait bouger dans le sens inverse
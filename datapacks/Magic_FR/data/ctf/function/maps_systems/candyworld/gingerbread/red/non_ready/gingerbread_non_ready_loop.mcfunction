## appelée par loop_candyworld si le pain d'épice rouge n'est pas dispo

execute if score cooldown_red gingerbread matches -1 as @a[tag=gingerbread_passenger_red,limit=1] run function ctf:maps_systems/candyworld/gingerbread/red/feet_kick/kick_travel_timer
execute if score cooldown_red gingerbread matches 0.. run function ctf:maps_systems/candyworld/gingerbread/red/non_ready/cooldown
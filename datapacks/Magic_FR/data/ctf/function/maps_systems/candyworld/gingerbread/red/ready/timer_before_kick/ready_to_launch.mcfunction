## appelée par in_area_clock quand @s est resté assez longtemps pour être kick

scoreboard players set ready_red gingerbread 0
# rend le pain d'épice plus prêt (enlève les particules et le système de detection de joueurs dans la zone)

execute as @a[tag=gingerbread_area_red] run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/exit_area
# enlève les bossbar et timer pain d'épice des joueurs

function ctf:maps_systems/candyworld/gingerbread/red/feet_kick/feet_kick
# propulse @s
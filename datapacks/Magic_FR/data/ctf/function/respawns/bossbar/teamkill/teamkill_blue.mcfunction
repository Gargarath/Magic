# appelée par ctf:respawns/bossbar/calculate_respawn_time_blue permet de donner un malus de point au bleus si ils sont tous morts

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":""}
title @a[team=respawn_blue] subtitle {"text":"Votre équipe a été éliminée !","italic":true}
title @a[team=red] subtitle {"text":"Equipe adverse éliminée !","italic":true}
title @a[team=spectator] subtitle {"text":"Equipe bleue éliminée !","italic":true,"color":"blue"}
title @a[team=respawn_red] subtitle {"text":"Equipe adverse éliminée !","italic":true}
execute as @a[team=respawn_blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0
execute as @a[team=red] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1
execute as @a[team=respawn_red] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1
execute as @a[team=spectator] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 1
# Appelée par refresh_timer permet de mettre à jour visuellement barre d'info du match

execute if score $minutes timers matches 4 run data modify storage minecraft:matchinfo time.minutes set value {"text":"4"}
execute if score $minutes timers matches 3 run data modify storage minecraft:matchinfo time.minutes set value {"text":"3"}
execute if score $minutes timers matches 2 run data modify storage minecraft:matchinfo time.minutes set value {"text":"2"}
execute if score $minutes timers matches 1 run data modify storage minecraft:matchinfo time.minutes set value {"text":"1"}
execute if score $minutes timers matches 0 run data modify storage minecraft:matchinfo time.minutes set value {"text":"0"}

execute if score #seconds1 timers matches 0 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0"}
execute if score #seconds1 timers matches 1 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"1"}
execute if score #seconds1 timers matches 2 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"2"}
execute if score #seconds1 timers matches 3 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"3"}
execute if score #seconds1 timers matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"4"}
execute if score #seconds1 timers matches 5 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"5"}
execute if score #seconds1 timers matches 6 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"6"}
execute if score #seconds1 timers matches 7 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"7"}
execute if score #seconds1 timers matches 8 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"8"}
execute if score #seconds1 timers matches 9 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"9"}

execute if score #seconds2 timers matches 0 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0"}
execute if score #seconds2 timers matches 1 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"1"}
execute if score #seconds2 timers matches 2 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"2"}
execute if score #seconds2 timers matches 3 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"3"}
execute if score #seconds2 timers matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"4"}
execute if score #seconds2 timers matches 5 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"5"}
execute if score #seconds2 timers matches 6 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"6"}
execute if score #seconds2 timers matches 7 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"7"}
execute if score #seconds2 timers matches 8 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"8"}
execute if score #seconds2 timers matches 9 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"9"}


# Prolongations -> rend le texte violet

execute if score round bossbar matches 4 run return run function gamemode:ctf/timer/timer_actualise/red

# 2m50-5m -> rend le texte vert

execute if score $minutes timers matches 3.. run return run function gamemode:ctf/timer/timer_actualise/green
execute if score $minutes timers matches 2 if score $seconds timers matches 30.. run return run function gamemode:ctf/timer/timer_actualise/green


# 1m-2m29 -> rend le texte jaune
execute if score $minutes timers matches 1 run return run function gamemode:ctf/timer/timer_actualise/yellow
execute if score $minutes timers matches 2 if score $seconds timers matches ..29 run return run function gamemode:ctf/timer/timer_actualise/yellow


# >1m -> rend le texte rouge
execute if score $minutes timers matches 0 run return run function gamemode:ctf/timer/timer_actualise/red


function main:gui/display/refresh_gui
# actualise la barre en haut de l'écran
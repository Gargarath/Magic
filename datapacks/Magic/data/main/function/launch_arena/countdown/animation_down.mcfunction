# Appellée par timerX permet de faire bouger les timers

execute as @e[tag=start_countdown] run data merge entity @s {start_interpolation:-1,interpolation_duration:3,transformation:{scale:[0f,0f,0f],translation:[-0.024f,0f,0f]}}
# Appellée par timerX permet de faire bouger les timers

execute as @e[tag=start_countdown] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[2f,2f,2f],translation:[-0.024f,-0.2f,0f]}}
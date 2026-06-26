## appelée par stop_game ou ctf:round_over
## permet de reset le countdown de l'arène

scoreboard players reset $enable_game_countdown timers
schedule clear main:launch_arena/countdown/timer_end
schedule clear main:launch_arena/countdown/timer1
schedule clear main:launch_arena/countdown/timer2
schedule clear main:launch_arena/countdown/timer3
schedule clear main:launch_arena/countdown/animation_up
schedule clear main:launch_arena/countdown/animation_down
kill @e[type=text_display,tag=start_countdown]
# reset les timer de 3/2/1
tag @a[tag=in_countdown] remove in_countdown
# indique que les joueurs ne sont plus en attente (pour éviter qu'ils utilisent leurs raccourcis de sorts)
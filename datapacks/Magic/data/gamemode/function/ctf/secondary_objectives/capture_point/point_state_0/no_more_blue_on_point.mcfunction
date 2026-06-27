# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop permet de reset la bossbar des bleus car ils ne capent plus

bossbar set point_capture:state_blue value 0
scoreboard players set capture_blue point_capture 0

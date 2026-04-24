## appelée par give_lobby_team lorsqu'on est en ffa et qu'on veut refresh la team de @s
# applique la bonne team temporaire selon le slot de @s

execute store result storage temp:ffa_team slot int 1 run scoreboard players get @s ffa_lobby_slot
function lobby:team_selector/give_ffa_lobby_team/update_team_option with storage temp:ffa_team


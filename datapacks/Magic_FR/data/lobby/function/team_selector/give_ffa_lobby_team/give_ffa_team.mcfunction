## appelée lorsque @s rejoint le mode FFA (rejoint le lobby FFA ou bien on change le mode FFA)
# lui donne la team

execute as @s[tag=no_team,scores={InLobby=1}] unless score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/assign_slot
execute as @s run function lobby:team_selector/give_ffa_lobby_team/refresh_slot
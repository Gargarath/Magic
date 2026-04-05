## appelée par save_player_names et save_player_data
# permet de mettre @s dans la bonne équipe

execute if score @s Player matches 1 run function lobby:team_selector/give_ffa_team/player1
execute if score @s Player matches 2 run function lobby:team_selector/give_ffa_team/player2
execute if score @s Player matches 3 run function lobby:team_selector/give_ffa_team/player3
execute if score @s Player matches 4 run function lobby:team_selector/give_ffa_team/player4
execute if score @s Player matches 5 run function lobby:team_selector/give_ffa_team/player5
execute if score @s Player matches 6 run function lobby:team_selector/give_ffa_team/player6
execute if score @s Player matches 7 run function lobby:team_selector/give_ffa_team/player7
execute if score @s Player matches 8 run function lobby:team_selector/give_ffa_team/player8
execute if score @s Player matches 9 run function lobby:team_selector/give_ffa_team/player9
execute if score @s Player matches 10 run function lobby:team_selector/give_ffa_team/player10
execute if score @s Player matches 11 run function lobby:team_selector/give_ffa_team/player11
execute if score @s Player matches 12 run function lobby:team_selector/give_ffa_team/player12
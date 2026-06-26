## appelee par someone_reconnected quand @s se reconnecte dans le lobby FFA
# si son ancien slot a ete repris, le joueur reconnecte prend un nouveau slot libre

# si pas de slot -> lui assigne
execute unless score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/assign_slot

# on compte le nombre de joueur qui ont le même slot
execute if score @s ffa_lobby_slot matches 1.. run scoreboard players operation #ffa_reconnect_slot ffa_lobby_slot = @s ffa_lobby_slot
scoreboard players set #ffa_slot_users ffa_lobby_slot 0
execute if score @s ffa_lobby_slot matches 1.. as @a[tag=no_team,scores={InLobby=1,Player=0..,ffa_lobby_slot=1..}] if score @s ffa_lobby_slot = #ffa_reconnect_slot ffa_lobby_slot run scoreboard players add #ffa_slot_users ffa_lobby_slot 1

# si au moins un autre joueur à le même slot -> reset le slot de @s
execute if score #ffa_slot_users ffa_lobby_slot matches 2.. run scoreboard players reset @s ffa_lobby_slot
# si @s n'a plus de slot -> on lui reattribu
execute unless score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/assign_slot

# on applique la team de @s selon son nouveau numéro de slot
execute if score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/refresh_slot
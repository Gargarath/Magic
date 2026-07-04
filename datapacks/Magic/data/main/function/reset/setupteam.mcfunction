team add red
team modify red color red
team modify red nametagVisibility hideForOtherTeams
team modify red friendlyFire false
team modify red collisionRule pushOwnTeam
# Crée la team red utilisée pour le CTF

team add blue
team modify blue color blue
team modify blue nametagVisibility hideForOtherTeams
team modify blue friendlyFire false
team modify blue collisionRule pushOwnTeam
# Crée la team blue utilisée pour le CTF

team add spectator
team modify spectator color gray
team modify spectator prefix [{"atlas":"minecraft:items","sprite":"item/ender_eye","color":"white"}," "]
team modify spectator nametagVisibility always
team modify spectator friendlyFire false
team modify spectator seeFriendlyInvisibles false
team modify spectator collisionRule never
# Crée la team spectator utilisée pour le CTF

team add lobby
team modify lobby collisionRule never
# Crée la team lobby utilisée pour les joueurs qui n'ont ni équipe ni équipe

team add warrior
team add archer
team add mage
team add rogue
team modify warrior collisionRule never
team modify archer collisionRule never
team modify mage collisionRule never
team modify rogue collisionRule never
team modify warrior seeFriendlyInvisibles false
team modify archer seeFriendlyInvisibles false
team modify mage seeFriendlyInvisibles false
team modify rogue seeFriendlyInvisibles false
team modify warrior prefix {"text":"\uE601 ","color":"white"}
team modify archer prefix {"text":"\uE602 ","color":"white"}
team modify mage prefix {"text":"\uE603 ","color":"white"}
team modify rogue prefix {"text":"\uE604 ","color":"white"}
# Crée les team de classe utilisées dans le lobby pour afficher la classe

team add w_red
team add a_red
team add m_red
team add r_red
team add w_red
team modify w_red color red
team modify a_red color red
team modify m_red color red
team modify r_red color red
team modify w_red collisionRule never
team modify a_red collisionRule never
team modify m_red collisionRule never
team modify r_red collisionRule never
team modify w_red seeFriendlyInvisibles false
team modify a_red seeFriendlyInvisibles false
team modify m_red seeFriendlyInvisibles false
team modify r_red seeFriendlyInvisibles false
team modify w_red prefix {"text":"\uE601 ","color":"white"}
team modify a_red prefix {"text":"\uE602 ","color":"white"}
team modify m_red prefix {"text":"\uE603 ","color":"white"}
team modify r_red prefix {"text":"\uE604 ","color":"white"}
# Crée les team rouges utilisées dans le lobby pour afficher la classe


team add w_blue
team add a_blue
team add m_blue
team add r_blue
team modify w_blue color blue
team modify a_blue color blue
team modify m_blue color blue
team modify r_blue color blue
team modify w_blue collisionRule never
team modify a_blue collisionRule never
team modify m_blue collisionRule never
team modify r_blue collisionRule never
team modify w_blue seeFriendlyInvisibles false
team modify a_blue seeFriendlyInvisibles false
team modify m_blue seeFriendlyInvisibles false
team modify r_blue seeFriendlyInvisibles false
team modify w_blue prefix {"text":"\uE601 ","color":"white"}
team modify a_blue prefix {"text":"\uE602 ","color":"white"}
team modify m_blue prefix {"text":"\uE603 ","color":"white"}
team modify r_blue prefix {"text":"\uE604 ","color":"white"}
# Crée les team bleues utilisées dans le lobby pour afficher la classe

## VARIANTE OP

team add red_op
team modify red_op color red
team modify red_op nametagVisibility always
team modify red_op friendlyFire false
team modify red_op collisionRule pushOwnTeam
team modify red_op prefix {"text":"\uE600 ","color":"gold"}
# Crée la team red_op

team add blue_op
team modify blue_op color blue
team modify blue_op nametagVisibility always
team modify blue_op friendlyFire false
team modify blue_op collisionRule pushOwnTeam
team modify blue_op prefix {"text":"\uE600 ","color":"gold"}
# Crée la team blue_op

team add spectator_op
team modify spectator_op color gray
team modify spectator_op prefix [{"text":"\uE600 ","color":"gold"},{"atlas":"minecraft:items","sprite":"item/ender_eye","color":"white","scale":1}," "]
team modify spectator_op nametagVisibility always
team modify spectator_op friendlyFire false
team modify spectator_op seeFriendlyInvisibles false
team modify spectator_op collisionRule never
# Crée la team spectator utilisée pour le CTF

team add lobby_op
team modify lobby_op prefix {"text":"\uE600 ","color":"gold"}
team modify lobby_op collisionRule never
# Crée la team lobby utilisée pour les joueurs qui n'ont ni équipe ni équipe

team add warrior_op
team add archer_op
team add mage_op
team add rogue_op
team modify warrior_op collisionRule never
team modify archer_op collisionRule never
team modify mage_op collisionRule never
team modify rogue_op collisionRule never
team modify warrior_op seeFriendlyInvisibles false
team modify archer_op seeFriendlyInvisibles false
team modify mage_op seeFriendlyInvisibles false
team modify rogue_op seeFriendlyInvisibles false
team modify warrior_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE601 ","color":"white"}]
team modify archer_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE602 ","color":"white"}]
team modify mage_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE603 ","color":"white"}]
team modify rogue_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE604 ","color":"white"}]
# Crée les team de classe utilisées dans le lobby pour afficher la classe

team add w_red_op
team add a_red_op
team add m_red_op
team add r_red_op
team add w_red_op
team modify w_red_op color red
team modify a_red_op color red
team modify m_red_op color red
team modify r_red_op color red
team modify w_red_op collisionRule never
team modify a_red_op collisionRule never
team modify m_red_op collisionRule never
team modify r_red_op collisionRule never
team modify w_red_op seeFriendlyInvisibles false
team modify a_red_op seeFriendlyInvisibles false
team modify m_red_op seeFriendlyInvisibles false
team modify r_red_op seeFriendlyInvisibles false
team modify w_red_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE601 ","color":"white"}]
team modify a_red_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE602 ","color":"white"}]
team modify m_red_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE603 ","color":"white"}]
team modify r_red_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE604 ","color":"white"}]
# Crée les team rouges utilisées dans le lobby pour afficher la classe


team add w_blue_op
team add a_blue_op
team add m_blue_op
team add r_blue_op
team modify w_blue_op color blue
team modify a_blue_op color blue
team modify m_blue_op color blue
team modify r_blue_op color blue
team modify w_blue_op collisionRule never
team modify a_blue_op collisionRule never
team modify m_blue_op collisionRule never
team modify r_blue_op collisionRule never
team modify w_blue_op seeFriendlyInvisibles false
team modify a_blue_op seeFriendlyInvisibles false
team modify m_blue_op seeFriendlyInvisibles false
team modify r_blue_op seeFriendlyInvisibles false
team modify w_blue_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE601 ","color":"white"}]
team modify a_blue_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE602 ","color":"white"}]
team modify m_blue_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE603 ","color":"white"}]
team modify r_blue_op prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE604 ","color":"white"}]
# Crée les team bleues utilisées dans le lobby pour afficher la classe



        ## SHOP

team add ready_red
team add non_ready_red
team modify ready_red nametagVisibility never
team modify non_ready_red nametagVisibility never
team modify ready_red color red
team modify non_ready_red color red
team modify ready_red prefix {"text":"[Prêt] ","color":"dark_green"}
team modify non_ready_red prefix {"text":"[Pas prêt] ","color":"dark_red"}
# Crée les team rouges utilisées dans le shop pour afficher si prêt ou non

team add ready_blue
team add non_ready_blue
team modify ready_blue nametagVisibility never
team modify non_ready_blue nametagVisibility never
team modify ready_blue color blue
team modify non_ready_blue color blue
team modify ready_blue prefix {"text":"[Prêt] ","color":"dark_green"}
team modify non_ready_blue prefix {"text":"[Pas prêt] ","color":"dark_red"}
# Crée les team bleues utilisées dans le shop pour afficher si prêt ou non

team add respawn_red
team add respawn_blue
team modify respawn_red color gray
team modify respawn_blue color gray
team modify respawn_red nametagVisibility never
team modify respawn_blue nametagVisibility never
team modify respawn_blue prefix ["",{"text":"[","color":"gray"},{"text":"\uE650","color":"blue","bold":false},{"text":"] ","color":"gray"}]
team modify respawn_red prefix ["",{"text":"[","color":"gray"},{"text":"\uE650","color":"red","bold":false},{"text":"] ","color":"gray"}]
# Crée la team respawn utilisée pour la réaparition

team add stats_book_blue
team add stats_book_red
team modify stats_book_blue color reset
team modify stats_book_red color reset
# Crée la team stats_book utilisée pour les le livre de stats


## FFA

team add player1
team modify player1 nametagVisibility never
team modify player1 prefix {"text":"\uE601 ","color":white}
team modify player1 color white

team add player2
team modify player2 nametagVisibility never
team modify player2 prefix {"text":"\uE601 ","color":white}
team modify player2 color white

team add player3
team modify player3 nametagVisibility never
team modify player3 prefix {"text":"\uE601 ","color":white}
team modify player3 color white

team add player4
team modify player4 nametagVisibility never
team modify player4 prefix {"text":"\uE601 ","color":white}
team modify player4 color white

team add player5
team modify player5 nametagVisibility never
team modify player5 prefix {"text":"\uE601 ","color":white}
team modify player5 color white

team add player6
team modify player6 nametagVisibility never
team modify player6 prefix {"text":"\uE601 ","color":white}
team modify player6 color white

team add player7
team modify player7 nametagVisibility never
team modify player7 prefix {"text":"\uE601 ","color":white}
team modify player7 color white

team add player8
team modify player8 nametagVisibility never
team modify player8 prefix {"text":"\uE601 ","color":white}
team modify player8 color white

team add player9
team modify player9 nametagVisibility never
team modify player9 prefix {"text":"\uE601 ","color":white}
team modify player9 color white

team add player10
team modify player10 nametagVisibility never
team modify player10 prefix {"text":"\uE601 ","color":white}
team modify player10 color white

team add player11
team modify player11 nametagVisibility never
team modify player11 prefix {"text":"\uE601 ","color":white}
team modify player11 color white

team add player12
team modify player12 nametagVisibility never
team modify player12 prefix {"text":"\uE601 ","color":white}
team modify player12 color white

team add lobby_ffa_1
team modify lobby_ffa_1 nametagVisibility always
team modify lobby_ffa_1 prefix {"text":"","color":"white"}
team modify lobby_ffa_1 color white

team add lobby_ffa_2
team modify lobby_ffa_2 nametagVisibility always
team modify lobby_ffa_2 prefix {"text":"","color":"white"}
team modify lobby_ffa_2 color white

team add lobby_ffa_3
team modify lobby_ffa_3 nametagVisibility always
team modify lobby_ffa_3 prefix {"text":"","color":"white"}
team modify lobby_ffa_3 color white

team add lobby_ffa_4
team modify lobby_ffa_4 nametagVisibility always
team modify lobby_ffa_4 prefix {"text":"","color":"white"}
team modify lobby_ffa_4 color white

team add lobby_ffa_5
team modify lobby_ffa_5 nametagVisibility always
team modify lobby_ffa_5 prefix {"text":"","color":"white"}
team modify lobby_ffa_5 color white

team add lobby_ffa_6
team modify lobby_ffa_6 nametagVisibility always
team modify lobby_ffa_6 prefix {"text":"","color":"white"}
team modify lobby_ffa_6 color white

team add lobby_ffa_7
team modify lobby_ffa_7 nametagVisibility always
team modify lobby_ffa_7 prefix {"text":"","color":"white"}
team modify lobby_ffa_7 color white

team add lobby_ffa_8
team modify lobby_ffa_8 nametagVisibility always
team modify lobby_ffa_8 prefix {"text":"","color":"white"}
team modify lobby_ffa_8 color white

team add lobby_ffa_9
team modify lobby_ffa_9 nametagVisibility always
team modify lobby_ffa_9 prefix {"text":"","color":"white"}
team modify lobby_ffa_9 color white

team add lobby_ffa_10
team modify lobby_ffa_10 nametagVisibility always
team modify lobby_ffa_10 prefix {"text":"","color":"white"}
team modify lobby_ffa_10 color white

team add lobby_ffa_11
team modify lobby_ffa_11 nametagVisibility always
team modify lobby_ffa_11 prefix {"text":"","color":"white"}
team modify lobby_ffa_11 color white

team add lobby_ffa_12
team modify lobby_ffa_12 nametagVisibility always
team modify lobby_ffa_12 prefix {"text":"","color":"white"}
team modify lobby_ffa_12 color white

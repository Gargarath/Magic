## appelée par end_game join_blueteam join_redteam... (chaque fois que @s change d'équipe vers une équipe du lobby)
# permet de mettre la bonne équipe à @s

# SI FFA
execute if score $gamemode option_panel matches 0 as @s[scores={Player=0..,team_side=0}] unless score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/assign_slot
execute if score $gamemode option_panel matches 0 as @s[scores={Player=0..,ffa_lobby_slot=1..,team_side=0}] run return run function lobby:team_selector/give_ffa_lobby_team/refresh_slot

# SI CTF

team join lobby @s[tag=!blue_team,tag=!red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=0}]
function main:locator_bar/team_updated
team join warrior @s[tag=!blue_team,tag=!red_team,tag=warrior,scores={operator=0}]
function main:locator_bar/team_updated
team join archer @s[tag=!blue_team,tag=!red_team,tag=archer,scores={operator=0}]
function main:locator_bar/team_updated
team join mage @s[tag=!blue_team,tag=!red_team,tag=mage,scores={operator=0}]
function main:locator_bar/team_updated
team join rogue @s[tag=!blue_team,tag=!red_team,tag=rogue,scores={operator=0}]
function main:locator_bar/team_updated
team join lobby_op @s[tag=!blue_team,tag=!red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=2}]
function main:locator_bar/team_updated
team join warrior_op @s[tag=!blue_team,tag=!red_team,tag=warrior,scores={operator=2}]
function main:locator_bar/team_updated
team join archer_op @s[tag=!blue_team,tag=!red_team,tag=archer,scores={operator=2}]
function main:locator_bar/team_updated
team join mage_op @s[tag=!blue_team,tag=!red_team,tag=mage,scores={operator=2}]
function main:locator_bar/team_updated
team join rogue_op @s[tag=!blue_team,tag=!red_team,tag=rogue,scores={operator=2}]
function main:locator_bar/team_updated

team join red @s[tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=0}]
function main:locator_bar/team_updated
team join w_red @s[tag=red_team,tag=warrior,scores={operator=0}]
function main:locator_bar/team_updated
team join a_red @s[tag=red_team,tag=archer,scores={operator=0}]
function main:locator_bar/team_updated
team join m_red @s[tag=red_team,tag=mage,scores={operator=0}]
function main:locator_bar/team_updated
team join r_red @s[tag=red_team,tag=rogue,scores={operator=0}]
function main:locator_bar/team_updated
team join blue @s[tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=0}]
function main:locator_bar/team_updated
team join w_blue @s[tag=blue_team,tag=warrior,scores={operator=0}]
function main:locator_bar/team_updated
team join a_blue @s[tag=blue_team,tag=archer,scores={operator=0}]
function main:locator_bar/team_updated
team join m_blue @s[tag=blue_team,tag=mage,scores={operator=0}]
function main:locator_bar/team_updated
team join r_blue @s[tag=blue_team,tag=rogue,scores={operator=0}]
function main:locator_bar/team_updated

team join red_op @s[tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=2}]
function main:locator_bar/team_updated
team join w_red_op @s[tag=red_team,tag=warrior,scores={operator=2}]
function main:locator_bar/team_updated
team join a_red_op @s[tag=red_team,tag=archer,scores={operator=2}]
function main:locator_bar/team_updated
team join m_red_op @s[tag=red_team,tag=mage,scores={operator=2}]
function main:locator_bar/team_updated
team join r_red_op @s[tag=red_team,tag=rogue,scores={operator=2}]
function main:locator_bar/team_updated
team join blue_op @s[tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue,scores={operator=2}]
function main:locator_bar/team_updated
team join w_blue_op @s[tag=blue_team,tag=warrior,scores={operator=2}]
function main:locator_bar/team_updated
team join a_blue_op @s[tag=blue_team,tag=archer,scores={operator=2}]
function main:locator_bar/team_updated
team join m_blue_op @s[tag=blue_team,tag=mage,scores={operator=2}]
function main:locator_bar/team_updated
team join r_blue_op @s[tag=blue_team,tag=rogue,scores={operator=2}]
function main:locator_bar/team_updated

team join spectator @s[tag=spectator,scores={operator=0}]
function main:locator_bar/team_updated
team join spectator @s[tag=blue_spectator,scores={operator=0}]
function main:locator_bar/team_updated
team join spectator @s[tag=red_spectator,scores={operator=0}]
function main:locator_bar/team_updated
team join spectator_op @s[tag=spectator,scores={operator=2}]
function main:locator_bar/team_updated
team join spectator_op @s[tag=blue_spectator,scores={operator=2}]
function main:locator_bar/team_updated
team join spectator_op @s[tag=red_spectator,scores={operator=2}]
function main:locator_bar/team_updated
# Donne sa team de lobby à @s
## appelée par check_class_and_team
# permet de stocker les classes et équipe déjà séléctionnées

# Reset
scoreboard players set @a team_side 0
scoreboard players set @a class_id 0

# Cas "équipe simple" choisie (sans classe)
scoreboard players set @a[team=blue] team_side 1
scoreboard players set @a[team=red] team_side 2

# Cas "classe simple" choisie (sans équipe)
scoreboard players set @a[team=warrior] class_id 1
scoreboard players set @a[team=archer] class_id 2
scoreboard players set @a[team=mage] class_id 3
scoreboard players set @a[team=rogue] class_id 4

# Cas "classe + équipe" (teams combinées)
# Blue
scoreboard players set @a[team=w_blue] class_id 1
scoreboard players set @a[team=a_blue] class_id 2
scoreboard players set @a[team=m_blue] class_id 3
scoreboard players set @a[team=r_blue] class_id 4
scoreboard players set @a[team=w_blue] team_side 1
scoreboard players set @a[team=a_blue] team_side 1
scoreboard players set @a[team=m_blue] team_side 1
scoreboard players set @a[team=r_blue] team_side 1
# Red
scoreboard players set @a[team=w_red] class_id 1
scoreboard players set @a[team=a_red] class_id 2
scoreboard players set @a[team=m_red] class_id 3
scoreboard players set @a[team=r_red] class_id 4
scoreboard players set @a[team=w_red] team_side 2
scoreboard players set @a[team=a_red] team_side 2
scoreboard players set @a[team=m_red] team_side 2
scoreboard players set @a[team=r_red] team_side 2

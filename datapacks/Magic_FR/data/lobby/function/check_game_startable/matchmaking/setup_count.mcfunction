## appelée par start_matchmaking
# permet de compter le nombre de joueurs dans chaque équipe classes dans chaque équipe

# Remise à zéro des compteurs globaux
scoreboard players set #blue mm_count 0
scoreboard players set #red mm_count 0

# Remise à zéro des compteurs par classe/équipe
scoreboard players set #w_blue mm_count 0
scoreboard players set #a_blue mm_count 0
scoreboard players set #m_blue mm_count 0
scoreboard players set #r_blue mm_count 0
scoreboard players set #w_red mm_count 0
scoreboard players set #a_red mm_count 0
scoreboard players set #m_red mm_count 0
scoreboard players set #r_red mm_count 0

# Comptes (on tient compte de tout le monde déjà fixé)
execute as @a[scores={team_side=1}] run scoreboard players add #blue mm_count 1
execute as @a[scores={team_side=2}] run scoreboard players add #red mm_count 1

execute as @a[scores={team_side=1,class_id=1}] run scoreboard players add #w_blue mm_count 1
execute as @a[scores={team_side=1,class_id=2}] run scoreboard players add #a_blue mm_count 1
execute as @a[scores={team_side=1,class_id=3}] run scoreboard players add #m_blue mm_count 1
execute as @a[scores={team_side=1,class_id=4}] run scoreboard players add #r_blue mm_count 1

execute as @a[scores={team_side=2,class_id=1}] run scoreboard players add #w_red mm_count 1
execute as @a[scores={team_side=2,class_id=2}] run scoreboard players add #a_red mm_count 1
execute as @a[scores={team_side=2,class_id=3}] run scoreboard players add #m_red mm_count 1
execute as @a[scores={team_side=2,class_id=4}] run scoreboard players add #r_red mm_count 1

# Permet d'afficher les stats de @p à l'utilisateur de la function admin:getplayerstats

tag @p add getstats
# Ajoute le tag getsstats au joueur ciblé pour éviter des conflits avec @p

tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"---- ","color":"white"},{"text":"Stats de: ","color":"white"},{"selector":"@a[tag=getstats]","color":"white"},{"text":" ---- ","color":"white"}]
# Affiche le nom du joueur ciblé

tellraw @s ["",{"text":" "}]

execute if entity @a[tag=getstats,tag=warrior] run tellraw @s ["",{"text":"Classe: ","color":"white"},{"text":"Guerrier","bold":true,"color":"gold"}]
execute if entity @a[tag=getstats,tag=archer] run tellraw @s ["",{"text":"Classe: ","color":"white"},{"text":"Archer","bold":true,"color":"dark_green"}]
execute if entity @a[tag=getstats,tag=mage] run tellraw @s ["",{"text":"Classe: ","color":"white"},{"text":"Mage","bold":true,"color":"dark_purple"}]
execute if entity @a[tag=getstats,tag=rogue] run tellraw @s ["",{"text":"Classe: ","color":"white"},{"text":"Assassin","bold":true,"color":"gray"}]
# Affiche la classe du joueur ciblé

execute if entity @a[tag=getstats,team=!blue,team=!red] run tellraw @s ["",{"text":"Equipe: ","color":"white"},{"text":"Aucune","bold":true,"color":"white"}]
execute if entity @a[tag=getstats,team=red] run tellraw @s ["",{"text":"Equipe: ","color":"white"},{"text":"Rouge","bold":true,"color":"red"}]
execute if entity @a[tag=getstats,team=blue] run tellraw @s ["",{"text":"Equipe: ","color":"white"},{"text":"Bleue","bold":true,"color":"blue"}]
# Affiche l'équipe du joueur ciblé

tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"Points d'Honneur: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"PH"},"bold":true,"color":"green"}]
# Affiche le nombre de Points d'honneur du joueur ciblé


tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"- Niveaux d'amélioration -","color":"aqua"}]
tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"Arme: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"weapon1"},"color":"yellow"}]
tellraw @s ["",{"text":"Sort 1: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"spell1"},"color":"yellow"}]
tellraw @s ["",{"text":"Sort 2: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"spell2"},"color":"yellow"}]
tellraw @s ["",{"text":"Sort 3: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"spell3"},"color":"yellow"}]
tellraw @s ["",{"text":"Plastron: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"chest"},"color":"yellow"}]
tellraw @s ["",{"text":"Jambières: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"legs"},"color":"yellow"}]
tellraw @s ["",{"text":"Bottes: ","color":"white"},{"score":{"name":"@a[tag=getstats]","objective":"boots"},"color":"yellow"}]

tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"-                             -","color":"aqua"}]
# Affiche les stats du joueur ciblé sur le shop

tellraw @s ["",{"text":"----------------------------"}]

tag @a[tag=getstats] remove getstats
# Enleve le tag getstats à ceux qui l'avaient (pour eviter les conflit)

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
# Joue un son à l'utilisateur de la function admin:getplayerstats
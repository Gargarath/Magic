## appelée lorsque tous les joueurs présents ont été classés
# Supprime les anciennes valeurs des rangs désormais inoccupés.

execute unless entity @a[scores={sort_ffa_killcount=1}] run data modify storage minecraft:gui ffa.score.rank1 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=2}] run data modify storage minecraft:gui ffa.score.rank2 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=3}] run data modify storage minecraft:gui ffa.score.rank3 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=4}] run data modify storage minecraft:gui ffa.score.rank4 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=5}] run data modify storage minecraft:gui ffa.score.rank5 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=6}] run data modify storage minecraft:gui ffa.score.rank6 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=7}] run data modify storage minecraft:gui ffa.score.rank7 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=8}] run data modify storage minecraft:gui ffa.score.rank8 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=9}] run data modify storage minecraft:gui ffa.score.rank9 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=10}] run data modify storage minecraft:gui ffa.score.rank10 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=11}] run data modify storage minecraft:gui ffa.score.rank11 set value {name:"",score:""}
execute unless entity @a[scores={sort_ffa_killcount=12}] run data modify storage minecraft:gui ffa.score.rank12 set value {name:"",score:""}

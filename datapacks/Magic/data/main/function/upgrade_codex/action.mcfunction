# 1: accueil, 10..13: classes, 20..27: catégories, 30/31: niveau précédent/suivant, 40: retour classe.
execute if score @s upgrade_codex matches 1 run function main:upgrade_codex/show_home with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s upgrade_codex matches 10 run function main:upgrade_codex/select_class {id:1,class:"warrior",suffix:"w",icon:"",title_key:"tr_lobby_warrior_title",description_key:"tr_lobby_warrior_description"}
execute if score @s upgrade_codex matches 11 run function main:upgrade_codex/select_class {id:2,class:"archer",suffix:"a",icon:"",title_key:"tr_lobby_archer_title",description_key:"tr_lobby_archer_description"}
execute if score @s upgrade_codex matches 12 run function main:upgrade_codex/select_class {id:3,class:"mage",suffix:"m",icon:"",title_key:"tr_lobby_mage_title",description_key:"tr_lobby_mage_description"}
execute if score @s upgrade_codex matches 13 run function main:upgrade_codex/select_class {id:4,class:"rogue",suffix:"r",icon:"",title_key:"tr_lobby_rogue_title",description_key:"tr_lobby_rogue_description"}
execute if score @s upgrade_codex matches 20 run function main:upgrade_codex/select_category {id:1,category:"passive",max:1}
execute if score @s upgrade_codex matches 21 run function main:upgrade_codex/select_category {id:2,category:"weapon1",max:10}
execute if score @s upgrade_codex matches 22 run function main:upgrade_codex/select_category {id:3,category:"spell1",max:3}
execute if score @s upgrade_codex matches 23 run function main:upgrade_codex/select_spell2
execute if score @s upgrade_codex matches 24 run function main:upgrade_codex/select_spell3
execute if score @s upgrade_codex matches 25 run function main:upgrade_codex/select_category {id:6,category:"chest",max:10}
execute if score @s upgrade_codex matches 26 run function main:upgrade_codex/select_category {id:7,category:"legs",max:10}
execute if score @s upgrade_codex matches 27 run function main:upgrade_codex/select_category {id:8,category:"boots",max:10}
execute if score @s upgrade_codex matches 30 if score @s codex_level matches 2.. run scoreboard players remove @s codex_level 1
execute if score @s upgrade_codex matches 31 if score @s codex_level < @s codex_max_level run scoreboard players add @s codex_level 1
execute if score @s upgrade_codex matches 30..31 run function main:upgrade_codex/resolve_selected
execute if score @s upgrade_codex matches 40 run function main:upgrade_codex/show_selected_class
execute if score @s upgrade_codex matches 99 run dialog clear @s
scoreboard players set @s upgrade_codex 0
scoreboard players enable @s upgrade_codex
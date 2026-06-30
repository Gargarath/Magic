# Ouvre le sommaire et efface les anciens arbres sauvegardés sur le joueur.

scoreboard players set @s upgrade_codex 0
execute if entity @s[tag=warrior,scores={InLobby=0}] run return run function main:upgrade_codex/select_class {id:1,class:"warrior",suffix:"w",icon:"",title_key:"tr_lobby_warrior_title",description_key:"tr_lobby_warrior_description"}
execute if entity @s[tag=archer,scores={InLobby=0}] run return run function main:upgrade_codex/select_class {id:2,class:"archer",suffix:"a",icon:"",title_key:"tr_lobby_archer_title",description_key:"tr_lobby_archer_description"}
execute if entity @s[tag=mage,scores={InLobby=0}] run return run function main:upgrade_codex/select_class {id:3,class:"mage",suffix:"m",icon:"",title_key:"tr_lobby_mage_title",description_key:"tr_lobby_mage_description"}
execute if entity @s[tag=rogue,scores={InLobby=0}] run return run function main:upgrade_codex/select_class {id:4,class:"rogue",suffix:"r",icon:"",title_key:"tr_lobby_rogue_title",description_key:"tr_lobby_rogue_description"}
function main:upgrade_codex/show_home with entity @s EnderItems[0].components.minecraft:custom_data

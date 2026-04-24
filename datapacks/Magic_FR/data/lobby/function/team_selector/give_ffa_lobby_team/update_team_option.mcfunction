## appelée par refresh_slot selon le numéro d'équipe de @s
# permet d'actualiser son équipe FFA
$team modify lobby_ffa_$(slot) prefix {"text":"","color":"white"}
$execute if entity @s[tag=warrior,scores={operator=0}] run team modify lobby_ffa_$(slot) prefix {"text":"\uE601 ","color":"white"}
$execute if entity @s[tag=archer,scores={operator=0}] run team modify lobby_ffa_$(slot) prefix {"text":"\uE602 ","color":"white"}
$execute if entity @s[tag=mage,scores={operator=0}] run team modify lobby_ffa_$(slot) prefix {"text":"\uE603 ","color":"white"}
$execute if entity @s[tag=rogue,scores={operator=0}] run team modify lobby_ffa_$(slot) prefix {"text":"\uE604 ","color":"white"}

$execute if entity @s[tag=warrior,scores={operator=2}] run team modify lobby_ffa_$(slot) prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE601 ","color":"white"}]
$execute if entity @s[tag=archer,scores={operator=2}] run team modify lobby_ffa_$(slot) prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE602 ","color":"white"}]
$execute if entity @s[tag=mage,scores={operator=2}] run team modify lobby_ffa_$(slot) prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE603 ","color":"white"}]
$execute if entity @s[tag=rogue,scores={operator=2}] run team modify lobby_ffa_$(slot) prefix [{"text":"\uE600 ","color":"gold"},{"text":"\uE604 ","color":"white"}]


$execute if score @s opt_color matches 0 run team modify lobby_ffa_$(slot) color white
$execute if score @s opt_color matches 1 run team modify lobby_ffa_$(slot) color gray
$execute if score @s opt_color matches 2 run team modify lobby_ffa_$(slot) color dark_gray
$execute if score @s opt_color matches 3 run team modify lobby_ffa_$(slot) color black
$execute if score @s opt_color matches 4 run team modify lobby_ffa_$(slot) color aqua
$execute if score @s opt_color matches 5 run team modify lobby_ffa_$(slot) color dark_aqua
$execute if score @s opt_color matches 6 run team modify lobby_ffa_$(slot) color blue
$execute if score @s opt_color matches 7 run team modify lobby_ffa_$(slot) color dark_blue
$execute if score @s opt_color matches 8 run team modify lobby_ffa_$(slot) color green
$execute if score @s opt_color matches 9 run team modify lobby_ffa_$(slot) color dark_green
$execute if score @s opt_color matches 10 run team modify lobby_ffa_$(slot) color light_purple
$execute if score @s opt_color matches 11 run team modify lobby_ffa_$(slot) color dark_purple
$execute if score @s opt_color matches 12 run team modify lobby_ffa_$(slot) color red
$execute if score @s opt_color matches 13 run team modify lobby_ffa_$(slot) color dark_red
$execute if score @s opt_color matches 14 run team modify lobby_ffa_$(slot) color yellow
$execute if score @s opt_color matches 15 run team modify lobby_ffa_$(slot) color gold
$team join lobby_ffa_$(slot)


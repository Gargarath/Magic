## applique la couleur FFA choisie aux trims d'armure de @s
# appelee avec la classe de @s en argument

execute unless score $gamemode option_panel matches 0 run return 0
execute if entity @s[tag=invisibility_r] run return 0

$item modify entity @s armor.chest minecraft:armor_change/ffa/$(class)
$item modify entity @s armor.legs minecraft:armor_change/ffa/$(class)
$item modify entity @s armor.feet minecraft:armor_change/ffa/$(class)

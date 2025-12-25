# appelée par ctf:maps_systems/pirate/loop lorsque le levier du mortier rouge est activé active le mortier rouge

setblock 265 96 474 minecraft:lever[facing=west]
# place un nouveau levier
kill @e[tag=mortar_lever_red]
# kill le armorstand_compte à rebourd
execute positioned 265 96 474 as @a[distance=..10] at @s run playsound minecraft:ui.stonecutter.select_recipe master @s ~ ~ ~ 100 2
# fait du bruit autour
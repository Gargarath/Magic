# appelée par ctf:maps_systems/pirate/loop lorsque le levier du mortier bleu est activé active le mortier bleu

setblock 271 96 522 minecraft:lever[facing=east]
# place un nouveau levier
kill @e[tag=mortar_lever_blue]
# kill le armorstand_compte à rebourd
execute positioned 271 96 522 as @a[distance=..10] at @s run playsound minecraft:ui.stonecutter.select_recipe master @s ~ ~ ~ 100 2
# fait du bruit autour
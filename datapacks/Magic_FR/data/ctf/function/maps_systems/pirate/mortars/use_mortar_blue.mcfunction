# appelée par ctf:maps_systems/pirate/loop lorsque le levier du mortier bleu est activé active le mortier bleu

execute positioned 270 99 522 as @a[distance=..40] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~
execute positioned 270 99 522 run particle minecraft:explosion ~ ~ ~ 0.5 0.2 0.5 0 5 force
execute positioned 270 98 522 run effect give @a[distance=..1] minecraft:instant_damage 1 0 true
# annimation d'explosion + dégats
summon tnt 270 98.5 522 {Tags:["mortars_tnt","blue_tnt"],Motion:[0.35,2.0,0.82],fuse:10000}
# invoque la tnt bleue
setblock 271 96 522 air destroy
# détruit le levier
summon text_display 271 96.9 522 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["mortar_lever","mortar_lever_blue"],text:{"text":"60","bold":true}}
# invoque un area_effect_cloud qui indique combien de temps il reste
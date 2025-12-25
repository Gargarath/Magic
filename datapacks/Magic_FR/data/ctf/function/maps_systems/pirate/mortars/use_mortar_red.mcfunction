# appelée par ctf:maps_systems/pirate/loop lorsque le levier du mortier bleu est activé active le mortier bleu

execute positioned 266 99 474 as @a[distance=..40] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~
execute positioned 266 99 474 run particle minecraft:explosion ~ ~ ~ 0.5 0.2 0.5 0 5 force
execute positioned 266 98 474 run effect give @a[distance=..1] minecraft:instant_damage 1 0 true
# annimation d'explosion + dégats
summon tnt 266 98.5 474 {Tags:["mortars_tnt","red_tnt"],Motion:[0.35,2.0,0.82],fuse:10000}
# invoque la tnt bleue
setblock 265 96 474 air destroy
# détruit le levier
summon text_display 265 96.9 474 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["mortar_lever","mortar_lever_red"],text:{"text":"60","bold":true}}
# invoque un armor_stand qui indique combien de temps il reste
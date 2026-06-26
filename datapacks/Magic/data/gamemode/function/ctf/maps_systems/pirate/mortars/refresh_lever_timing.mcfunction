# appelée par ctf:maps_systems/pirate/loop toute les secondes si le lever de la map pirate est en cooldown, permet de refresh le temps restant du lever


execute if score @s mortars matches 20..39 run data merge entity @s {text:{"text":"59","bold":true}}
execute if score @s mortars matches 40..59 run data merge entity @s {text:{"text":"58","bold":true}}
execute if score @s mortars matches 60..79 run data merge entity @s {text:{"text":"57","bold":true}}
execute if score @s mortars matches 80..99 run data merge entity @s {text:{"text":"56","bold":true}}
execute if score @s mortars matches 100..119 run data merge entity @s {text:{"text":"55","bold":true}}
execute if score @s mortars matches 120..139 run data merge entity @s {text:{"text":"54","bold":true}}
execute if score @s mortars matches 140..159 run data merge entity @s {text:{"text":"53","bold":true}}
execute if score @s mortars matches 160..179 run data merge entity @s {text:{"text":"52","bold":true}}
execute if score @s mortars matches 180..199 run data merge entity @s {text:{"text":"51","bold":true}}
execute if score @s mortars matches 200..219 run data merge entity @s {text:{"text":"50","bold":true}}

execute if score @s mortars matches 220..239 run data merge entity @s {text:{"text":"49","bold":true}}
execute if score @s mortars matches 240..259 run data merge entity @s {text:{"text":"48","bold":true}}
execute if score @s mortars matches 260..279 run data merge entity @s {text:{"text":"47","bold":true}}
execute if score @s mortars matches 280..299 run data merge entity @s {text:{"text":"46","bold":true}}
execute if score @s mortars matches 300..319 run data merge entity @s {text:{"text":"45","bold":true}}
execute if score @s mortars matches 320..339 run data merge entity @s {text:{"text":"44","bold":true}}
execute if score @s mortars matches 340..359 run data merge entity @s {text:{"text":"43","bold":true}}
execute if score @s mortars matches 360..379 run data merge entity @s {text:{"text":"42","bold":true}}
execute if score @s mortars matches 380..399 run data merge entity @s {text:{"text":"41","bold":true}}
execute if score @s mortars matches 400..419 run data merge entity @s {text:{"text":"40","bold":true}}

execute if score @s mortars matches 420..439 run data merge entity @s {text:{"text":"39","bold":true}}
execute if score @s mortars matches 440..459 run data merge entity @s {text:{"text":"38","bold":true}}
execute if score @s mortars matches 460..479 run data merge entity @s {text:{"text":"37","bold":true}}
execute if score @s mortars matches 480..499 run data merge entity @s {text:{"text":"36","bold":true}}
execute if score @s mortars matches 500..519 run data merge entity @s {text:{"text":"35","bold":true}}
execute if score @s mortars matches 520..539 run data merge entity @s {text:{"text":"34","bold":true}}
execute if score @s mortars matches 540..559 run data merge entity @s {text:{"text":"33","bold":true}}
execute if score @s mortars matches 560..579 run data merge entity @s {text:{"text":"32","bold":true}}
execute if score @s mortars matches 580..599 run data merge entity @s {text:{"text":"31","bold":true}}
execute if score @s mortars matches 600..619 run data merge entity @s {text:{"text":"30","bold":true}}

execute if score @s[tag=mortar_lever_blue] mortars matches 540 positioned 255 93 489 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_blue] mortars matches 540 positioned 255 93 489 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_blue] mortars matches 560 positioned 255 93 489 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_blue] mortars matches 560 positioned 255 93 489 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_blue] mortars matches 580 positioned 255 93 489 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_blue] mortars matches 580 positioned 255 93 489 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_blue] mortars matches 600 positioned 255 93 489 as @a[distance=..30] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 0

execute if score @s[tag=mortar_lever_red] mortars matches 540 positioned 281 93 507 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_red] mortars matches 540 positioned 281 93 507 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_red] mortars matches 560 positioned 281 93 507 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_red] mortars matches 560 positioned 281 93 507 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_red] mortars matches 580 positioned 281 93 507 run particle minecraft:happy_villager ~ ~ ~ 2.5 1 2.5 0 15
execute if score @s[tag=mortar_lever_red] mortars matches 580 positioned 281 93 507 as @a[distance=..30] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 100 2
execute if score @s[tag=mortar_lever_red] mortars matches 600 positioned 281 93 507 as @a[distance=..30] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 0

execute if score @s mortars matches 620..639 run data merge entity @s {text:{"text":"29","bold":true}}
execute if score @s mortars matches 640..659 run data merge entity @s {text:{"text":"28","bold":true}}
execute if score @s mortars matches 660..679 run data merge entity @s {text:{"text":"27","bold":true}}
execute if score @s mortars matches 680..699 run data merge entity @s {text:{"text":"26","bold":true}}
execute if score @s mortars matches 700..719 run data merge entity @s {text:{"text":"25","bold":true}}
execute if score @s mortars matches 720..739 run data merge entity @s {text:{"text":"24","bold":true}}
execute if score @s mortars matches 740..759 run data merge entity @s {text:{"text":"23","bold":true}}
execute if score @s mortars matches 760..779 run data merge entity @s {text:{"text":"22","bold":true}}
execute if score @s mortars matches 780..799 run data merge entity @s {text:{"text":"21","bold":true}}
execute if score @s mortars matches 800..819 run data merge entity @s {text:{"text":"20","bold":true}}

execute if score @s mortars matches 820..839 run data merge entity @s {text:{"text":"19","bold":true}}
execute if score @s mortars matches 840..859 run data merge entity @s {text:{"text":"18","bold":true}}
execute if score @s mortars matches 860..879 run data merge entity @s {text:{"text":"17","bold":true}}
execute if score @s mortars matches 880..899 run data merge entity @s {text:{"text":"16","bold":true}}
execute if score @s mortars matches 900..919 run data merge entity @s {text:{"text":"15","bold":true}}
execute if score @s mortars matches 920..939 run data merge entity @s {text:{"text":"14","bold":true}}
execute if score @s mortars matches 940..959 run data merge entity @s {text:{"text":"13","bold":true}}
execute if score @s mortars matches 960..979 run data merge entity @s {text:{"text":"12","bold":true}}
execute if score @s mortars matches 980..999 run data merge entity @s {text:{"text":"11","bold":true}}
execute if score @s mortars matches 1000..1019 run data merge entity @s {text:{"text":"10","bold":true}}

execute if score @s mortars matches 1020..1039 run data merge entity @s {text:{"text":"9","bold":true}}
execute if score @s mortars matches 1040..1059 run data merge entity @s {text:{"text":"8","bold":true}}
execute if score @s mortars matches 1060..1079 run data merge entity @s {text:{"text":"7","bold":true}}
execute if score @s mortars matches 1080..1099 run data merge entity @s {text:{"text":"6","bold":true}}
execute if score @s mortars matches 1100..1119 run data merge entity @s {text:{"text":"5","bold":true}}
execute if score @s mortars matches 1120..1139 run data merge entity @s {text:{"text":"4","bold":true}}
execute if score @s mortars matches 1140..1159 run data merge entity @s {text:{"text":"3","bold":true}}
execute if score @s mortars matches 1160..1179 run data merge entity @s {text:{"text":"2","bold":true}}
execute if score @s mortars matches 1180..1199 run data merge entity @s {text:{"text":"1","bold":true}}

execute if score @s mortars matches 1220.. run kill @s
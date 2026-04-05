# Cette commande va detruire tous les itemframes proches du joueur qui appuie sur le boutton reset puis les réinvoquer en coordo relatif à l'armorstand tag=room1 


#####              DETRUIT LES ITEM FRAME ET LES REINVOQUE VIDES                #####

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ at @p[gamemode=!spectator] run kill @e[type=minecraft:item_frame,distance=..15]
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~1 ~ ~4 {Facing:2b,Invulnerable:1b,Tags:[boots]}
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~1 ~1 ~4 {Facing:2b,Invulnerable:1b,Tags:[legs]}
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~1 ~2 ~4 {Facing:2b,Invulnerable:1b,Tags:[chest]}
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~2 ~2 ~4 {Facing:2b,Invulnerable:1b,Tags:[weapon1]}
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~-1 ~2 ~4 {Facing:2b,Invulnerable:1b,Tags:[spell1]}

execute if entity @s[tag=!archer] positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~-1 ~1 ~4 {Facing:2b,Invulnerable:1b,Tags:[spell2]}
execute if entity @s[tag=!archer] positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~-1 ~ ~4 {Facing:2b,Invulnerable:1b,Tags:[spell3]}
# si @s n'est pas archer

execute if entity @s[tag=archer] positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~-1 ~1 ~4 {Facing:2b,Invulnerable:1b,Tags:[spell3]}
execute if entity @s[tag=archer] positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ run summon minecraft:item_frame ~-1 ~ ~4 {Facing:2b,Invulnerable:1b,Tags:[spell2]}
# si @s est arche (=inverser spell2 et spell3)

### Actualise le panneau de points restants
function shop:reset_money_sign

### Actualise le panneau ready

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @s[distance=..15,gamemode=!spectator] is_ready matches 0 run data merge block ~4 ~1 ~ {front_text:{messages:[{"text":" ","click_event":{"action":"run_command","command":"/trigger ready_sign add 1"}},{"text":"Pas prêt","color":"black","bold":true},{"text":"x","color":"dark_red","bold":true},""]}}
# Si joueur est pas prêt

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @s[distance=..15,gamemode=!spectator] is_ready matches 1 run data merge block ~4 ~1 ~ {front_text:{messages:[{"text":" ","click_event":{"action":"run_command","command":"/trigger ready_sign add 1"}},{"text":"Prêt","color":"black","bold":true},{"text":"√","color":"dark_green","bold":true},""]}}
# Si joueur est prêt

###    REMPLACE L'ITEM FRAME DES BOTTES PAR LES BOTTES ADAPTES AU NIVEAU D'ACHAT DU JOUEUR ###

				# BUY BOOTS #

			
	# Niveau 1

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 0 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate I - 2 PH","minecraft:enchantment_glint_override":false}}}

	# Niveau 2

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 1 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate II - 4 PH","minecraft:enchantment_glint_override":true}}}

	# Niveau 3

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 2 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate III - 6 PH","minecraft:enchantment_glint_override":false}}}

	# Niveau 4

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 3 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate IV - 8 PH","minecraft:enchantment_glint_override":true}}}

	# Niveau 5

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 4 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate V - 10 PH","minecraft:enchantment_glint_override":false}}}

	# Niveau 6

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 5 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate VI - 12 PH","minecraft:enchantment_glint_override":true}}}

	# Niveau 7

execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 6 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate VII - 14 PH","minecraft:enchantment_glint_override":false}}}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 7 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate VIII - 16 PH","minecraft:enchantment_glint_override":true}}}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 8 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate IX - 18 PH","minecraft:enchantment_glint_override":false}}}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 9 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:custom_name":"Bottes d'acrobate X - 20 PH","minecraft:enchantment_glint_override":true}}}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] boots matches 10 run data merge entity @e[tag=boots,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}

###    REMPLACE L'ITEM FRAME DES LEGS PAR LES LEGS ADAPTES AU NIVEAU D'ACHAT DU JOUEUR ###

				# BUY LEGS #
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 0 run data merge entity @e[tag=legs,distance=..15,limit=1] {Item:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse I - 3 PH"}}}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 1 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse II - 6 PH","minecraft:enchantment_glint_override":true}}}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 2 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse III - 9 PH"}}}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 3 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse IV - 12 PH","minecraft:enchantment_glint_override":true}}}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 4 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse V - 15 PH"}}}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 5 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse VI - 18 PH","minecraft:enchantment_glint_override":true}}}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 6 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse VII - 21 PH"}}}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 7 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse VIII - 24 PH","minecraft:enchantment_glint_override":true}}}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 8 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse IX - 27 PH"}}}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 9 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_name":"Jambières de vitesse X - 30 PH","minecraft:enchantment_glint_override":true}}}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] legs matches 10 run data merge entity @e[tag=legs,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}


###    REMPLACE L'ITEM FRAME DU CHEST PAR LE CHEST ADAPTE AU NIVEAU D'ACHAT DU JOUEUR ###

				# BUY CHEST # 
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 0 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé I - 5 PH"}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 1 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé II - 10 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 2 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé III - 15 PH"}},ItemDropChance:1.0f}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 3 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé IV - 20 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 4 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé V - 25 PH"}},ItemDropChance:1.0f}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 5 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé VI - 30 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 6 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé VII - 35 PH"}},ItemDropChance:1.0f}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 7 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé VIII - 40 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 8 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé IX - 45 PH"}},ItemDropChance:1.0f}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 9 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:custom_name":"Plastron de santé X - 50 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if score @p[distance=..15,gamemode=!spectator] chest matches 10 run data merge entity @e[tag=chest,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}


## BUY WEAPON1 ##
# GUERRIER #

# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 0 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille I - 10 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 1 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille II - 20 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 2 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille III - 30 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 3 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille IV - 40 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 4 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille V - 50 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 5 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille VI - 60 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 6 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille VII - 70 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 7 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille VIII - 80 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 8 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille IX - 90 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 9 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Hache de bataille X - 100 PH","custom_model_data":{strings:["battle_axe"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 10 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"}}}}


# ARCHER #

# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 0 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat I - 10 PH"}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 1 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat II - 20 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 2 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat III - 30 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 3 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat IV - 40 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 4 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat V - 50 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 5 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat VI - 60 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 6 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat VII - 70 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 7 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat VIII - 80 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 8 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat IX - 90 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 9 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":"Arc de combat X - 100 PH","minecraft:enchantment_glint_override":true}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 10 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}


# MAGE #

# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 0 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage I - 10 PH"}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 1 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage II - 20 PH"}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 2 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage III - 30 PH"}},ItemDropChance:1.0f}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 3 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage IV - 40 PH"}},ItemDropChance:1.0f}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 4 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":"Bâton de Mage V - 50 PH"}},ItemDropChance:1.0f}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 5 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_name":"Bâton de Mage VI - 60 PH"}},ItemDropChance:1.0f}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 6 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_name":"Bâton de Mage VII - 70 PH"}},ItemDropChance:1.0f}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 7 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_name":"Bâton de Mage VIII - 80 PH"}},ItemDropChance:1.0f}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 8 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_name":"Bâton de Mage IX - 90 PH"}},ItemDropChance:1.0f}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 9 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_name":"Bâton de Mage X - 100 PH"}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 10 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}


# ASSASSIN #

# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 0 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise I - 10 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}


# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 1 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise II - 20 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 2 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise III - 30 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 4
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 3 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise IV - 40 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 5
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 4 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise V - 50 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 6
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 5 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise VI - 60 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 7
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 6 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise VII - 70 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 8
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 7 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise VIII - 80 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 9
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 8 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise IX - 90 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau 10
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 9 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":"Dague sournoise X - 100 PH","custom_model_data":{strings:["dagger"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] weapon1 matches 10 run data merge entity @e[tag=weapon1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}}}



# --- SPELL 1 ------------------------------------------------------

# GUERRIER #

# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell1 matches 0 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Berzerk I - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{strings:["spell1_w"]}}}}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell1 matches 1 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Berzerk II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_w"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell1 matches 2 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Berzerk III - 200 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_w"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell1 matches 3 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ARCHER
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell1 matches 0 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Flèche explosive I - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_a"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell1 matches 1 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Flèche explosive II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_a"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell1 matches 2 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Flèche explosive III - 240 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_a"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell1 matches 3 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# MAGE
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell1 matches 0 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Trait de feu I - 30 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_m"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell1 matches 1 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Trait de feu II - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_m"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell1 matches 2 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Trait de feu III - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_m"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell1 matches 3 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ASSASSIN
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell1 matches 0 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Embuscade I - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_r"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell1 matches 1 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Embuscade II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_r"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell1 matches 2 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Embuscade III - 240 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell1_r"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell1 matches 3 run data merge entity @e[tag=spell1,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}



# --- SPELL 2 ------------------------------------------------------

# WARRIOR
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell2 matches 0 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Drapeau de ralliement I - 40 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_w"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell2 matches 1 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Drapeau de ralliement II - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_w"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell2 matches 2 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Drapeau de ralliement III - 90 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_w"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell2 matches 3 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ARCHER
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell2 matches 0 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Piège à ours I - 30 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_a"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell2 matches 1 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Piège à ours II - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_a"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell2 matches 2 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","text":"Piège à ours III - 90 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_a"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell2 matches 3 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# MAGE
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell2 matches 0 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","text":"Tempête de foudre I - 30 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_m"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell2 matches 1 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","text":"Tempête de foudre II - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_m"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell2 matches 2 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","text":"Tempête de foudre III - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_m"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell2 matches 3 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ASSASSIN
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell2 matches 0 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gray","text":"Voie des ombres - 100 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell2_r"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell2 matches 1 run data merge entity @e[tag=spell2,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}



# --- SPELL 3 ------------------------------------------------------

# WARRIOR
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell3 matches 0 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gray","text":"Grappin - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_w"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=warrior,gamemode=!spectator] if score @p[distance=..15] spell3 matches 1 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ARCHER
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell3 matches 0 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"aqua","text":"Flèche de glace I - 60 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_a"]}}},ItemDropChance:1.0f}

# Niveau 2
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell3 matches 1 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"aqua","text":"Flèche de glace II - 150 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_a"]}}},ItemDropChance:1.0f}

# Niveau 3
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell3 matches 2 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"aqua","text":"Flèche de glace III - 240 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_a"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=archer,gamemode=!spectator] if score @p[distance=..15] spell3 matches 3 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# MAGE
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell3 matches 0 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_purple","text":"Téléportation - 100 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_m"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=mage,gamemode=!spectator] if score @p[distance=..15] spell3 matches 1 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}


# ASSASSIN
# Niveau 1
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell3 matches 0 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_gray","text":"Bombe d'ombre - 90 PH"},"minecraft:enchantment_glint_override":true,"minecraft:custom_model_data":{"strings":["spell3_r"]}}},ItemDropChance:1.0f}

# Niveau Max
execute positioned ~ ~-9 ~ at @e[tag=room,distance=..15] positioned ~ ~9 ~ if entity @a[distance=..15,tag=rogue,gamemode=!spectator] if score @p[distance=..15] spell3 matches 1 run data merge entity @e[tag=spell3,distance=..15,limit=1] {ItemRotation:0b,Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_red","text":"Niveau Max"},"minecraft:enchantment_glint_override":false}},ItemDropChance:1.0f}

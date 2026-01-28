# This is the "main" function. This will play EVERY frame of the game!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > tick
# that file says what functions get repeated each tick/frame.


    ## DMG BOW

execute as @e[type=#minecraft:spellable] run function main:stats/bow/bow_damage/store_hp_before
# calcule la vie des joueurs et boss en perma (pour ensuite calculer la diff quand ils prennent une flèche)

## KILLFEED
scoreboard players remove @e[type=#spellable,scores={special_dmg_recieved=1..}] special_dmg_recieved 1
execute as @e[type=#spellable,scores={special_dmg_recieved=0}] run function ctf:killfeed/clear_death_message
# enlève un score de special_dmg_recieved à ceux qui viennent de se prendre des /damage

    ## HEAL HORS FIGHT
scoreboard players add @a[scores={out_of_fight=0..299,in_fight=0}] out_of_fight 1
# ajoute un de score de temps hors fight à tous les joueurs qui n'ont pas la fast regen et n'ont pas encore subit de dégâts
execute as @a[scores={in_fight=1..}] run function ctf:healing_out_of_fight/reset_time_out_of_fight
# enlève la regen puissante aux joueurs qui la possède et suibissent des dégâts
execute as @a[scores={out_of_fight=100}] run function ctf:healing_out_of_fight/boost_health1
execute as @a[scores={out_of_fight=200}] run function ctf:healing_out_of_fight/boost_health2
execute as @a[scores={out_of_fight=300}] run function ctf:healing_out_of_fight/boost_health3

# Gere les spells

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..,trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:testspell
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..,trapped=0..},team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/trapped
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..,hooked_w=0..},team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/hooked
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..},tag=is_hooking,team=!respawn_red,team=!respawn_blue] run function spells:cant_usespell/hooker
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..},team=respawn_red] run function spells:cant_usespell/respawn
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={usespell=1..},team=respawn_blue] run function spells:cant_usespell/respawn

execute as @a[scores={Player=1..},tag=save_inventory,tag=!in_countdown] unless predicate offhand_autorized run function main:items_positions/used_keybind2
execute as @a[scores={Player=1..},tag=save_inventory,tag=in_countdown] unless predicate offhand_autorized run function main:launch_arena/countdown/cant_usespell

# Detecte si un joueur clique droit sur un objet carrot_on_a_stick -> lance une fonction qui va executer une fonction en fonction de sa classe et de son niveau sur le spell en question (fonction spells:testspell1)


											# FONCTIONNEMENT SPELLS  #

					# Guerrier #

		# Spell1 #

scoreboard players remove @a[scores={using_berzerk=1..}] using_berzerk 1
# diminue le score de berzerk de ceux qui en ont
execute as @a[scores={using_berzerk=0}] run function spells:spellsystem/spell1/spell1_w/no_more_berzerk
# ceux qui n'ont plus de temps de berzerk -> lance leur cd et reset leur bossbar

execute as @a[scores={using_berzerk=0..}] run function spells:spellsystem/spell1/spell1_w/bossbar/refresh_bossbar
#refresh les bossbar de berzerk

execute at @a[scores={spell1=1,using_berzerk=1..},tag=warrior] run particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0.1 2 force
# Affiche particule autour du joueur sous berzerk I
execute at @a[scores={spell1=2,using_berzerk=1..},tag=warrior] run particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0.1 4 force
# Affiche particule autour du joueur sous berzerk II
execute at @a[scores={spell1=3,using_berzerk=1..},tag=warrior] run particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0.1 8 force
# Affiche particule autour du joueur sous berzerk III

	# Spell2 #

execute as @e[type=minecraft:area_effect_cloud,scores={timer_rally_flag=1..}] run function spells:spellsystem/spell2/spell2_w/loop/detect_flag

execute as @a[scores={timer_rally_flag=0}] run function spells:spellsystem/spell2/spell2_w/summon_flag/destroy_flag/testplayer
# supprime les drapeaux et lance les CD + clear les bossbar
scoreboard players remove @a[scores={timer_rally_flag=1..}] timer_rally_flag 1
execute as @a[scores={timer_rally_flag=1..}] run function spells:spellsystem/spell2/spell2_w/refresh_bossbar

	# Spell3 #

execute as @a[scores={hooked_w=1..}] run function spells:spellsystem/spell3/spell3_w/hook/bossbar/refresh_bossbar_hooked
execute as @a[scores={hooked_w=0}] run function spells:spellsystem/spell3/spell3_w/hook/bossbar/no_more_stun

execute as @a[scores={is_hooking_w=1..}] run function spells:spellsystem/spell3/spell3_w/hook/bossbar/refresh_bossbar_hooker

					# Archer #

execute as @a[scores={used_bow=1..}] at @s run function spells:arrow_detection/mark_arrow
execute as @e[type=arrow,tag=marked,tag=blue] at @s rotated as @e[type=marker,tag=arrow_rotation,limit=1,sort=nearest] positioned ^ ^ ^1.5 positioned ~ ~-1 ~ if entity @e[type=#spellable,distance=..1,team=!blue] run function spells:arrow_detection/touch_player_blue
execute as @e[type=arrow,tag=marked,tag=red] at @s rotated as @e[type=marker,tag=arrow_rotation,limit=1,sort=nearest] positioned ^ ^ ^1.5 positioned ~ ~-1 ~ if entity @e[type=#spellable,distance=..1,team=!red] run function spells:arrow_detection/touch_player_red
execute as @e[type=#spellable,scores={arrow_owner=1..}] run function spells:arrow_detection/hit_by_arrow


# PASSIF Archer
execute as @a[tag=invisibility_r,scores={loud_bar=1..}] run execute at @s run particle minecraft:effect ~ ~0.8 ~ 0.1 0.3 0.1 0 5 force @a[tag=archer,team=!spectator]

execute as @e[type=minecraft:arrow,nbt={inGround:1b,life:20s}] unless score @s spell1_a_direction matches -1 at @s run function spells:arrow_detection/clear_ground_arrow
# Detruit toute fleche 3s après qu'elle ait touché le sol
execute as @e[type=minecraft:arrow,limit=1,nbt={inGround:1b,pickup:1b}] run data merge entity @s {pickup:0b}
# Rend toute fleche ramassable non ramassable


execute as @a[scores={shotarrow=1..},tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] run function spells:arrow_give_system/arrowcounter
# si un joueur tire une fleche non explosive ou glacée -> lui enleve 1 en score de arrow


	# Spell1 #


execute as @a[scores={explosive_arrow_timer=0..}] run function spells:spellsystem/spell1/spell1_a/refresh_bossbar
execute as @a[scores={explosive_player_timer=1..}] run function spells:spellsystem/spell1/spell1_a/refresh_bossbar_victim
# actualise les bossbar de flèche explo

execute as @a[scores={shotarrow=1..},tag=Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/usedexplosivearrow_a
# Redonne une fleche normale a celui qui vient d'utiliser sa fleche explosive

execute at @a[scores={shotarrow=0},tag=Has_explosive_arrow] run particle minecraft:dripping_lava ~ ~2 ~ 0.1 0.1 0.1 1 1 force
# Les joueurs avec leur prochaine fleche explosive on des particules au dessus de la tête

execute as @a[scores={shotarrow=0,explo_sneak_change=0},tag=Has_explosive_arrow] if predicate minecraft:is_sneaking run function spells:spellsystem/spell1/spell1_a/sneak_change/start_sneak
execute as @a[scores={shotarrow=0,explo_sneak_change=1},tag=Has_explosive_arrow] unless predicate minecraft:is_sneaking run function spells:spellsystem/spell1/spell1_a/sneak_change/stop_sneak
# detecte si @s sneak pour changer de flèche

# Niveau 1-3

# gere l'explo au sol
execute as @e[type=minecraft:arrow,scores={spell1_a_direction=1..}] if data entity @s {inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck"}]}}}} run function spells:spellsystem/spell1/spell1_a/onground/start_countdown

# gere l'explo au sur un joueur ou un mort vivant (liche)
execute as @e[type=#minecraft:spellable,nbt={active_effects:[{id:"minecraft:luck"}]}] run function spells:spellsystem/spell1/spell1_a/onplayer/test_player
# gere l'explo au sur un mob vivant (cerise / golem)
#execute as @e[type=#minecraft:living_spellabale,type=!player,nbt={active_effects:[{id:"minecraft:luck"}]}] run function spells:spellsystem/spell1/spell1_a/onplayer/test_player

	# Spell2 #

execute as @e[type=wandering_trader,tag=trap] at @s run function spells:spellsystem/spell2/spell2_a/someoneclose/check_trap
# check si quelqu'un est proche + affiche les particules

execute as @a[scores={trapped=1000}] at @s at @e[tag=trap,sort=nearest,limit=1,distance=..2] run function spells:spellsystem/spell2/spell2_a/gettrapped1
execute as @a[scores={trapped=1001}] at @s at @e[tag=trap,sort=nearest,limit=1,distance=..2] run function spells:spellsystem/spell2/spell2_a/gettrapped2
execute as @a[scores={trapped=1002}] at @s at @e[tag=trap,sort=nearest,limit=1,distance=..2] run function spells:spellsystem/spell2/spell2_a/gettrapped3
execute as @a[scores={trapped=0}] run function spells:spellsystem/spell2/spell2_a/end_trap
execute at @a[scores={trapped=0..}] run particle minecraft:crit ~ ~0.4 ~ 0.2 0.1 0.2 0.001 10 force @a
execute as @a[scores={trapped=0..999}] run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/refresh_bossbar

tag @e[scores={trap_number_a=1..},type=!player] add have_trap_number
# ajoute le tag have_trapp_number à tous les pièges à ours qui sont attribués à un joueur afin que personne ne puisse se les atribuer si il pose un piège à ours à côté

execute as @e[type=minecraft:wandering_trader,nbt={HurtTime:10s}] run function spells:spellsystem/spell2/spell2_a/villagertakesdmg
# test quel wandering_trader a subit des dégats pour détruire le bon piège à ours

	# Spell3 #

execute as @a[scores={shotarrow=1..},tag=Has_freeze_arrow] run function spells:spellsystem/spell3/spell3_a/usedfreezearrow_a
# Redonne une fleche normale a celui qui vient d'utiliser sa fleche de glace

execute at @a[scores={shotarrow=0},tag=Has_freeze_arrow] run particle minecraft:dripping_water ~ ~2 ~ 0.1 0.1 0.1 1 1 force
# Les joueurs avec leur prochaine fleche de glace on des particules au dessus de la tête

scoreboard players remove @e[scores={freeze=1..}] freeze 1
# Enlève 1 de score de freeze à @a qui a un score de freeze de 1 ou plus (pour savoir combien de temps il leur reste)
execute as @e[scores={freeze=0}] run function spells:spellsystem/spell3/spell3_a/stop_freeze
# enleve le freeze de tous ceux qui ont un score de freeze de 0

execute as @a[scores={freeze=0..}] run function spells:spellsystem/spell3/spell3_a/refresh_bossbar
# refresh les bossbar de gel des joueurs gelés


execute as @e[type=#spellable,nbt={active_effects:[{id:"minecraft:unluck"}]}] run function spells:spellsystem/spell3/spell3_a/get_frozen/test_player
# si un joueur ou mort vivant a l'effet de luck (= a pris une fleche de glace) -> test par qui il se l'est prise
execute as @e[type=#living_spellabale,type=!player,nbt={active_effects:[{id:"minecraft:unluck"}]}] run function spells:spellsystem/spell3/spell3_a/get_frozen/test_player
# si un mob vivant non joueur a l'effet de luck (= a pris une fleche de glace) -> test par qui il se l'est prise


					# Mage

	# WEAPON1 #

execute as @a[scores={usespell=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"weapon_1_m":1b}}}}] run function spells:spellsystem/weapon1_m/use_stick/usestick
# lance le spell du baton de mage au nom du joueur qui l'utilise

# donne du mana a ceux a qui il en manque
execute as @a[tag=mage,scores={weapon1=1..,weapon1_mana_m=..99}] run function spells:spellsystem/weapon1_m/refresh_timer/check_timer
# actualise l'affichage de la barre de mana des mage qui ont le bâton de niveau 1 ou plus

	# Spell 1 #

execute as @e[type=#spellable,scores={burning=0..}] run function spells:spellsystem/spell1/spell1_m/refresh_bossbar
# gère l'effet de brulure

	# Spell2 #

execute as @e[type=minecraft:area_effect_cloud,scores={cloudtimer_m=0..}] run function spells:spellsystem/spell2/spell2_m/loop/detect_cloud
# gère la clock des nuage (dmg et particule)


scoreboard players remove @a[scores={thunderstrm_time=1..}] thunderstrm_time 1
execute as @a[scores={thunderstrm_time=0..}] run function spells:spellsystem/spell2/spell2_m/refresh_bossbar
execute as @a[scores={thunderstrm_time=0}] run function spells:spellsystem/spell2/spell2_m/no_more_thunderstorm
# gere la bossbar de tempete de foudre




	# Spell3 #

execute as @a[tag=mage,scores={spell3=1,cooldownspell3=-1}] run execute as @s at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.3 if block ~ ~ ~ #spell_beam run function spells:spellsystem/spell3/spell3_m/trail
scoreboard players set @a[scores={tp_range=100..}] tp_range 100

scoreboard players remove @a[scores={can_tp_m=1..}] can_tp_m 1

					# Assassin #

		# Spell1 #

execute as @a[tag=invisibility_r] unless entity @s[scores={dealdmg=0,dmgtaken=0}] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# Si l'assassin prend des degats ou en inflige -> lance le stop de son spell

execute as @a[scores={is_sneaking=0..},tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/0
execute as @a[scores={is_sneaking=-1},tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/50
execute as @a[scores={is_sprinting=0..,is_sneaking=-1},tag=invisibility_r] run function spells:spellsystem/spell1/spell1_r/100
scoreboard players remove @a[scores={is_sneaking=0..}] is_sneaking 1
scoreboard players set @a[scores={is_sprinting=0..}] is_sprinting -1
# permet de gérer la barre de bruit de @s

execute as @a[scores={using_ambush=0..}] run function spells:spellsystem/spell1/spell1_r/bossbar/refresh_bossbar
#refresh les bossbar de embuscade
execute as @a[scores={using_ambush=0}] run function spells:spellsystem/spell1/spell1_r/nomoreinvisibility_r
# ceux qui n'ont plus de temps de embuscade -> lance leur cd et reset leur bossbar




		# Spell2 #

execute as @e[type=minecraft:wandering_trader,nbt={HurtTime:10s}] run function spells:spellsystem/spell2/spell2_r/villagertakesdmg
# test quel wandering_trader a subit des dégats pour détruire la bonne voie des ombres

tag @e[scores={backup_number_r=1..},type=!player] add have_backup_number
# ajoute le tag have_backup_number à toutes les entrée de voie des ombres qui sont attribuées à un joueur afin que personne ne puisse se les atribuer si il cast une voie des ombres à côté

execute as @e[tag=backup_r,type=wandering_trader] at @s run function spells:spellsystem/spell2/spell2_r/particle
# Affiche les voies des ombres aux joueurs


	# Spell3 #

execute as @a[tag=rogue,tag=launched_smoke_bomb_r] run function spells:spellsystem/spell3/spell3_r/summon_system/testplayer
# permet de calculer le point d'impact des potions des joueurs qui ont les potions en l'air
execute as @a[scores={smoke_bomb_timer=0..}] run function spells:spellsystem/spell3/spell3_r/refresh_bossbar
# permet de refresh les bossbar de bombe d'ombre

execute at @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_lvl1] run particle minecraft:smoke ~ ~1 ~ 2.5 1 2.5 0 5 force @a
execute at @e[type=minecraft:lingering_potion,nbt={Item:{tag:{Tags:["smoke_bomb"]}}}] run particle smoke ~ ~ ~ 0 0 0 0 1 force @a
# permet d'afficher les particules sur les bombes d'ombre

execute as @a[tag=!spell_immune,tag=!rogue,scores={in_smoke1=-1}] at @s if entity @e[type=area_effect_cloud,tag=smoke_bomb_lvl1,distance=..4] run function spells:spellsystem/spell3/spell3_r/enter_smoke
execute as @a[tag=!spell_immune,tag=!rogue,scores={in_smoke1=1}] at @s unless entity @e[type=area_effect_cloud,tag=smoke_bomb_lvl1,distance=..4] run function spells:spellsystem/spell3/spell3_r/leave_smoke
execute as @a[tag=Has_Red_flag,scores={in_smoke1=1}] run function ctf:usespellwithflag/usespell_redflag
execute as @a[tag=Has_Blue_flag,scores={in_smoke1=1}] run function ctf:usespellwithflag/usespell_blueflag

execute at @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_lvl1] run effect give @a[distance=..4,tag=!spell_immune,tag=!rogue] blindness 2 0 true
execute at @e[type=minecraft:area_effect_cloud,tag=smoke_bomb_lvl1] run effect give @a[distance=..4,tag=!spell_immune,tag=!rogue] slowness 1 0 true
# gère les effets des bombes d'ombre



								## CLOCK POUR LES COOLDOWNS ET FLECHES ##

scoreboard players remove @a[scores={cooldown1_clock=1..}] cooldown1_clock 1
scoreboard players remove @a[scores={cooldown2_clock=1..}] cooldown2_clock 1
scoreboard players remove @a[scores={cooldown3_clock=1..}] cooldown3_clock 1

execute as @a[scores={cooldown1_clock=0}] run function spells:cooldowns/cooldownspell1/cooldownspell1_clock
execute as @a[scores={cooldown2_clock=0}] run function spells:cooldowns/cooldownspell2/cooldownspell2_clock
execute as @a[scores={cooldown3_clock=0}] run function spells:cooldowns/cooldownspell3/cooldownspell3_clock

execute as @a[tag=archer,tag=!Has_explosive_arrow,tag=!Has_freeze_arrow,scores={arrow_cooldown=1..}] if score @s arrow < @s maxarrow run function spells:arrow_give_system/arrow_clock
# appelée par rien
# setup les strings en français (utilisés quand on doit afficher du texte)

data modify storage strings fr_fr set value {\
"tr_changed_language":"Votre langue a été définie sur : Français",\
"tr_joined_spectator":"Vous avez rejoint le mode spectateur !",\
"tr_left_spectator":"Vous avez quitté le mode spectateur !",\
\
\
"tr_stuff_generic_quit_arena_name":"Quitter l'arène",\
"tr_stuff_generic_cooldown_lore_1":"Votre sort doit se recharger",\
\
\
"tr_warrior_weapon1_0_name":"Hache de débutant",\
"tr_warrior_weapon1_0_lore_1":"+1 point d'attaque",\
"tr_warrior_weapon1_1_name":"Hache de bataille I",\
"tr_warrior_weapon1_1_lore_1":"+1 point d'attaque",\
"tr_warrior_weapon1_2_name":"Hache de bataille II",\
"tr_warrior_weapon1_2_lore_1":"+2 points d'attaque",\
"tr_warrior_weapon1_3_name":"Hache de bataille III",\
"tr_warrior_weapon1_3_lore_1":"+3 points d'attaque",\
"tr_warrior_weapon1_4_name":"Hache de bataille IV",\
"tr_warrior_weapon1_4_lore_1":"+4 points d'attaque",\
"tr_warrior_weapon1_5_name":"Hache de bataille V",\
"tr_warrior_weapon1_5_lore_1":"+5 points d'attaque",\
"tr_warrior_weapon1_6_name":"Hache de bataille VI",\
"tr_warrior_weapon1_6_lore_1":"+6 points d'attaque",\
"tr_warrior_weapon1_7_name":"Hache de bataille VII",\
"tr_warrior_weapon1_7_lore_1":"+7 points d'attaque",\
"tr_warrior_weapon1_8_name":"Hache de bataille VIII",\
"tr_warrior_weapon1_8_lore_1":"+8 points d'attaque",\
"tr_warrior_weapon1_9_name":"Hache de bataille IX",\
"tr_warrior_weapon1_9_lore_1":"+9 points d'attaque",\
"tr_warrior_weapon1_10_name":"Hache de bataille X",\
"tr_warrior_weapon1_10_lore_1":"+10 points d'attaque",\
"tr_warrior_weapon1_max_name":"Hache de bataille X",\
"tr_warrior_chest_1_name":"Plastron de santé I",\
"tr_warrior_chest_1_lore_1":"+0.5 point d'armure.",\
"tr_warrior_chest_1_lore_2":"+15% points de vie.",\
"tr_warrior_chest_2_name":"Plastron de santé II",\
"tr_warrior_chest_2_lore_1":"+1 point d'armure.",\
"tr_warrior_chest_2_lore_2":"+30% points de vie.",\
"tr_warrior_chest_3_name":"Plastron de santé III",\
"tr_warrior_chest_3_lore_1":"+1.5 point d'armure.",\
"tr_warrior_chest_3_lore_2":"+45% points de vie.",\
"tr_warrior_chest_4_name":"Plastron de santé IV",\
"tr_warrior_chest_4_lore_1":"+2 points d'armure.",\
"tr_warrior_chest_4_lore_2":"+60% points de vie.",\
"tr_warrior_chest_5_name":"Plastron de santé V",\
"tr_warrior_chest_5_lore_1":"+2.5 points d'armure.",\
"tr_warrior_chest_5_lore_2":"+75% points de vie.",\
"tr_warrior_chest_6_name":"Plastron de santé VI",\
"tr_warrior_chest_6_lore_1":"+3 points d'armure.",\
"tr_warrior_chest_6_lore_2":"+90% points de vie.",\
"tr_warrior_chest_7_name":"Plastron de santé VII",\
"tr_warrior_chest_7_lore_1":"+3.5 points d'armure.",\
"tr_warrior_chest_7_lore_2":"+105% points de vie.",\
"tr_warrior_chest_8_name":"Plastron de santé VIII",\
"tr_warrior_chest_8_lore_1":"+4 points d'armure.",\
"tr_warrior_chest_8_lore_2":"+120% points de vie.",\
"tr_warrior_chest_9_name":"Plastron de santé IX",\
"tr_warrior_chest_9_lore_1":"+4.5 points d'armure.",\
"tr_warrior_chest_9_lore_2":"+135% points de vie.",\
"tr_warrior_chest_10_name":"Plastron de santé X",\
"tr_warrior_chest_10_lore_1":"+5 points d'armure.",\
"tr_warrior_chest_10_lore_2":"+150% points de vie.",\
"tr_warrior_chest_max_name":"Plastron de santé X",\
"tr_warrior_legs_1_name":"Jambières de vitesse I",\
"tr_warrior_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_warrior_legs_1_lore_2":"+1,5% vitesse de déplacement.",\
"tr_warrior_legs_2_name":"Jambières de vitesse II",\
"tr_warrior_legs_2_lore_1":"+1 point d'armure.",\
"tr_warrior_legs_2_lore_2":"+3% vitesse de déplacement.",\
"tr_warrior_legs_3_name":"Jambières de vitesse III",\
"tr_warrior_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_warrior_legs_3_lore_2":"+4,5% vitesse de déplacement.",\
"tr_warrior_legs_4_name":"Jambières de vitesse IV",\
"tr_warrior_legs_4_lore_1":"+2 points d'armure.",\
"tr_warrior_legs_4_lore_2":"+6% vitesse de déplacement.",\
"tr_warrior_legs_5_name":"Jambières de vitesse V",\
"tr_warrior_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_warrior_legs_5_lore_2":"+7,5% vitesse de déplacement.",\
"tr_warrior_legs_6_name":"Jambières de vitesse VI",\
"tr_warrior_legs_6_lore_1":"+3 points d'armure.",\
"tr_warrior_legs_6_lore_2":"+9% vitesse de déplacement.",\
"tr_warrior_legs_7_name":"Jambières de vitesse VII",\
"tr_warrior_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_warrior_legs_7_lore_2":"+10,5% vitesse de déplacement.",\
"tr_warrior_legs_8_name":"Jambières de vitesse VIII",\
"tr_warrior_legs_8_lore_1":"+4 points d'armure.",\
"tr_warrior_legs_8_lore_2":"+12% vitesse de déplacement.",\
"tr_warrior_legs_9_name":"Jambières de vitesse IX",\
"tr_warrior_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_warrior_legs_9_lore_2":"+13,5% vitesse de déplacement.",\
"tr_warrior_legs_10_name":"Jambières de vitesse X",\
"tr_warrior_legs_10_lore_1":"+5 points d'armure.",\
"tr_warrior_legs_10_lore_2":"+15% vitesse de déplacement.",\
"tr_warrior_legs_max_name":"Jambières de vitesse X",\
"tr_warrior_boots_1_name":"Bottes d'acrobate I",\
"tr_warrior_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_warrior_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_warrior_boots_2_name":"Bottes d'acrobate II",\
"tr_warrior_boots_2_lore_1":"+1 point d'armure.",\
"tr_warrior_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_warrior_boots_3_name":"Bottes d'acrobate III",\
"tr_warrior_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_warrior_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_warrior_boots_4_name":"Bottes d'acrobate IV",\
"tr_warrior_boots_4_lore_1":"+2 points d'armure.",\
"tr_warrior_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_warrior_boots_5_name":"Bottes d'acrobate V",\
"tr_warrior_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_warrior_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_warrior_boots_6_name":"Bottes d'acrobate VI",\
"tr_warrior_boots_6_lore_1":"+3 points d'armure.",\
"tr_warrior_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_warrior_boots_7_name":"Bottes d'acrobate VII",\
"tr_warrior_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_warrior_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_warrior_boots_8_name":"Bottes d'acrobate VIII",\
"tr_warrior_boots_8_lore_1":"+4 points d'armure.",\
"tr_warrior_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_warrior_boots_9_name":"Bottes d'acrobate IX",\
"tr_warrior_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_warrior_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_warrior_boots_10_name":"Bottes d'acrobate X",\
"tr_warrior_boots_10_lore_1":"+5 points d'armure.",\
"tr_warrior_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_warrior_boots_max_name":"Bottes d'acrobate X",\
"tr_warrior_spell1_1_name":"Berzerk I",\
"tr_warrior_spell1_1_lore_1":"-----------------------------------",\
"tr_warrior_spell1_1_lore_2":"Augmente les dégats infligés de 6 points",\
"tr_warrior_spell1_1_lore_3":"pendant 4s.",\
"tr_warrior_spell1_1_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_1_lore_5":"20% pendant 4s.",\
"tr_warrior_spell1_1_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_1_lore_7":"pendant 4s.",\
"tr_warrior_spell1_1_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_1_lore_9":"pendant 4s.",\
"tr_warrior_spell1_1_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_1_lore_11":"-----------------------------------",\
"tr_warrior_cooldownspell1_1_name":"Berzerk I",\
"tr_warrior_spell1_2_name":"Berzerk II",\
"tr_warrior_spell1_2_lore_1":"-----------------------------------",\
"tr_warrior_spell1_2_lore_2":"Augmente les dégats infligés de 9 points",\
"tr_warrior_spell1_2_lore_3":"pendant 4s.",\
"tr_warrior_spell1_2_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_2_lore_5":"20% pendant 4s.",\
"tr_warrior_spell1_2_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_2_lore_7":"pendant 4s.",\
"tr_warrior_spell1_2_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_2_lore_9":"pendant 4s.",\
"tr_warrior_spell1_2_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_2_lore_11":"-----------------------------------",\
"tr_warrior_cooldownspell1_2_name":"Berzerk II",\
"tr_warrior_spell1_3_name":"Berzerk III",\
"tr_warrior_spell1_3_lore_1":"-----------------------------------",\
"tr_warrior_spell1_3_lore_2":"Augmente les dégats infligés de 9 points",\
"tr_warrior_spell1_3_lore_3":"pendant 4s.",\
"tr_warrior_spell1_3_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_3_lore_5":"40% pendant 4s.",\
"tr_warrior_spell1_3_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_3_lore_7":"pendant 4s.",\
"tr_warrior_spell1_3_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_3_lore_9":"pendant 4s.",\
"tr_warrior_spell1_3_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_3_lore_11":"-----------------------------------",\
"tr_warrior_spell1_max_name":"Berzerk III",\
"tr_warrior_cooldownspell1_3_name":"Berzerk III",\
"tr_warrior_spell2_1_name":"Drapeau de ralliement I",\
"tr_warrior_spell2_1_lore_1":"-----------------------------------",\
"tr_warrior_spell2_1_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_1_lore_3":"votre emplacement.",\
"tr_warrior_spell2_1_lore_4":"Le drapeau augmente de 20% votre",\
"tr_warrior_spell2_1_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_1_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_1_lore_7":"Le drapeau disparait après 7 secondes.",\
"tr_warrior_spell2_1_lore_8":"Temps de recharge: 15s.",\
"tr_warrior_spell2_1_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_1_name":"Drapeau de ralliement I",\
"tr_warrior_spell2_2_name":"Drapeau de ralliement II",\
"tr_warrior_spell2_2_lore_1":"-----------------------------------",\
"tr_warrior_spell2_2_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_2_lore_3":"votre emplacement.",\
"tr_warrior_spell2_2_lore_4":"Le drapeau augmente de 40% votre",\
"tr_warrior_spell2_2_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_2_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_2_lore_7":"Le drapeau disparait après 7 secondes.",\
"tr_warrior_spell2_2_lore_8":"Temps de recharge: 15s.",\
"tr_warrior_spell2_2_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_2_name":"Drapeau de ralliement II",\
"tr_warrior_spell2_3_name":"Drapeau de ralliement III",\
"tr_warrior_spell2_3_lore_1":"-----------------------------------",\
"tr_warrior_spell2_3_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_3_lore_3":"votre emplacement.",\
"tr_warrior_spell2_3_lore_4":"Le drapeau augmente de 40% votre",\
"tr_warrior_spell2_3_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_3_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_3_lore_7":"Le drapeau disparait après 11 secondes.",\
"tr_warrior_spell2_3_lore_8":"Temps de recharge: 10s.",\
"tr_warrior_spell2_3_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_3_name":"Drapeau de ralliement III",\
"tr_warrior_spell2_max_name":"Drapeau de ralliement III",\
"tr_warrior_spell3_1_name":"Grappin",\
"tr_warrior_spell3_1_lore_1":"-----------------------------------------",\
"tr_warrior_spell3_1_lore_2":"Lance un grappin dans la direction",\
"tr_warrior_spell3_1_lore_3":"visée, qui ramènera le premier joueur adverse",\
"tr_warrior_spell3_1_lore_4":"dans une distance de 25 blocs.",\
"tr_warrior_spell3_1_lore_5":"Le joueur ramené est également étourdit",\
"tr_warrior_spell3_1_lore_6":"pendant 2 secondes et subit 1 point de dégât.",\
"tr_warrior_spell3_1_lore_7":"L'étourdissement empêche l'utilisation des sorts.",\
"tr_warrior_spell3_1_lore_8":"Vitesse du grappin 30 blocs / seconde",\
"tr_warrior_spell3_1_lore_9":"Temps de recharge: 7s.",\
"tr_warrior_spell3_1_lore_10":"Temps de recharge en cas de collision",\
"tr_warrior_spell3_1_lore_11":"proche: 2s.",\
"tr_warrior_spell3_1_lore_12":"-----------------------------------------",\
"tr_warrior_spell3_max_name":"Grappin",\
"tr_warrior_cooldownspell3_1_name":"Grappin",\
\
\
\
\
\
"tr_archer_classic_arrow_1_name":"Flèche",\
"tr_archer_classic_arrow_1_lore_1":"-----------------------------",\
"tr_archer_classic_arrow_1_lore_2":"Une flèche simple, améliorez votre",\
"tr_archer_classic_arrow_1_lore_3":"arc pour obtenir plus de flèches",\
"tr_archer_classic_arrow_1_lore_4":"-----------------------------",\
"tr_archer_explosive_arrow_1_name":"Flèche explosive I",\
"tr_archer_explosive_arrow_1_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_1_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_1_lore_3":"moindre contact et infligera 12 points",\
"tr_archer_explosive_arrow_1_lore_4":"de dégats dans un rayon de 3 blocs",\
"tr_archer_explosive_arrow_3_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_3_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_1_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_1_lore_8":"-----------------------------------",\
"tr_archer_explosive_arrow_2_name":"Flèche explosive II",\
"tr_archer_explosive_arrow_2_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_2_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_2_lore_3":"moindre contact et infligera 24 points",\
"tr_archer_explosive_arrow_2_lore_4":"de dégats dans un rayon de 4 blocs.",\
"tr_archer_explosive_arrow_2_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_2_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_2_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_2_lore_8":"-----------------------------------",\
"tr_archer_explosive_arrow_3_name":"Flèche explosive III",\
"tr_archer_explosive_arrow_3_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_3_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_3_lore_3":"moindre contact et infligera 24 points",\
"tr_archer_explosive_arrow_3_lore_4":"de dégats dans un rayon de 6 blocs.",\
"tr_archer_explosive_arrow_3_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_3_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_3_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_3_lore_8":"-----------------------------------",\
"tr_archer_ice_arrow_1_name":"Flèche de glace I",\
"tr_archer_ice_arrow_1_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_1_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_1_lore_3":"de la cible de 30% pendant 4 secondes.",\
"tr_archer_ice_arrow_1_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_1_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_1_lore_6":"Temps de recharge: 20s.",\
"tr_archer_ice_arrow_1_lore_7":"--------------------------------------",\
"tr_archer_ice_arrow_2_name":"Flèche de glace II",\
"tr_archer_ice_arrow_2_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_2_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_2_lore_3":"de la cible de 45% pendant 5 secondes.",\
"tr_archer_ice_arrow_2_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_2_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_2_lore_6":"Temps de recharge: 15s.",\
"tr_archer_ice_arrow_2_lore_7":"--------------------------------------",\
"tr_archer_ice_arrow_3_name":"Flèche de glace III",\
"tr_archer_ice_arrow_3_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_3_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_3_lore_3":"de la cible de 60% pendant 7 secondes.",\
"tr_archer_ice_arrow_3_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_3_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_3_lore_6":"Temps de recharge: 10s.",\
"tr_archer_ice_arrow_3_lore_7":"--------------------------------------",\
"tr_archer_explosive_ice_arrow_1_name":"Flèche de glace explosive",\
"tr_archer_explosive_ice_arrow_1_lore_1":"------------------------",\
"tr_archer_explosive_ice_arrow_1_lore_2":"Combine les effets de:",\
"tr_archer_explosive_ice_arrow_1_lore_3":"La flèche explosive",\
"tr_archer_explosive_ice_arrow_1_lore_4":"et la flèche de glace",\
"tr_archer_explosive_ice_arrow_1_lore_5":"------------------------",\
"tr_archer_weapon1_0_name":"Arc de débutant",\
"tr_archer_weapon1_0_lore_1":"Puissance 0 : 5 à 11 points",\
"tr_archer_weapon1_0_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_0_lore_3":"Carquois  : 1 flèche",\
"tr_archer_weapon1_1_name":"Arc de combat I",\
"tr_archer_weapon1_1_lore_1":"Puissance 1 : 8 à 16 points",\
"tr_archer_weapon1_1_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_1_lore_3":"Carquois : 1 flèche",\
"tr_archer_weapon1_2_name":"Arc de combat II",\
"tr_archer_weapon1_2_lore_1":"Puissance 2 : 9 à 19 points",\
"tr_archer_weapon1_2_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_2_lore_3":"Carquois : 2 flèches",\
"tr_archer_weapon1_3_name":"Arc de combat III",\
"tr_archer_weapon1_3_lore_1":"Puissance 3 : 10 à 20 points",\
"tr_archer_weapon1_3_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_3_lore_3":"Carquois : 2 flèches",\
"tr_archer_weapon1_4_name":"Arc de combat IV",\
"tr_archer_weapon1_4_lore_1":"Puissance 3 : 10 à 20 points",\
"tr_archer_weapon1_4_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_4_lore_3":"Recul 1",\
"tr_archer_weapon1_4_lore_4":"Carquois : 3 flèches",\
"tr_archer_weapon1_5_name":"Arc de combat V",\
"tr_archer_weapon1_5_lore_1":"Puissance 4 : 12 à 23 points",\
"tr_archer_weapon1_5_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_5_lore_3":"Recul 1",\
"tr_archer_weapon1_5_lore_4":"Carquois : 3 flèches",\
"tr_archer_weapon1_6_name":"Arc de combat VI",\
"tr_archer_weapon1_6_lore_1":"Puissance 4 : 12 à 23 points",\
"tr_archer_weapon1_6_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_6_lore_3":"Recul 1",\
"tr_archer_weapon1_6_lore_4":"Carquois : 4 flèches",\
"tr_archer_weapon1_7_name":"Arc de combat VII",\
"tr_archer_weapon1_7_lore_1":"Puissance 5 : 13 à 25 points",\
"tr_archer_weapon1_7_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_7_lore_3":"Recul 1",\
"tr_archer_weapon1_7_lore_4":"Carquois : 4 flèches",\
"tr_archer_weapon1_8_name":"Arc de combat VIII",\
"tr_archer_weapon1_8_lore_1":"Puissance 5 : 13 à 25 points",\
"tr_archer_weapon1_8_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_8_lore_3":"Recul 1",\
"tr_archer_weapon1_8_lore_4":"Carquois : 5 flèches",\
"tr_archer_weapon1_9_name":"Arc de combat IX",\
"tr_archer_weapon1_9_lore_1":"Puissance 6 : 14 à 30 points",\
"tr_archer_weapon1_9_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_9_lore_3":"Recul 1",\
"tr_archer_weapon1_9_lore_4":"Carquois : 5 flèches",\
"tr_archer_weapon1_10_name":"Arc de combat X",\
"tr_archer_weapon1_10_lore_1":"Puissance 6 : 14 à 30 points",\
"tr_archer_weapon1_10_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_10_lore_3":"Recul 2",\
"tr_archer_weapon1_10_lore_4":"Carquois : 6 flèches",\
"tr_archer_chest_1_name":"Plastron de santé I",\
"tr_archer_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_chest_1_lore_2":"+10% points de vie.",\
"tr_archer_chest_2_name":"Plastron de santé II",\
"tr_archer_chest_2_lore_1":"+1 points d'armure.",\
"tr_archer_chest_2_lore_2":"+20% points de vie.",\
"tr_archer_chest_3_name":"Plastron de santé III",\
"tr_archer_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_chest_3_lore_2":"+30% points de vie.",\
"tr_archer_chest_4_name":"Plastron de santé IV",\
"tr_archer_chest_4_lore_1":"+2 points d'armure.",\
"tr_archer_chest_4_lore_2":"+40% points de vie.",\
"tr_archer_chest_5_name":"Plastron de santé V",\
"tr_archer_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_chest_5_lore_2":"+50% points de vie.",\
"tr_archer_chest_6_name":"Plastron de santé VI",\
"tr_archer_chest_6_lore_1":"+3 points d'armure.",\
"tr_archer_chest_6_lore_2":"+60% points de vie.",\
"tr_archer_chest_7_name":"Plastron de santé VII",\
"tr_archer_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_chest_7_lore_2":"+70% points de vie.",\
"tr_archer_chest_8_name":"Plastron de santé VIII",\
"tr_archer_chest_8_lore_1":"+4 points d'armure.",\
"tr_archer_chest_8_lore_2":"+80% points de vie.",\
"tr_archer_chest_9_name":"Plastron de santé IX",\
"tr_archer_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_chest_9_lore_2":"+90% points de vie.",\
"tr_archer_chest_10_name":"Plastron de santé X",\
"tr_archer_chest_10_lore_1":"+5 points d'armure.",\
"tr_archer_chest_10_lore_2":"+100% points de vie.",\
"tr_archer_legs_1_name":"Jambières de vitesse I",\
"tr_archer_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_archer_legs_2_name":"Jambières de vitesse II",\
"tr_archer_legs_2_lore_1":"+1 point d'armure.",\
"tr_archer_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_archer_legs_3_name":"Jambières de vitesse III",\
"tr_archer_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_archer_legs_4_name":"Jambières de vitesse IV",\
"tr_archer_legs_4_lore_1":"+2 points d'armure.",\
"tr_archer_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_archer_legs_5_name":"Jambières de vitesse V",\
"tr_archer_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_archer_legs_6_name":"Jambières de vitesse VI",\
"tr_archer_legs_6_lore_1":"+3 points d'armure.",\
"tr_archer_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_archer_legs_7_name":"Jambières de vitesse VII",\
"tr_archer_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_archer_legs_8_name":"Jambières de vitesse VIII",\
"tr_archer_legs_8_lore_1":"+4 points d'armure.",\
"tr_archer_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_archer_legs_9_name":"Jambières de vitesse IX",\
"tr_archer_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_archer_legs_10_name":"Jambières de vitesse X",\
"tr_archer_legs_10_lore_1":"+5 points d'armure.",\
"tr_archer_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_archer_boots_1_name":"Bottes d'acrobate I",\
"tr_archer_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_archer_boots_2_name":"Bottes d'acrobate II",\
"tr_archer_boots_2_lore_1":"+1 point d'armure.",\
"tr_archer_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_archer_boots_3_name":"Bottes d'acrobate III",\
"tr_archer_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_archer_boots_4_name":"Bottes d'acrobate IV",\
"tr_archer_boots_4_lore_1":"+2 points d'armure.",\
"tr_archer_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_archer_boots_5_name":"Bottes d'acrobate V",\
"tr_archer_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_archer_boots_6_name":"Bottes d'acrobate VI",\
"tr_archer_boots_6_lore_1":"+3 points d'armure.",\
"tr_archer_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_archer_boots_7_name":"Bottes d'acrobate VII",\
"tr_archer_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_archer_boots_8_name":"Bottes d'acrobate VIII",\
"tr_archer_boots_8_lore_1":"+4 points d'armure.",\
"tr_archer_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_archer_boots_9_name":"Bottes d'acrobate IX",\
"tr_archer_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_archer_boots_10_name":"Bottes d'acrobate X",\
"tr_archer_boots_10_lore_1":"+5 points d'armure.",\
"tr_archer_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_archer_spell1_1_name":"Flèche explosive I",\
"tr_archer_spell1_1_lore_1":"----------------------------------------",\
"tr_archer_spell1_1_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_1_lore_3":"avoir touché sa cible ou le sol, infligeant 3 à 16",\
"tr_archer_spell1_1_lore_4":"points de dégâts dans un rayon de 7 blocs.",\
"tr_archer_spell1_1_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_1_lore_6":"du tir.",\
"tr_archer_spell1_1_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_1_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_1_lore_9":"accroupissant.",\
"tr_archer_spell1_1_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_1_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_1_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_1_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_1_name":"Flèche explosive I",\
"tr_archer_spell1_2_name":"Flèche explosive II",\
"tr_archer_spell1_2_lore_1":"----------------------------------------",\
"tr_archer_spell1_2_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_2_lore_3":"avoir touché sa cible ou le sol, infligeant 6 à 24",\
"tr_archer_spell1_2_lore_4":"points de dégâts dans un rayon de 8 blocs.",\
"tr_archer_spell1_2_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_2_lore_6":"du tir.",\
"tr_archer_spell1_2_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_2_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_2_lore_9":"accroupissant.",\
"tr_archer_spell1_2_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_2_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_2_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_2_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_2_name":"Flèche explosive II",\
"tr_archer_spell1_3_name":"Flèche explosive III",\
"tr_archer_spell1_3_lore_1":"----------------------------------------",\
"tr_archer_spell1_3_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_3_lore_3":"avoir touché sa cible ou le sol, infligeant 8 à 32",\
"tr_archer_spell1_3_lore_4":"points de dégâts dans un rayon de 9 blocs.",\
"tr_archer_spell1_3_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_3_lore_6":"du tir.",\
"tr_archer_spell1_3_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_3_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_3_lore_9":"accroupissant.",\
"tr_archer_spell1_3_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_3_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_3_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_3_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_3_name":"Flèche explosive III",\
"tr_archer_spell2_place_1_name":"Piège à ours I - Poser",\
"tr_archer_spell2_1_lore_1":"--------------------------------------",\
"tr_archer_spell2_1_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_1_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_1_lore_4":"pendant 2 secondes et lui infligera 6 points",\
"tr_archer_spell2_1_lore_5":"de dégâts.",\
"tr_archer_spell2_1_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_1_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_1_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_1_lore_9":"Temps de recharge: 10s.",\
"tr_archer_spell2_1_lore_10":"--------------------------------------",\
"tr_archer_spell2_place_2_name":"Piège à ours II - Poser",\
"tr_archer_spell2_2_lore_1":"--------------------------------------",\
"tr_archer_spell2_2_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_2_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_2_lore_4":"pendant 3 secondes et lui infligera 6 points",\
"tr_archer_spell2_2_lore_5":"de dégâts.",\
"tr_archer_spell2_2_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_2_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_2_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_2_lore_9":"Temps de recharge: 8s.",\
"tr_archer_spell2_2_lore_10":"--------------------------------------",\
"tr_archer_spell2_place_3_name":"Piège à ours III - Poser",\
"tr_archer_spell2_3_lore_1":"--------------------------------------",\
"tr_archer_spell2_3_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_3_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_3_lore_4":"pendant 4 secondes et lui infligera 6 points",\
"tr_archer_spell2_3_lore_5":"de dégâts.",\
"tr_archer_spell2_3_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_3_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_3_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_3_lore_9":"Temps de recharge: 5s.",\
"tr_archer_spell2_3_lore_10":"--------------------------------------",\
"tr_archer_spell2_destroy_1_name":"Piège à ours I - Détruire",\
"tr_archer_spell2_destroy_2_name":"Piège à ours II - Détruire",\
"tr_archer_spell2_destroy_3_name":"Piège à ours III - Détruire",\
"tr_archer_cooldownspell2_1_name":"Piège à ours I - Poser",\
"tr_archer_cooldownspell2_2_name":"Piège à ours II - Poser",\
"tr_archer_cooldownspell2_3_name":"Piège à ours III - Poser",\
"tr_archer_spell3_1_name":"Flèche de glace I",\
"tr_archer_spell3_1_lore_1":"--------------------------------------",\
"tr_archer_spell3_1_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_1_lore_3":"de la cible de 30% pendant 4 secondes.",\
"tr_archer_spell3_1_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_1_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_1_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_1_lore_7":"annulé.",\
"tr_archer_spell3_1_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_1_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_1_lore_10":"Temps de recharge: 20s.",\
"tr_archer_spell3_1_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_1_name":"Flèche de glace I",\
"tr_archer_spell3_2_name":"Flèche de glace II",\
"tr_archer_spell3_2_lore_1":"--------------------------------------",\
"tr_archer_spell3_2_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_2_lore_3":"de la cible de 45% pendant 5 secondes.",\
"tr_archer_spell3_2_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_2_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_2_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_2_lore_7":"annulé.",\
"tr_archer_spell3_2_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_2_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_2_lore_10":"Temps de recharge: 15s.",\
"tr_archer_spell3_2_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_2_name":"Flèche de glace II",\
"tr_archer_spell3_3_name":"Flèche de glace III",\
"tr_archer_spell3_3_lore_1":"--------------------------------------",\
"tr_archer_spell3_3_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_3_lore_3":"de la cible de 60% pendant 7 secondes.",\
"tr_archer_spell3_3_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_3_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_3_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_3_lore_7":"annulé.",\
"tr_archer_spell3_3_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_3_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_3_lore_10":"Temps de recharge: 10s.",\
"tr_archer_spell3_3_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_3_name":"Flèche de glace III",\
"tr_archer_spell3_status_0_name":"Gel",\
"tr_archer_spell3_status_0_lore_1":"----------------",\
"tr_archer_spell3_status_0_lore_2":"Vous êtes gelé !",\
"tr_archer_spell3_status_0_lore_3":"----------------",\
\
\
\
\
\
"tr_mage_weapon1_0_name":"Bâton de débutant",\
"tr_mage_weapon1_0_lore_1":"-----------------------------------",\
"tr_mage_weapon1_0_lore_2":"Ce bâton miteux est incapable de lancer",\
"tr_mage_weapon1_0_lore_3":"le moindre sort...",\
"tr_mage_weapon1_0_lore_4":"Mais au moins vous avez une arme !",\
"tr_mage_weapon1_0_lore_5":"-----------------------------------",\
"tr_mage_weapon1_1_name":"Bâton de combat I",\
"tr_mage_weapon1_1_lore_1":"+0.5 point d'attaque.",\
"tr_mage_weapon1_1_lore_2":"---------------------------",\
"tr_mage_weapon1_1_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier joueur adverse rencontré.",\
"tr_mage_weapon1_1_lore_4":"Portée maximale: 20 blocs.",\
"tr_mage_weapon1_1_lore_5":"Coût en mana: 90",\
"tr_mage_weapon1_1_lore_6":"---------------------------",\
"tr_mage_weapon1_2_name":"Bâton de combat II",\
"tr_mage_weapon1_2_lore_1":"+1 point d'attaque.",\
"tr_mage_weapon1_2_lore_2":"---------------------------",\
"tr_mage_weapon1_2_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_2_lore_4":"Portée maximale: 25 blocs.",\
"tr_mage_weapon1_2_lore_5":"Coût en mana: 90",\
"tr_mage_weapon1_2_lore_6":"---------------------------",\
"tr_mage_weapon1_3_name":"Bâton de combat III",\
"tr_mage_weapon1_3_lore_1":"+1.5 points d'attaque.",\
"tr_mage_weapon1_3_lore_2":"---------------------------",\
"tr_mage_weapon1_3_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_3_lore_4":"Portée maximale: 30 blocs.",\
"tr_mage_weapon1_3_lore_5":"Coût en mana: 85",\
"tr_mage_weapon1_3_lore_6":"---------------------------",\
"tr_mage_weapon1_4_name":"Bâton de combat IV",\
"tr_mage_weapon1_4_lore_1":"+2 points d'attaque.",\
"tr_mage_weapon1_4_lore_2":"---------------------------",\
"tr_mage_weapon1_4_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_4_lore_4":"Portée maximale: 35 blocs.",\
"tr_mage_weapon1_4_lore_5":"Coût en mana: 85",\
"tr_mage_weapon1_4_lore_6":"---------------------------",\
"tr_mage_weapon1_5_name":"Bâton de combat V",\
"tr_mage_weapon1_5_lore_1":"+2.5 points d'attaque.",\
"tr_mage_weapon1_5_lore_2":"---------------------------",\
"tr_mage_weapon1_5_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_5_lore_4":"Portée maximale: 35 blocs.",\
"tr_mage_weapon1_5_lore_5":"Coût en mana: 80",\
"tr_mage_weapon1_5_lore_6":"---------------------------",\
"tr_mage_weapon1_6_name":"Bâton de combat VI",\
"tr_mage_weapon1_6_lore_1":"+3 points d'attaque.",\
"tr_mage_weapon1_6_lore_2":"---------------------------",\
"tr_mage_weapon1_6_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_6_lore_4":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_6_lore_5":"Coût en mana: 75",\
"tr_mage_weapon1_6_lore_6":"---------------------------",\
"tr_mage_weapon1_7_name":"Bâton de combat VII",\
"tr_mage_weapon1_7_lore_1":"+3.5 points d'attaque.",\
"tr_mage_weapon1_7_lore_2":"---------------------------",\
"tr_mage_weapon1_7_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_7_lore_4":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_7_lore_5":"Coût en mana: 70",\
"tr_mage_weapon1_7_lore_6":"---------------------------",\
"tr_mage_weapon1_8_name":"Bâton de combat VIII",\
"tr_mage_weapon1_8_lore_1":"+4 points d'attaque.",\
"tr_mage_weapon1_8_lore_2":"---------------------------",\
"tr_mage_weapon1_8_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_8_lore_4":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_8_lore_5":"Coût en mana: 65",\
"tr_mage_weapon1_8_lore_6":"---------------------------",\
"tr_mage_weapon1_9_name":"Bâton de combat IX",\
"tr_mage_weapon1_9_lore_1":"+4.5 points d'attaque.",\
"tr_mage_weapon1_9_lore_2":"---------------------------",\
"tr_mage_weapon1_9_lore_3":"Lance un sort dans la direction visée, il infligera 6 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_9_lore_4":"Portée maximale: 45 blocs.",\
"tr_mage_weapon1_9_lore_5":"Coût en mana: 65",\
"tr_mage_weapon1_9_lore_6":"---------------------------",\
"tr_mage_weapon1_10_name":"Bâton de combat X",\
"tr_mage_weapon1_10_lore_1":"+5 points d'attaque.",\
"tr_mage_weapon1_10_lore_2":"----------------------------",\
"tr_mage_weapon1_10_lore_3":"Lance un sort dans la direction visée, il infligera 12 points de dégats au premier adversaire rencontré.",\
"tr_mage_weapon1_10_lore_4":"Portée maximale: 45 blocs.",\
"tr_mage_weapon1_10_lore_5":"Coût en mana: 55",\
"tr_mage_weapon1_10_lore_6":"----------------------------",\
"tr_mage_chest_1_name":"Plastron de santé I",\
"tr_mage_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_chest_1_lore_2":"+10% points de vie.",\
"tr_mage_chest_2_name":"Plastron de santé II",\
"tr_mage_chest_2_lore_1":"+1 points d'armure.",\
"tr_mage_chest_2_lore_2":"+20% points de vie.",\
"tr_mage_chest_3_name":"Plastron de santé III",\
"tr_mage_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_chest_3_lore_2":"+30% points de vie.",\
"tr_mage_chest_4_name":"Plastron de santé IV",\
"tr_mage_chest_4_lore_1":"+2 points d'armure.",\
"tr_mage_chest_4_lore_2":"+40% points de vie.",\
"tr_mage_chest_5_name":"Plastron de santé V",\
"tr_mage_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_chest_5_lore_2":"+50% points de vie.",\
"tr_mage_chest_6_name":"Plastron de santé VI",\
"tr_mage_chest_6_lore_1":"+3 points d'armure.",\
"tr_mage_chest_6_lore_2":"+60% points de vie.",\
"tr_mage_chest_7_name":"Plastron de santé VII",\
"tr_mage_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_chest_7_lore_2":"+70% points de vie.",\
"tr_mage_chest_8_name":"Plastron de santé VIII",\
"tr_mage_chest_8_lore_1":"+4 points d'armure.",\
"tr_mage_chest_8_lore_2":"+80% points de vie.",\
"tr_mage_chest_9_name":"Plastron de santé IX",\
"tr_mage_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_chest_9_lore_2":"+90% points de vie.",\
"tr_mage_chest_10_name":"Plastron de santé X",\
"tr_mage_chest_10_lore_1":"+5 points d'armure.",\
"tr_mage_chest_10_lore_2":"+100% points de vie.",\
"tr_mage_legs_1_name":"Jambières de vitesse I",\
"tr_mage_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_mage_legs_2_name":"Jambières de vitesse II",\
"tr_mage_legs_2_lore_1":"+1 point d'armure.",\
"tr_mage_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_mage_legs_3_name":"Jambières de vitesse III",\
"tr_mage_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_mage_legs_4_name":"Jambières de vitesse IV",\
"tr_mage_legs_4_lore_1":"+2 points d'armure.",\
"tr_mage_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_mage_legs_5_name":"Jambières de vitesse V",\
"tr_mage_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_mage_legs_6_name":"Jambières de vitesse VI",\
"tr_mage_legs_6_lore_1":"+3 points d'armure.",\
"tr_mage_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_mage_legs_7_name":"Jambières de vitesse VII",\
"tr_mage_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_mage_legs_8_name":"Jambières de vitesse VIII",\
"tr_mage_legs_8_lore_1":"+4 points d'armure.",\
"tr_mage_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_mage_legs_9_name":"Jambières de vitesse IX",\
"tr_mage_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_mage_legs_10_name":"Jambières de vitesse X",\
"tr_mage_legs_10_lore_1":"+5 points d'armure.",\
"tr_mage_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_mage_boots_1_name":"Bottes d'acrobate I",\
"tr_mage_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_mage_boots_2_name":"Bottes d'acrobate II",\
"tr_mage_boots_2_lore_1":"+1 point d'armure.",\
"tr_mage_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_mage_boots_3_name":"Bottes d'acrobate III",\
"tr_mage_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_mage_boots_4_name":"Bottes d'acrobate IV",\
"tr_mage_boots_4_lore_1":"+2 points d'armure.",\
"tr_mage_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_mage_boots_5_name":"Bottes d'acrobate V",\
"tr_mage_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_mage_boots_6_name":"Bottes d'acrobate VI",\
"tr_mage_boots_6_lore_1":"+3 points d'armure.",\
"tr_mage_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_mage_boots_7_name":"Bottes d'acrobate VII",\
"tr_mage_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_mage_boots_8_name":"Bottes d'acrobate VIII",\
"tr_mage_boots_8_lore_1":"+4 points d'armure.",\
"tr_mage_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_mage_boots_9_name":"Bottes d'acrobate IX",\
"tr_mage_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_mage_boots_10_name":"Bottes d'acrobate X",\
"tr_mage_boots_10_lore_1":"+5 points d'armure.",\
"tr_mage_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_mage_spell1_1_name":"Trait de feu I",\
"tr_mage_spell1_1_lore_1":"-----------------------------------",\
"tr_mage_spell1_1_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_1_lore_3":"visée. Il infligera 6 points de dégats au",\
"tr_mage_spell1_1_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_1_lore_5":"1 point de dégâts de brulure",\
"tr_mage_spell1_1_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_1_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_1_lore_8":"annulé.",\
"tr_mage_spell1_1_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_1_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_1_lore_11":"Temps de recharge: 20s.",\
"tr_mage_spell1_1_lore_12":"-----------------------------------",\
"tr_mage_spell1_2_name":"Trait de feu II",\
"tr_mage_spell1_2_lore_1":"-----------------------------------",\
"tr_mage_spell1_2_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_2_lore_3":"visée. Il infligera 12 points de dégats au",\
"tr_mage_spell1_2_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_2_lore_5":"2 points de dégâts de brulure",\
"tr_mage_spell1_2_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_2_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_2_lore_8":"annulé.",\
"tr_mage_spell1_2_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_2_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_2_lore_11":"Temps de recharge: 14s.",\
"tr_mage_spell1_2_lore_12":"-----------------------------------",\
"tr_mage_spell1_3_name":"Trait de feu III",\
"tr_mage_spell1_3_lore_1":"-----------------------------------",\
"tr_mage_spell1_3_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_3_lore_3":"visée. Il infligera 12 points de dégats au",\
"tr_mage_spell1_3_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_3_lore_5":"3 points de dégâts de brulure",\
"tr_mage_spell1_3_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_3_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_3_lore_8":"annulé.",\
"tr_mage_spell1_3_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_3_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_3_lore_11":"Temps de recharge: 8s.",\
"tr_mage_spell1_3_lore_12":"-----------------------------------",\
"tr_mage_cooldownspell1_1_name":"Trait de feu I",\
"tr_mage_cooldownspell1_2_name":"Trait de feu II",\
"tr_mage_cooldownspell1_3_name":"Trait de feu III",\
"tr_mage_spell1_status_0_name":"Brulure",\
"tr_mage_spell1_status_0_lore_1":"----------------",\
"tr_mage_spell1_status_0_lore_2":"Vous êtes en feu !",\
"tr_mage_spell1_status_0_lore_3":"----------------",\
"tr_mage_spell2_1_name":"Tempête de foudre I",\
"tr_mage_spell2_1_lore_1":"-----------------------------------",\
"tr_mage_spell2_1_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_1_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_1_lore_4":"La tempête infligera 24 points de",\
"tr_mage_spell2_1_lore_5":"dégâts par seconde pendant 5",\
"tr_mage_spell2_1_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_1_lore_7":"Temps de recharge: 24s.",\
"tr_mage_spell2_1_lore_8":"-----------------------------------",\
"tr_mage_spell2_2_name":"Tempête de foudre II",\
"tr_mage_spell2_2_lore_1":"-----------------------------------",\
"tr_mage_spell2_2_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_2_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_2_lore_4":"La tempête infligera 48 points de",\
"tr_mage_spell2_2_lore_5":"dégâts par seconde pendant 6",\
"tr_mage_spell2_2_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_2_lore_7":"Temps de recharge: 22s.",\
"tr_mage_spell2_2_lore_8":"-----------------------------------",\
"tr_mage_spell2_3_name":"Tempête de foudre III",\
"tr_mage_spell2_3_lore_1":"-----------------------------------",\
"tr_mage_spell2_3_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_3_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_3_lore_4":"La tempête infligera 48 points de",\
"tr_mage_spell2_3_lore_5":"dégâts par seconde pendant 7",\
"tr_mage_spell2_3_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_3_lore_7":"Les joueurs présents dans la tempête",\
"tr_mage_spell2_3_lore_8":"voient leur vitesse réduite de 15%.",\
"tr_mage_spell2_3_lore_9":"Temps de recharge: 19s.",\
"tr_mage_spell2_3_lore_10":"-----------------------------------",\
"tr_mage_cooldownspell2_1_name":"Tempête de foudre I",\
"tr_mage_cooldownspell2_2_name":"Tempête de foudre II",\
"tr_mage_cooldownspell2_3_name":"Tempête de foudre III",\
"tr_mage_spell3_1_name":"Téléportation",\
"tr_mage_spell3_1_lore_1":"--------------------------",\
"tr_mage_spell3_1_lore_2":"Téléporte instantanément vers",\
"tr_mage_spell3_1_lore_3":"l'endroit ciblé.",\
"tr_mage_spell3_1_lore_4":"Portée maximale: 50 blocs.",\
"tr_mage_spell3_1_lore_5":"Temps de recharge: 20s.",\
"tr_mage_spell3_1_lore_6":"--------------------------",\
"tr_mage_cooldownspell3_1_name":"Téléportation",\
\
\
\
\
\
"tr_rogue_weapon1_1_name":"Dague sournoise I",\
"tr_rogue_weapon1_1_lore_1":"+1 point d'attaque.",\
"tr_rogue_weapon1_2_name":"Dague sournoise II",\
"tr_rogue_weapon1_2_lore_1":"+2 points d'attaque.",\
"tr_rogue_weapon1_3_name":"Dague sournoise III",\
"tr_rogue_weapon1_3_lore_1":"+3 points d'attaque.",\
"tr_rogue_weapon1_4_name":"Dague sournoise IV",\
"tr_rogue_weapon1_4_lore_1":"+4 points d'attaque.",\
"tr_rogue_weapon1_5_name":"Dague sournoise V",\
"tr_rogue_weapon1_5_lore_1":"+5 points d'attaque.",\
"tr_rogue_weapon1_6_name":"Dague sournoise VI",\
"tr_rogue_weapon1_6_lore_1":"+6 points d'attaque.",\
"tr_rogue_weapon1_7_name":"Dague sournoise VII",\
"tr_rogue_weapon1_7_lore_1":"+7 points d'attaque.",\
"tr_rogue_weapon1_8_name":"Dague sournoise VIII",\
"tr_rogue_weapon1_8_lore_1":"+8 points d'attaque.",\
"tr_rogue_weapon1_9_name":"Dague sournoise IX",\
"tr_rogue_weapon1_9_lore_1":"+9 points d'attaque.",\
"tr_rogue_weapon1_10_name":"Dague sournoise X",\
"tr_rogue_weapon1_10_lore_1":"+10 points d'attaque.",\
"tr_rogue_chest_1_name":"Plastron de santé I",\
"tr_rogue_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_chest_1_lore_2":"+10% points de vie.",\
"tr_rogue_chest_2_name":"Plastron de santé II",\
"tr_rogue_chest_2_lore_1":"+1 points d'armure.",\
"tr_rogue_chest_2_lore_2":"+20% points de vie.",\
"tr_rogue_chest_3_name":"Plastron de santé III",\
"tr_rogue_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_chest_3_lore_2":"+30% points de vie.",\
"tr_rogue_chest_4_name":"Plastron de santé IV",\
"tr_rogue_chest_4_lore_1":"+2 points d'armure.",\
"tr_rogue_chest_4_lore_2":"+40% points de vie.",\
"tr_rogue_chest_5_name":"Plastron de santé V",\
"tr_rogue_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_chest_5_lore_2":"+50% points de vie.",\
"tr_rogue_chest_6_name":"Plastron de santé VI",\
"tr_rogue_chest_6_lore_1":"+3 points d'armure.",\
"tr_rogue_chest_6_lore_2":"+60% points de vie.",\
"tr_rogue_chest_7_name":"Plastron de santé VII",\
"tr_rogue_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_chest_7_lore_2":"+70% points de vie.",\
"tr_rogue_chest_8_name":"Plastron de santé VIII",\
"tr_rogue_chest_8_lore_1":"+4 points d'armure.",\
"tr_rogue_chest_8_lore_2":"+80% points de vie.",\
"tr_rogue_chest_9_name":"Plastron de santé IX",\
"tr_rogue_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_chest_9_lore_2":"+90% points de vie.",\
"tr_rogue_chest_10_name":"Plastron de santé X",\
"tr_rogue_chest_10_lore_1":"+5 points d'armure.",\
"tr_rogue_chest_10_lore_2":"+100% points de vie.",\
"tr_rogue_legs_1_name":"Jambières de vitesse I",\
"tr_rogue_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_rogue_legs_2_name":"Jambières de vitesse II",\
"tr_rogue_legs_2_lore_1":"+1 point d'armure.",\
"tr_rogue_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_rogue_legs_3_name":"Jambières de vitesse III",\
"tr_rogue_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_rogue_legs_4_name":"Jambières de vitesse IV",\
"tr_rogue_legs_4_lore_1":"+2 points d'armure.",\
"tr_rogue_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_rogue_legs_5_name":"Jambières de vitesse V",\
"tr_rogue_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_rogue_legs_6_name":"Jambières de vitesse VI",\
"tr_rogue_legs_6_lore_1":"+3 points d'armure.",\
"tr_rogue_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_rogue_legs_7_name":"Jambières de vitesse VII",\
"tr_rogue_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_rogue_legs_8_name":"Jambières de vitesse VIII",\
"tr_rogue_legs_8_lore_1":"+4 points d'armure.",\
"tr_rogue_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_rogue_legs_9_name":"Jambières de vitesse IX",\
"tr_rogue_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_rogue_legs_10_name":"Jambières de vitesse X",\
"tr_rogue_legs_10_lore_1":"+5 points d'armure.",\
"tr_rogue_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_rogue_boots_1_name":"Bottes d'acrobate I",\
"tr_rogue_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_rogue_boots_2_name":"Bottes d'acrobate II",\
"tr_rogue_boots_2_lore_1":"+1 point d'armure.",\
"tr_rogue_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_rogue_boots_3_name":"Bottes d'acrobate III",\
"tr_rogue_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_rogue_boots_4_name":"Bottes d'acrobate IV",\
"tr_rogue_boots_4_lore_1":"+2 points d'armure.",\
"tr_rogue_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_rogue_boots_5_name":"Bottes d'acrobate V",\
"tr_rogue_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_rogue_boots_6_name":"Bottes d'acrobate VI",\
"tr_rogue_boots_6_lore_1":"+3 points d'armure.",\
"tr_rogue_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_rogue_boots_7_name":"Bottes d'acrobate VII",\
"tr_rogue_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_rogue_boots_8_name":"Bottes d'acrobate VIII",\
"tr_rogue_boots_8_lore_1":"+4 points d'armure.",\
"tr_rogue_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_rogue_boots_9_name":"Bottes d'acrobate IX",\
"tr_rogue_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_rogue_boots_10_name":"Bottes d'acrobate X",\
"tr_rogue_boots_10_lore_1":"+5 points d'armure.",\
"tr_rogue_boots_10_lore_2":"+10 distance de chute avant dégâts",\
\
\
\
\
\
"tr_shop_title":"Magasin",\
"tr_shop_money_display_price1_1":"Points",\
"tr_shop_money_display_price1_2":"d'honneur :",\
"tr_shop_ready_button":"Pas prêt",\
"tr_shop_item_overlay_price_1":"Coût :",\
"tr_shop_item_overlay_price_2":"points d'honneur",\
"tr_shop_item_overlay_buy_tip":"clic droit pour acheter",\
"tr_shop_item_max_lvl":"Niveau maximal atteint",\
"tr_shop_item_not_enough_money":"Pas assez de points d'honneur !"}
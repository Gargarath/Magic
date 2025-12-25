## permet de setup le stuff assassin dans les baril (pour le give plus tard aux joueurs)


                         ###   WEAPON 1    ###
function stuff:stuff_rogue/cooldowns_r/cooldowns_r

                         ###   WEAPON 1    ###

# Niveau 0
item replace block 13 95 17 container.0 with carrot_on_a_stick[custom_name="Dague de débutant",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 1
item replace block 13 95 17 container.1 with carrot_on_a_stick[custom_name="Dague sournoise I",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 2
item replace block 13 95 17 container.2 with carrot_on_a_stick[custom_name="Dague sournoise II",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 3
item replace block 13 95 17 container.3 with carrot_on_a_stick[custom_name="Dague sournoise III",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 4
item replace block 13 95 17 container.4 with carrot_on_a_stick[custom_name="Dague sournoise IV",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 5
item replace block 13 95 17 container.5 with carrot_on_a_stick[custom_name="Dague sournoise V",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 6
item replace block 13 95 17 container.6 with carrot_on_a_stick[custom_name="Dague sournoise VI",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 7
item replace block 13 95 17 container.7 with carrot_on_a_stick[custom_name="Dague sournoise VII",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 8
item replace block 13 95 17 container.8 with carrot_on_a_stick[custom_name="Dague sournoise VIII",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:8,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 9
item replace block 13 95 17 container.9 with carrot_on_a_stick[custom_name="Dague sournoise IX",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:9,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1

# Niveau 10
item replace block 13 95 17 container.10 with carrot_on_a_stick[custom_name="Dague sournoise X",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:10,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger"]}] 1


                    ###   CHEST    ###

# Niveau 1

item replace block 14 95 17 container.1 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:0.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 14 95 17 container.2 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.2,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 14 95 17 container.3 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.3,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 14 95 17 container.4 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.4,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 14 95 17 container.5 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.5,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 14 95 17 container.6 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.6,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VI",enchantment_glint_override=true] 1

# Niveau 7

item replace block 14 95 17 container.7 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.7,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 14 95 17 container.8 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.8,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 14 95 17 container.9 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.9,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 14 95 17 container.10 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé X",enchantment_glint_override=true] 1

                    ###   LEGS    ###


# Niveau 1

item replace block 15 95 17 container.1 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:0.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.03,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 15 95 17 container.2 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.06,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 15 95 17 container.3 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.09,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 15 95 17 container.4 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.12,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 15 95 17 container.5 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.15,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 15 95 17 container.6 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.18,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VI",enchantment_glint_override=true] 1

# Niveau 7

item replace block 15 95 17 container.7 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.21,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 15 95 17 container.8 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.24,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 15 95 17 container.9 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.27,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 15 95 17 container.10 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.30,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse X",enchantment_glint_override=true] 1

                    ###   BOOTS    ###


# Niveau 1

item replace block 16 95 17 container.1 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 16 95 17 container.2 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 16 95 17 container.3 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 16 95 17 container.4 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 16 95 17 container.5 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 16 95 17 container.6 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:6,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VI",enchantment_glint_override=true] 1

# Niveau 7

item replace block 16 95 17 container.7 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 16 95 17 container.8 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 16 95 17 container.9 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 16 95 17 container.10 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate X",enchantment_glint_override=true] 1

                  ###   SPELL 1    ###

# Niveau 1
item replace block 17 95 17 container.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade I"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 3 points.","","Durée de l’invisibilité : 4s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 13s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r"]}] 1
# Niveau 2
item replace block 17 95 17 container.1 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade II"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 6 points.","","Durée de l’invisibilité : 6s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 10s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r"]}] 1
# Niveau 3
item replace block 17 95 17 container.2 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade III"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 12 points.","","Durée de l’invisibilité : 6s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 8s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r"]}] 1
# Cooldown niveau 1
item replace block 17 95 17 container.3 with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"Embuscade I"},lore=["Votre sort doit se recharger !"],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1
# Cooldown niveau 2
item replace block 17 95 17 container.4 with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"Embuscade II"},lore=["Votre sort doit se recharger !"],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1
# Cooldown niveau 3
item replace block 17 95 17 container.5 with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"Embuscade III"},lore=["Votre sort doit se recharger !"],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1

                  ###   SPELL 2    ###

# Niveau 1 - Poser
item replace block 17 95 17 container.9 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Voie des ombres - Poser"},lore=["--------------------------------------","Vous ouvrez une voie des ombres à votre","emplacement.","","Lorsque vous empruntez la voie des ombres,","vous vous téléportez imédiatement à son","entrée.","","L'entrée de la voie des ombre peut être.","détruite par tous les joueurs.","","Temps de recharge: 10s.","--------------------------------------"],enchantment_glint_override=true,custom_data={spell2_r:1b,spell2_slot:1b},custom_model_data={strings:["spell2_r"]}] 1
# Niveau 1 - Utiliser
item replace block 17 95 17 container.10 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Voie des ombres - Utiliser"},lore=["--------------------------------------","Vous ouvrez une voie des ombres à votre","emplacement.","","Lorsque vous empruntez la voie des ombres,","vous vous téléportez imédiatement à son","entrée.","","L'entrée de la voie des ombre peut être.","détruite par tous les joueurs.","","Temps de recharge: 10s.","--------------------------------------"],enchantment_glint_override=true,custom_data={spell2_r:1b,spell2_slot:1b},custom_model_data={strings:["spell2_r"]}] 1
# Cooldown niveau 1
item replace block 17 95 17 container.11 with gray_stained_glass_pane[custom_name={"bold":true,"color":"gray","text":"Voie des ombres - Poser"},lore=["Votre sort doit se recharger !"],custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data={strings:["cooldown"]}] 1


                   ###   SPELL 3    ###

# Niveau 1
item replace block 17 95 17 container.18 with carrot_on_a_stick[enchantment_glint_override=true,custom_data={spell3_r:1b,spell3_slot:1b},custom_model_data={strings:["spell3_r"]},custom_name={"bold":true,"color":"dark_gray","text":"Bombe d'ombre"},lore=["--------------------------------------","Lance une bombe d'ombre dans la direction","visée.","","Pendant 8 secondes, la bombe d'ombre","aveuglera et ralentira de 15% tous les","joueurs dans un rayon de 4 blocs.","","Tous les joueurs présents dans la","zone d'effet lacheront immédiatement leur","drapeau et ne pourront plus intéragir avec","ce dernier avant la fin de l'effet.","","Les assassins sont immunisés contre","l'effet de ce sort.","","Temps de recharge: 10s.","--------------------------------------"]] 1

# Cooldown Niveau 1
item replace block 17 95 17 container.19 with gray_stained_glass_pane[custom_name={"bold":true,"color":"dark_gray","text":"Bombe d'ombre"},lore=["Votre sort doit se recharger !"],custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data={strings:["cooldown"]}] 1

# Niveau 1 - piégé ou mort





## INVISIBLE

                         ###   WEAPON 1    ###

# Niveau 0

item replace block 13 95 17 container.12 with carrot_on_a_stick[custom_name="Dague de débutant",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 1

item replace block 13 95 17 container.13 with carrot_on_a_stick[custom_name="Dague sournoise I",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1
# Niveau 2

item replace block 13 95 17 container.14 with carrot_on_a_stick[custom_name="Dague sournoise II",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 3

item replace block 13 95 17 container.15 with carrot_on_a_stick[custom_name="Dague sournoise III",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 4

item replace block 13 95 17 container.16 with carrot_on_a_stick[custom_name="Dague sournoise IV",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 5

item replace block 13 95 17 container.17 with carrot_on_a_stick[custom_name="Dague sournoise V",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 6

item replace block 13 95 17 container.18 with carrot_on_a_stick[custom_name="Dague sournoise VI",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1
# Niveau 7

item replace block 13 95 17 container.19 with carrot_on_a_stick[custom_name="Dague sournoise VII",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 8

item replace block 13 95 17 container.20 with carrot_on_a_stick[custom_name="Dague sournoise VIII",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:8,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 9

item replace block 13 95 17 container.21 with carrot_on_a_stick[custom_name="Dague sournoise IX",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:9,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1

# Niveau 10

item replace block 13 95 17 container.22 with carrot_on_a_stick[custom_name="Dague sournoise X",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:10,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["dagger_invisible"]}] 1


                    ###   CHEST    ###

# Niveau 1

item replace block 14 95 17 container.12 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:0.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 14 95 17 container.13 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.2,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 14 95 17 container.14 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.3,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 14 95 17 container.15 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.4,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 14 95 17 container.16 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.5,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 14 95 17 container.17 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.6,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VI",enchantment_glint_override=true] 1
# Niveau 7

item replace block 14 95 17 container.18 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.7,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 14 95 17 container.19 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.8,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 14 95 17 container.20 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.9,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 14 95 17 container.21 with netherite_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Plastron de santé X",enchantment_glint_override=true] 1

                    ###   LEGS    ###


# Niveau 1

item replace block 15 95 17 container.12 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:0.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.03,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 15 95 17 container.13 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.06,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 15 95 17 container.14 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.09,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 15 95 17 container.15 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.12,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 15 95 17 container.16 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.15,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 15 95 17 container.17 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.18,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VI",enchantment_glint_override=true] 1

# Niveau 7

item replace block 15 95 17 container.18 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.21,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 15 95 17 container.19 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.24,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 15 95 17 container.20 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.27,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 15 95 17 container.21 with netherite_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.30,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Jambières de vitesse X",enchantment_glint_override=true] 1

                    ###   BOOTS    ###


# Niveau 1

item replace block 16 95 17 container.12 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate I",enchantment_glint_override=false] 1

# Niveau 2

item replace block 16 95 17 container.13 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate II",enchantment_glint_override=true] 1

# Niveau 3

item replace block 16 95 17 container.14 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate III",enchantment_glint_override=false] 1

# Niveau 4

item replace block 16 95 17 container.15 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate IV",enchantment_glint_override=true] 1

# Niveau 5

item replace block 16 95 17 container.16 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate V",enchantment_glint_override=false] 1

# Niveau 6

item replace block 16 95 17 container.17 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:6,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VI",enchantment_glint_override=true] 1

# Niveau 7

item replace block 16 95 17 container.18 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VII",enchantment_glint_override=false] 1

# Niveau 8

item replace block 16 95 17 container.19 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate VIII",enchantment_glint_override=true] 1

# Niveau 9

item replace block 16 95 17 container.20 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate IX",enchantment_glint_override=false] 1

# Niveau 10

item replace block 16 95 17 container.21 with netherite_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="Bottes d'acrobate X",enchantment_glint_override=true] 1

                  ###   SPELL 1    ###

# Niveau 1

item replace block 17 95 17 container.6 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade I"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 3 points.","","Durée de l’invisibilité : 4s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 13s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r_hidden"]}] 1


# Niveau 2

item replace block 17 95 17 container.7 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade II"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 6 points.","","Durée de l’invisibilité : 6s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 10s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r_hidden"]}] 1

# Niveau 3

item replace block 17 95 17 container.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Embuscade III"},lore=["-------------------------------------","Vous vous camouflez dans l'ombre ce qui","vous rends invisible.","","Les dégats de votre prochaine attaque","augmentent de 12 points.","","Durée de l’invisibilité : 6s.","","Subir ou infliger des dégâts annule l'effet.","Interagir avec les drapeaux annule l'effet.","","Temps de recharge: 8s.","-------------------------------------"],enchantment_glint_override=true,custom_data={spell1_r:1b,spell1_slot:1b},custom_model_data={strings:["spell1_r_hidden"]}] 1

                   ###   SPELL 2    ###

# Niveau 1 - Poser

item replace block 17 95 17 container.12 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Voie des ombres - Poser"},lore=["--------------------------------------","Vous ouvrez une voie des ombres à votre","emplacement.","","Lorsque vous empruntez la voie des ombres,","vous vous téléportez imédiatement à son","entrée.","","L'entrée de la voie des ombre peut être.","détruite par tous les joueurs.","","Temps de recharge: 10s.","--------------------------------------"],enchantment_glint_override=true,custom_data={spell2_r:1b,spell2_slot:1b},custom_model_data={strings:["spell2_r_hidden"]}] 1

# Niveau 1 - Utiliser

item replace block 17 95 17 container.13 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Voie des ombres - Utiliser"},lore=["--------------------------------------","Vous ouvrez une voie des ombres à votre","emplacement.","","Lorsque vous empruntez la voie des ombres,","vous vous téléportez imédiatement à son","entrée.","","L'entrée de la voie des ombre peut être.","détruite par tous les joueurs.","","Temps de recharge: 10s.","--------------------------------------"],enchantment_glint_override=true,custom_data={spell2_r:1b,spell2_slot:1b},custom_model_data={strings:["spell2_r_hidden"]}] 1

                    ### SPELL 3    ###
                    
# Niveau 1
item replace block 17 95 17 container.20 with carrot_on_a_stick[enchantment_glint_override=true,custom_data={spell3_r:1b,spell3_slot:1b},custom_model_data={strings:["spell3_r_hidden"]},custom_name={"bold":true,"color":"dark_gray","text":"Bombe d'ombre"},lore=["--------------------------------------","Lance une bombe d'ombre dans la direction","visée.","","Pendant 8 secondes, la bombe d'ombre","aveuglera et ralentira de 15% tous les","joueurs dans un rayon de 4 blocs.","","Tous les joueurs présents dans la","zone d'effet lacheront immédiatement leur","drapeau et ne pourront plus intéragir avec","ce dernier avant la fin de l'effet.","","Les assassins sont immunisés contre","l'effet de ce sort.","","Temps de recharge: 10s.","--------------------------------------"]] 1

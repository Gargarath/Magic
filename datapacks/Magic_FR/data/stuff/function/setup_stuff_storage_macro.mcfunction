## appelée par rien
# permet de determiner le stuff via des storage (avec prix, nom, description...) pour ensuite etre utilisé par stuff ou shop

## permet de setup le stuff guerrier dans les baril (pour le give plus tard aux joueurs)

                         ###   WEAPON 1    ###

# Niveau 0




$item replace block 13 95 11 container.0 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1


# Niveau 1
$item replace block 13 95 11 container.1 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 2
$item replace block 13 95 11 container.2 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 3
$item replace block 13 95 11 container.3 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 4
$item replace block 13 95 11 container.4 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 5
$item replace block 13 95 11 container.5 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 6
$item replace block 13 95 11 container.6 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 7
$item replace block 13 95 11 container.7 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 8
$item replace block 13 95 11 container.8 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:8,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 9
$item replace block 13 95 11 container.9 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:9,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 10
$item replace block 13 95 11 container.10 with carrot_on_a_stick[custom_name={entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_warrior_weapon_0_name"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:10,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1


                    ###   CHEST    ###

# Niveau 1

$item replace block 14 95 11 container.1 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:0.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.15,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 14 95 11 container.2 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.3,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 14 95 11 container.3 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.45,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 14 95 11 container.4 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.6,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 14 95 11 container.5 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.75,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 14 95 11 container.6 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.9,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 14 95 11 container.7 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1.05,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 14 95 11 container.8 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1.2,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 14 95 11 container.9 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1.35,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 14 95 11 container.10 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1.5,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   LEGS    ###


# Niveau 1

$item replace block 15 95 11 container.1 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:0.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.015,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 15 95 11 container.2 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.03,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 15 95 11 container.3 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.045,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 15 95 11 container.4 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.06,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 15 95 11 container.5 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.075,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 15 95 11 container.6 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.09,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 15 95 11 container.7 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.105,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 15 95 11 container.8 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.12,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 15 95 11 container.9 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.135,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 15 95 11 container.10 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.15,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   BOOTS    ###


# Niveau 1

$item replace block 16 95 11 container.1 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 16 95 11 container.2 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 16 95 11 container.3 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 16 95 11 container.4 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 16 95 11 container.5 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 16 95 11 container.6 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:6,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 16 95 11 container.7 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 16 95 11 container.8 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 16 95 11 container.9 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 16 95 11 container.10 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                   ###   SPELL 1    ###

# Niveau 1
$item replace block 17 95 11 container.0 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_w:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 11 container.3 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 2
$item replace block 17 95 11 container.1 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_w:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 2
$item replace block 17 95 11 container.4 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1


# Niveau 3
$item replace block 17 95 11 container.2 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_w:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 3
$item replace block 17 95 11 container.5 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1


                   ###   SPELL 2    ###

# Niveau 1
$item replace block 17 95 11 container.9 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_w:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 11 container.12 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 2
$item replace block 17 95 11 container.10 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_w:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 2
$item replace block 17 95 11 container.13 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 3
$item replace block 17 95 11 container.11 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_w:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 3
$item replace block 17 95 11 container.14 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1


                   ###   SPELL 3    ###

# Niveau 1
$item replace block 17 95 11 container.18 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell3_w:1b,spell3_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 11 container.21 with light_gray_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data=$(custommodeldata)] 1

## permet de setup le stuff archer dans les baril (pour le give plus tard aux joueurs)


                         ###   WEAPON 1    ###
# FLECHES


# FLECHES EXPLOSIVE

# Joueur 1
$item replace block 13 95 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueur 2
$item replace block 13 95 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueur 3
$item replace block 13 95 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 95 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueurs 4 à 12 (tonneau du dessous)
$item replace block 13 94 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 13 94 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 13 94 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16711680,custom_effects:[{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1


# FLECHE DE GLACE

# Joueur 1
$item replace block 14 95 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueur 2
$item replace block 14 95 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueur 3
$item replace block 14 95 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 95 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# Joueurs 4 à 12
$item replace block 14 94 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 14 94 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 14 94 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:917503,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

# FLECHE DE GLACE EXPLOSIVES

$item replace block 18 95 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 18 95 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:2,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:2,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 18 95 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 95 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:3,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:3,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 95 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:4,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:4,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 95 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:5,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:5,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 95 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 95 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:6,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:6,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 18 94 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:7,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:7,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 18 94 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:8,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:8,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 18 94 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 18 94 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:9,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:9,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 94 13 container.0 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.1 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.2 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.3 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.4 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.5 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.6 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.7 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.8 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:10,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:10,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 94 13 container.9 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.10 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.11 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.12 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.13 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.14 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.15 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.16 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.17 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:11,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:11,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1

$item replace block 19 94 13 container.18 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.19 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.20 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748060,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.21 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.22 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.23 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748061,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.24 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.25 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1
$item replace block 19 94 13 container.26 with tipped_arrow[custom_name=$(name),lore=$(lore),potion_contents={potion:"minecraft:thick",custom_color:16748062,custom_effects:[{id:"minecraft:unluck",amplifier:12,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:luck",amplifier:12,duration:200,show_particles:0b,show_icon:0b}]},tooltip_display={hidden_components:["potion_contents"]},custom_data={arrows_slot:1b}] 1


# WEAPON 1

# Niveau 0
$item replace block 13 95 13 container.0 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b}] 1
# Niveau 1
$item replace block 13 95 13 container.1 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":1},custom_data={weapon1_slot:1b}] 1
# Niveau 2
$item replace block 13 95 13 container.2 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":2},custom_data={weapon1_slot:1b}] 1
# Niveau 3
$item replace block 13 95 13 container.3 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":3},custom_data={weapon1_slot:1b}] 1
# Niveau 4
$item replace block 13 95 13 container.4 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":3,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 5
$item replace block 13 95 13 container.5 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":4,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 6
$item replace block 13 95 13 container.6 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":4,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 7
$item replace block 13 95 13 container.7 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":5,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 8
$item replace block 13 95 13 container.8 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":5,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 9
$item replace block 13 95 13 container.9 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":6,"minecraft:punch":1},custom_data={weapon1_slot:1b}] 1
# Niveau 10
$item replace block 13 95 13 container.10 with bow[custom_name=$(name),lore=$(lore),unbreakable={},use_effects={speed_multiplier:1.0,can_sprint:true},tooltip_display={hidden_components:["unbreakable"]},enchantments={"minecraft:power":6,"minecraft:punch":2},custom_data={weapon1_slot:1b}] 1


                    ###   CHEST    ###

# Niveau 1

$item replace block 14 95 13 container.1 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:0.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 14 95 13 container.2 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.2,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 14 95 13 container.3 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.3,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 14 95 13 container.4 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.4,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 14 95 13 container.5 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.5,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 14 95 13 container.6 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.6,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 14 95 13 container.7 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.7,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 14 95 13 container.8 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.8,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 14 95 13 container.9 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.9,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 14 95 13 container.10 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   LEGS    ###


# Niveau 1

$item replace block 15 95 13 container.1 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:0.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.03,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 15 95 13 container.2 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.06,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 15 95 13 container.3 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.09,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 15 95 13 container.4 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.12,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 15 95 13 container.5 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.15,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 15 95 13 container.6 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.18,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 15 95 13 container.7 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.21,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 15 95 13 container.8 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.24,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1
# Niveau 9

$item replace block 15 95 13 container.9 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.27,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 15 95 13 container.10 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.30,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   BOOTS    ###


# Niveau 1

$item replace block 16 95 13 container.1 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 16 95 13 container.2 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 16 95 13 container.3 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 16 95 13 container.4 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 16 95 13 container.5 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 16 95 13 container.6 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:6,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 16 95 13 container.7 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 16 95 13 container.8 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 16 95 13 container.9 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 16 95 13 container.10 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

###   SPELL 1    ###
# Niveau 1
$item replace block 17 95 13 container.0 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_a:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 13 container.3 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 2
$item replace block 17 95 13 container.1 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_a:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 2
$item replace block 17 95 13 container.4 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 3
$item replace block 17 95 13 container.2 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_a:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 3
$item replace block 17 95 13 container.5 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1

###   SPELL 2    ###

# Niveau 1 - Poser
$item replace block 17 95 13 container.15 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 2 - Poser
$item replace block 17 95 13 container.16 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 3 - Poser
$item replace block 17 95 13 container.17 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 1 - Détruire
$item replace block 17 95 13 container.9 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 2 - Détruire
$item replace block 17 95 13 container.10 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 3 - Détruire
$item replace block 17 95 13 container.11 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_a:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 1
$item replace block 17 95 13 container.12 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 2
$item replace block 17 95 13 container.13 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 3
$item replace block 17 95 13 container.14 with orange_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1



###   SPELL 3    ###
# Niveau 1
$item replace block 17 95 13 container.18 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell3_a:1b,spell3_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 1
$item replace block 17 95 13 container.21 with light_blue_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 2
$item replace block 17 95 13 container.19 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell3_a:1b,spell3_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 2
$item replace block 17 95 13 container.22 with light_blue_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 3
$item replace block 17 95 13 container.20 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell3_a:1b,spell3_slot:1b},custom_model_data=$(custommodeldata)] 1
# Cooldown niveau 3
$item replace block 17 95 13 container.23 with light_blue_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data=$(custommodeldata)] 1

$item replace block 17 95 13 container.24 with ice[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/frozen1"},enchantments={"binding_curse":1},lore=$(lore),item_name=$(name),tooltip_display={hidden_components:["enchantments"]}] 1

## permet de setup le stuff mage dans les baril (pour le give plus tard aux joueurs)

                         ###   WEAPON 1    ###

# Niveau 0
$item replace block 13 95 15 container.0 with stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.25,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b}] 1
# Niveau 1
$item replace block 13 95 15 container.1 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 2
$item replace block 13 95 15 container.2 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 3
$item replace block 13 95 15 container.3 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1.5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 4
$item replace block 13 95 15 container.4 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 5
$item replace block 13 95 15 container.5 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2.5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 6
$item replace block 13 95 15 container.6 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 7
$item replace block 13 95 15 container.7 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 8
$item replace block 13 95 15 container.8 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 9
$item replace block 13 95 15 container.9 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4.5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1
# Niveau 10
$item replace block 13 95 15 container.10 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:5,operation:"add_value"}],tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon_1_m:1b,weapon1_slot:1b},custom_model_data=$(custommodeldata)] 1


                    ###   CHEST    ###
                    
# Niveau 1

$item replace block 14 95 15 container.1 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:0.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 14 95 15 container.2 with leather_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.2,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 14 95 15 container.3 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:1.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.3,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 14 95 15 container.4 with golden_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.4,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 14 95 15 container.5 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.5,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 14 95 15 container.6 with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.6,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 14 95 15 container.7 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.7,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 14 95 15 container.8 with iron_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.8,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 14 95 15 container.9 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:4.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.9,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 14 95 15 container.10 with diamond_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:1,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   LEGS    ###


# Niveau 1

$item replace block 15 95 15 container.1 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:0.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.03,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 15 95 15 container.2 with leather_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.06,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 15 95 15 container.3 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.09,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 15 95 15 container.4 with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.12,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 15 95 15 container.5 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.15,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 15 95 15 container.6 with chainmail_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.18,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 15 95 15 container.7 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:3.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.21,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 15 95 15 container.8 with iron_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.24,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 15 95 15 container.9 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:4.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.27,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 15 95 15 container.10 with diamond_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.30,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                    ###   BOOTS    ###


# Niveau 1

$item replace block 16 95 15 container.1 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 2

$item replace block 16 95 15 container.2 with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 3

$item replace block 16 95 15 container.3 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 4

$item replace block 16 95 15 container.4 with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 5

$item replace block 16 95 15 container.5 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 6

$item replace block 16 95 15 container.6 with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:6,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 7

$item replace block 16 95 15 container.7 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:3.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 8

$item replace block 16 95 15 container.8 with iron_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

# Niveau 9

$item replace block 16 95 15 container.9 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:4.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=false] 1

# Niveau 10

$item replace block 16 95 15 container.10 with diamond_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name=$(name),enchantment_glint_override=true] 1

                  ###   SPELL 1    ###

# Niveau 1
$item replace block 17 95 15 container.0 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_m:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 2
$item replace block 17 95 15 container.1 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_m:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 3
$item replace block 17 95 15 container.2 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell1_m:1b,spell1_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 15 container.3 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 2
$item replace block 17 95 15 container.4 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 3
$item replace block 17 95 15 container.5 with red_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data=$(custommodeldata)] 1

$item replace block 17 95 15 container.6 with magma_block[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/burning1"},enchantments={"binding_curse":1},lore=$(lore),item_name=$(name),tooltip_display={hidden_components:["enchantments"]}] 1

### SPELL 2 ###

# Niveau 1
$item replace block 17 95 15 container.9 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_m:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 2
$item replace block 17 95 15 container.10 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_m:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Niveau 3
$item replace block 17 95 15 container.11 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell2_m:1b,spell2_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 15 container.12 with yellow_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 2
$item replace block 17 95 15 container.13 with yellow_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 3
$item replace block 17 95 15 container.14 with yellow_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data=$(custommodeldata)] 1

### SPELL 3 ###

# Niveau 1
$item replace block 17 95 15 container.18 with carrot_on_a_stick[custom_name=$(name),lore=$(lore),enchantment_glint_override=true,custom_data={spell3_m:1b,spell3_slot:1b},custom_model_data=$(custommodeldata)] 1

# Cooldown niveau 1
$item replace block 17 95 15 container.19 with purple_stained_glass_pane[custom_name=$(name),lore=$(lore),custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data=$(custommodeldata)] 1

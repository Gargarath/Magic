## appelée par rien
# permet de determiner le stuff via des storage (avec prix, nom, description...) pour ensuite etre utilisé par stuff ou shop

## permet de setup le stuff guerrier dans les baril (pour le give plus tard aux joueurs)

                         ###   WEAPON 1    ###

$item replace block 13 95 11 container.0 with carrot_on_a_stick[custom_name="$(tr_warrior_weapon1_lvl0_name)",lore=$(lore),custom_model_data=$(custommodeldata),attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.5,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["battle_axe_0"]}] 1
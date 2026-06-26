## appelé par stuf_warrior si @s à son arme au niveau 4
## lui donne son arme au niveau 4

$item replace entity @s hotbar.$(slot_weapon1_w) with carrot_on_a_stick[custom_name="$(tr_warrior_weapon1_4_name)",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["battle_axe"]}] 1
## appelé par stuf_warrior si @s à son arme au niveau 8
## lui donne son arme au niveau 8

$item replace entity @s hotbar.$(slot_weapon1_w) with carrot_on_a_stick[custom_name="$(tr_warrior_weapon1_8_name)",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:8,operation:"add_value",slot:"mainhand"}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={weapon1_slot:1b},custom_model_data={strings:["battle_axe"]}] 1
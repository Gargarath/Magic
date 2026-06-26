## appelee par update_lang
# rafraichit les textes du selecteur de classes sans reset les pages

## TEXTES STATIQUES

$data merge entity @n[type=text_display,tag=warrior_selector_title] {text:{"bold":true,"color":"gold","text":"$(tr_lobby_warrior_title)",shadow_color:-13487566}}
$data merge entity @n[type=text_display,tag=warrior_selector_description] {text:[{"bold":true,"color":"white","text":"$(tr_lobby_warrior_description)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_passive_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_passive)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_weapon1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_weapon)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_spell1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell1)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_spell2_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell2)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_spell3_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell3)"}]}
$data merge entity @n[type=text_display,tag=warrior_selector_selector] {text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_lobby_choose_class)"}]}

$data merge entity @n[type=text_display,tag=archer_selector_title] {text:{"bold":true,"color":"dark_green","text":"$(tr_lobby_archer_title)",shadow_color:-13487566}}
$data merge entity @n[type=text_display,tag=archer_selector_description] {text:[{"bold":true,"color":"white","text":"$(tr_lobby_archer_description)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_passive_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_passive)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_weapon1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_weapon)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_spell1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell1)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_spell2_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell2)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_spell3_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell3)"}]}
$data merge entity @n[type=text_display,tag=archer_selector_selector] {text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_lobby_choose_class)"}]}

$data merge entity @n[type=text_display,tag=mage_selector_title] {text:{"bold":true,"color":"dark_purple","text":"$(tr_lobby_mage_title)",shadow_color:-13487566}}
$data merge entity @n[type=text_display,tag=mage_selector_description] {text:[{"bold":true,"color":"white","text":"$(tr_lobby_mage_description)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_passive_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_passive)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_weapon1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_weapon)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_spell1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell1)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_spell2_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell2)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_spell3_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell3)"}]}
$data merge entity @n[type=text_display,tag=mage_selector_selector] {text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_lobby_choose_class)"}]}

$data merge entity @n[type=text_display,tag=rogue_selector_title] {text:{"bold":true,"color":"gray","text":"$(tr_lobby_rogue_title)",shadow_color:-13487566}}
$data merge entity @n[type=text_display,tag=rogue_selector_description] {text:[{"bold":true,"color":"white","text":"$(tr_lobby_rogue_description)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_passive_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_passive)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_weapon1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_weapon)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_spell1_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell1)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_spell2_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell2)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_spell3_text] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell3)"}]}
$data merge entity @n[type=text_display,tag=rogue_selector_selector] {text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_lobby_choose_class)"}]}

## PAGES COURANTES

execute as @n[type=marker,tag=select_warrior_spot] at @s if score $current_page class_selector_warrior matches 1 run function lobby:class_selector/warrior/pages/passive/main with storage lobby:language translate
execute as @n[type=marker,tag=select_warrior_spot] at @s if score $current_page class_selector_warrior matches 2 run function lobby:class_selector/warrior/pages/weapon1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_warrior_spot] at @s if score $current_page class_selector_warrior matches 3 run function lobby:class_selector/warrior/pages/spell1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_warrior_spot] at @s if score $current_page class_selector_warrior matches 4 run function lobby:class_selector/warrior/pages/spell2/main with storage lobby:language translate
execute as @n[type=marker,tag=select_warrior_spot] at @s if score $current_page class_selector_warrior matches 5 run function lobby:class_selector/warrior/pages/spell3/main with storage lobby:language translate

execute as @n[type=marker,tag=select_archer_spot] at @s if score $current_page class_selector_archer matches 1 run function lobby:class_selector/archer/pages/passive/main with storage lobby:language translate
execute as @n[type=marker,tag=select_archer_spot] at @s if score $current_page class_selector_archer matches 2 run function lobby:class_selector/archer/pages/weapon1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_archer_spot] at @s if score $current_page class_selector_archer matches 3 run function lobby:class_selector/archer/pages/spell1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_archer_spot] at @s if score $current_page class_selector_archer matches 4 run function lobby:class_selector/archer/pages/spell2/main with storage lobby:language translate
execute as @n[type=marker,tag=select_archer_spot] at @s if score $current_page class_selector_archer matches 5 run function lobby:class_selector/archer/pages/spell3/main with storage lobby:language translate

execute as @n[type=marker,tag=select_mage_spot] at @s if score $current_page class_selector_mage matches 1 run function lobby:class_selector/mage/pages/passive/main with storage lobby:language translate
execute as @n[type=marker,tag=select_mage_spot] at @s if score $current_page class_selector_mage matches 2 run function lobby:class_selector/mage/pages/weapon1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_mage_spot] at @s if score $current_page class_selector_mage matches 3 run function lobby:class_selector/mage/pages/spell1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_mage_spot] at @s if score $current_page class_selector_mage matches 4 run function lobby:class_selector/mage/pages/spell2/main with storage lobby:language translate
execute as @n[type=marker,tag=select_mage_spot] at @s if score $current_page class_selector_mage matches 5 run function lobby:class_selector/mage/pages/spell3/main with storage lobby:language translate

execute as @n[type=marker,tag=select_rogue_spot] at @s if score $current_page class_selector_rogue matches 1 run function lobby:class_selector/rogue/pages/passive/main with storage lobby:language translate
execute as @n[type=marker,tag=select_rogue_spot] at @s if score $current_page class_selector_rogue matches 2 run function lobby:class_selector/rogue/pages/weapon1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_rogue_spot] at @s if score $current_page class_selector_rogue matches 3 run function lobby:class_selector/rogue/pages/spell1/main with storage lobby:language translate
execute as @n[type=marker,tag=select_rogue_spot] at @s if score $current_page class_selector_rogue matches 4 run function lobby:class_selector/rogue/pages/spell2/main with storage lobby:language translate
execute as @n[type=marker,tag=select_rogue_spot] at @s if score $current_page class_selector_rogue matches 5 run function lobby:class_selector/rogue/pages/spell3/main with storage lobby:language translate

# appelée par randomize_class au nom des joueurs
# indique la classe obtenue

$title @s[tag=warrior] title [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_warrior)","color":"gold"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$title @s[tag=archer] title [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_archer)","color":"dark_green"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$title @s[tag=mage] title [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_mage)","color":"dark_purple"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$title @s[tag=rogue] title [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_rogue)","color":"gray"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]

$title @s subtitle {"text":"$(tr_randomize_class_subtitle)","bold":false}
# indique à tous que les équipes ont été formée aléatoirement et leur indique quelle est leur calsse

$tellraw @s[tag=warrior] [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_warrior)","color":"gold"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$tellraw @s[tag=archer] [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_archer)","color":"dark_green"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$tellraw @s[tag=mage] [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_mage)","color":"dark_purple"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
$tellraw @s[tag=rogue] [{"text":"$(tr_randomize_class_text_1)","color":"white"},{"text":" $(tr_randomize_class_text_rogue)","color":"gray"},{"text":"$(tr_randomize_class_text_2)","color":"white"}]
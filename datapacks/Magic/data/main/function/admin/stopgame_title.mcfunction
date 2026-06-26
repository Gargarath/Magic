# appelée par le stopgame -> permet d'afficher le message de game arrêtée

title @s reset
function main:ressource_pack_detector/display_something_else/show_another_message
$title @s title {"text":"$(tr_admin_stopgame_title)","color":"dark_red","bold":true}
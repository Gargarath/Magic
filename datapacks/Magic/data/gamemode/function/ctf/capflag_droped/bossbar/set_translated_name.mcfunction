## appelée par les fonctions de progression de capflag et main:personnal_data/translation/change_language/refresh_language
# permet d'appliquer à la bossbar de prise du drapeau adverse le nom traduit et la couleur correspondante

$execute if entity @s[team=blue] run bossbar set capflag:player$(player) name {"text":"$(tr_ctf_flag_capture_bossbar)","bold":true,"color":"red"}
$execute if entity @s[team=red] run bossbar set capflag:player$(player) name {"text":"$(tr_ctf_flag_capture_bossbar)","bold":true,"color":"blue"}

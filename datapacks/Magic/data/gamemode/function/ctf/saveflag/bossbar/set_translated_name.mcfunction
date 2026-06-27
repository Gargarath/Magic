## appelée par les fonctions de progression de saveflag et main:personnal_data/translation/change_language/refresh_language
# permet d'appliquer à la bossbar de récupération du drapeau allié le nom traduit et la couleur de l'équipe

$execute if entity @s[team=red] run bossbar set saveflag:player$(player) name {"text":"$(tr_ctf_flag_recovery_bossbar)","bold":true,"color":"red"}
$execute if entity @s[team=blue] run bossbar set saveflag:player$(player) name {"text":"$(tr_ctf_flag_recovery_bossbar)","bold":true,"color":"blue"}

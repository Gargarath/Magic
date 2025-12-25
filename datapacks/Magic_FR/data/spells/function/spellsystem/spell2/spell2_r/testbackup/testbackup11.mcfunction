# appelée par spells:spellsystem/spelL2/spell2_r/summonbackup_r permet de tester si quelqu'un a deja le scores backup_number_r a 11 et si non met le score backup_number_r de @s et de son armostand qu'il vient de summon à 11 et lui donne le tag have_backup pour signifier qu'il a déjà un numéro de backup
scoreboard players set @s backup_number_r 11
execute at @s run scoreboard players set @e[tag=backup_r,distance=..1,tag=!have_backup_number] backup_number_r 11
tag @s add have_backup_r
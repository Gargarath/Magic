# Empeche de fermer le dialogue avant d'avoir choisi une langue.

execute if entity @s[tag=choosing_language] run function main:initialised/welcome_dialog/open
